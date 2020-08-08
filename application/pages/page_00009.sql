prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>unistr('Recuperaci\00F3n de Contrase\00F1a')
,p_step_title=>unistr('Se te olvid\00F3 tu contrase\00F1a')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'KQUINONESA@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200718143434'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26669173878115317117)
,p_plug_name=>unistr('Olvid\00E9 mi contrase\00F1a ... puede suceder ...')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('Ingrese su direcci\00F3n de correo electr\00F3nico aqu\00ED y le enviaremos su contrase\00F1a<br><br>')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_footer=>unistr('<br><br>... El correo tarda unos minutos en llegar ... \00A1Tambi\00E9n heche un vistazo a su carpeta de SPAM! A veces los correos terminan ah\00ED.')
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26669174142782317119)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26669173878115317117)
,p_button_name=>'Enviar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26668783415762914708)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26669173971168317118)
,p_name=>'P9_EMAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26669173878115317117)
,p_prompt=>'Correo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(26668782435936914693)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(26669174546439317123)
,p_validation_name=>'check_if_Mail_exists'
,p_validation_sequence=>10
,p_validation=>'select 1 from COR_USER where upper(USER_EMAIL) = upper(:P9_EMAIL)'
,p_validation_type=>'EXISTS'
,p_error_message=>unistr('No conocemos esta direcci\00F3n de correo electr\00F3nico ... \00BFEst\00E1 mal escrita?')
,p_when_button_pressed=>wwv_flow_api.id(26669174142782317119)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26669174440809317122)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send_pass'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (select USER_EMAIL,USER_CONTRA ',
'             from COR_USER',
'            where upper(USER_EMAIL) = upper(:P9_EMAIL)) loop',
'  if c1.USER_EMAIL is not null then',
'    APEX_MAIL.SEND',
'(',
'   P_TO       => c1.USER_EMAIL,',
'',
'   P_FROM     => ''kquinonesa@unsa.edu.pe'',',
'',
unistr('   P_BODY     => ''Aqu\00ED est\00E1 su contrase\00F1a para la aplicaci\00F3n SOLID-19:''|| CHR( 10 ) ||c1.USER_CONTRA|| chr(10) ||'),
unistr('''Aqu\00ED est\00E1 el enlace a la aplicaci\00F3n de Ayuda Corona: "LINK" ''|| CHR(10) ||'' Este correo electr\00F3nico es generado por el sistema inform\00E1tico; no es posible responder a este correo electr\00F3nico.''|| CHR(10) ||'' Kevin Qui\00F1ones- SOLID-19'','),
'',
unistr('   P_SUBJ     => ''Informaci\00F3n solicitada de SOLID-19'''),
');',
'end if;',
'end loop;'))
,p_process_error_message=>'nix gemailt - falsch geschrieben ?'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26669174142782317119)
,p_process_success_message=>unistr('La contrase\00F1a se envi\00F3 por correo electr\00F3nico. Tarda unos minutos.  Busque tambi\00E9n en la carpeta de correo no deseado.')
);
wwv_flow_api.component_end;
end;
/
