prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>unistr('Preguntas m\00E1s frecuentes')
,p_step_title=>'Responder preguntas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'DRONDONE@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200718153231'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26669177189573317150)
,p_plug_name=>unistr('\00BFC\00F3mo funciona SOLID19?')
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668707817553914537)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Primeros pasos:</b><br><br>',
unistr('1- Registro en la p\00E1gina SOLID19.<br><br>'),
unistr('2- Inicie sesi\00F3n con su direcci\00F3n de correo electr\00F3nico y contrase\00F1a.<br><br>'),
unistr('* Si proporciona su ubicaci\00F3n (Latitud y Longitud) en el formulario de Registro podra visualizar sus publicaciones y solicitudes de ayuda en el mapa<br><br>'),
'',
'<b>Voluntario:</b><br><br>',
'3-El voluntario  deja su oferta especificando el tipo de ayuda que brindara.<br><br>',
'4- La oferta aparece en la lista de publicaciones.<br><br><br>',
'',
'<b>Buscador de ayuda:</b><br><br>',
'',
unistr('5-Busca una publicaci\00F3n  correspondiente por categor\00EDa y ubicaci\00F3n.<br><br>'),
unistr('6- Hace clic en la tarjeta de la publicaci\00F3n elegida <br><br>'),
'7- Envia un mensaje para poder contactarse con el voluntario<br><br>',
unistr('8- La aplicaci\00F3n env\00EDa inmediatamente el mensaje al voluntario.<br><br>'),
'',
unistr('<b>El buscador tambi\00E9n puede:</b><br><br>'),
'',
unistr('9-Dejar una solicitud de ayuda en la p\00E1gina para que puedan contactarse con \00E9l.<br><br>'),
'10-La solicitud  aparece en la lista de publicaciones. <br><br>',
'',
unistr('<b>Comunicaci\00F3n mediante mensajes:</b><br><br>'),
'',
unistr('11- El usaurio puede ver todos los mensajes que le envien en la secci\00F3n de Mensajes Recibidos de la bandeja de Entrada.<br><br>'),
'12- El usuario puede ver los mensajes enviados en la seccion de Mensajes enviados de la bandeja de Entrada',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26669177292464317151)
,p_plug_name=>unistr('Olvid\00E9 mi contrase\00F1a, \00BFQu\00E9 puedo hacer?')
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668707817553914537)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('1-En la "P\00E1gina de inicio de sesi\00F3n" hay un enlace "Olvid\00E9 mi contrase\00F1a"<br><br>'),
unistr('2-Si hace clic en \00E9l, aparece una p\00E1gina donde puede ingresar su direcci\00F3n de correo electr\00F3nico ...<br><br>'),
unistr('3-La aplicaci\00F3n luego le env\00EDa un correo electr\00F3nico con la contrase\00F1a.')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26669177500841317153)
,p_plug_name=>unistr('\00BFCu\00E1nto durara mi oferta?')
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668707817553914537)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Cuando la oferta pase de fecha limite ya no aparecera en la lista de Ofertas <br><br>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26672580830611807309)
,p_plug_name=>unistr('\00BFQu\00E9 deben hacer las personas mayores sin conocimientos de Internet / inform\00E1tica?')
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668707817553914537)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Una persona mayor para poder manejar el software adecuadamente debe tener necesariamente la compa\00F1ia de alguien y de esta manera lograr un adecuado uso del sistema'),
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26672580879533807310)
,p_plug_name=>unistr('Protecci\00F3n de datos: \00BFQu\00E9 pasa con mis datos?')
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668707817553914537)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Nos tomamos muy en serio la protecci\00F3n de datos.<br><br>'),
unistr('Los datos que hemos guardado solo se utilizar\00E1n para este proyecto y no se transmitir\00E1n a otros.Los datos solo se usaran para este pr\00F3posito, cuando la crisis termine se eliminaran todos los datos'),
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26672580957479807311)
,p_plug_name=>unistr('\00BFPuedo revocar o eliminar el uso de mis datos?')
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668707817553914537)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('S\00ED, puede actualizar y eliminar sus datos en cualquier momento a trav\00E9s de su perfil. Solo siga los siguientes pasos:<br><br>'),
unistr('1- En el men\00FA de navegacion ingrese a Mi Perfil <br><br>'),
'2- Seleccione Datos Personales<br><br>',
unistr('3-  Seleccione el bot\00F3n Editar ubicado en la parte superior derecha de la ventana<br><br>'),
'4- Modifique sus datos <br><br>',
unistr('5- Seleccione el bot\00F3n Aplicar Cambios y sus datos ser\00E1n actualizados autom\00E1ticamente<br><br>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26672581056357807312)
,p_plug_name=>'<font color=#170A1C>Preguntas mas Frecuentes</font>'
,p_icon_css_classes=>'fa-question-square-o'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26668695450229914510)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
