prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Mail Formular'
,p_alias=>'MAIL-FORMULAR'
,p_step_title=>'Formulario de Correo'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'DRONDONE@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200710170951'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26470181566127036637)
,p_plug_name=>'Formulario de correo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'CORONA_MAIL'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26685337816837315552)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_button_name=>'Rundmail_an_alle'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26668783415762914708)
,p_button_image_alt=>'Reenviar a todos'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26470185988167036668)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26668783415762914708)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26470184841230036661)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26668783415762914708)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26470186409032036668)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26668783415762914708)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26470185562533036667)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26668783415762914708)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26470186707577036668)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26470181980375036642)
,p_name=>'P31_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_item_source_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26668782249658914693)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26470182359408036650)
,p_name=>'P31_SUBJECT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_item_source_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_prompt=>'Tema'
,p_source=>'SUBJECT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_field_template=>wwv_flow_api.id(26668782249658914693)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26470182786420036656)
,p_name=>'P31_TEXT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_item_source_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_prompt=>'Texto'
,p_source=>'TEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>15
,p_field_template=>wwv_flow_api.id(26668782249658914693)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26470183175219036657)
,p_name=>'P31_ERSTELLT_AM'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_item_source_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_prompt=>'Creado el'
,p_source=>'ERSTELLT_AM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(26668782249658914693)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26685337921052315553)
,p_name=>'P31_PLZ'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26470181566127036637)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('C\00F3digo postal para delimitaci\00F3n')
,p_source=>'P31_PLZ'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_field_template=>wwv_flow_api.id(26668782152560914693)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Arequipa'
,p_quick_pick_value_01=>'21335'
,p_quick_pick_link_attr=>'quicks'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26470187557267036673)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(26470181566127036637)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Mail Formular'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26685337700455315551)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Rundmail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FOR m IN (SELECT USER_EMAIL,USER_APELLIDO ,USER_NOMBRE,USER_CPOSTAL',
'            FROM COR_USER',
'         where USER_CPOSTAL = :P31_PLZ',
'--            and id = 1321',
'         )',
'LOOP',
'  apex_mail.send( p_to => m.user_email,',
'                  p_from => ''no_reply@corona-hilfe.de'',',
'                  p_bcc => ''drondone@unsa.edu.pe'',',
'                  p_body => ''Hola ''||m.user_apellido||'' ''||m.user_nombre||'',''||chr(10)||chr(10)||:P31_TEXT||chr(10)||',
'                 ''CORONA-HILFE.BFW-DESIGN.DE''                 ',
'                 ,',
'                  p_subj => :P31_SUBJECT',
'                );',
'                  ',
' ',
'END LOOP;',
''))
,p_process_error_message=>'Sin correo'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26685337816837315552)
,p_process_success_message=>'Enviado por correo'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26470187151912036671)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(26470181566127036637)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Mail Formular'
);
wwv_flow_api.component_end;
end;
/
