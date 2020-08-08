prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Publicaciones'
,p_step_title=>'Publicaciones'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('Al seleccionar una tarjeta de ayuda, puede dejar sus datos de contacto en el siguiente paso, y luego se le llamar\00E1 o enviar\00E1 un correo electr\00F3nico para organizar m\00E1s detalles.')
,p_last_updated_by=>'KQUINONESA@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200719074206'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26678932661921924924)
,p_name=>unistr('Corona Ayuda - Ofertas de ayuda de la regi\00F3n')
,p_template=>wwv_flow_api.id(26668722685742914547)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--displaySubtitle:t-Cards--compact:t-Cards--displayInitials:t-Cards--float:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select O.ID,',
'O.POST_TIPO as CARD_TITLE,',
'U.USER_DEPT||'', ''||U.USER_PROV||'', ''||U.USER_DISTR as card_subtitle, ',
'O.POST_TITULO||''-''||O.POST_DESCR as CARD_TEXT,',
'U.USER_SEX||'' ''|| substr(U.USER_NOMBRE,1,1)||'' ''||U.USER_APELLIDO as CARD_SUBTEXT,',
'apex_string.get_initials(O.POST_TIPO) as card_initials,',
'APEX_PAGE.GET_URL (',
'            p_page   => 10,',
'            p_items  => ''P10_MSG_POST'',',
'            p_values => O.ID)as CARD_LINK',
' FROM ',
'    COR_POST O INNER JOIN COR_USER U',
' ON O.POST_USER = U.ID',
' where upper(U.USER_PROV)||upper(U.USER_DISTR)||upper(U.USER_DEPT) like ''%''||upper(:P5_SEARCH1)||''%''',
' and upper(O.POST_CATEGORIA) like ''%''||upper(:P5_SEARCH2)||''%'' and O.POST_FCAD >= SYSDATE',
'   '))
,p_header=>unistr('<font color="blue"><b>Haga clic en la pesta\00F1as que se muestran e ingrese sus propios datos de contacto. Luego ser\00E1 contactado (por tel\00E9fono o correo electr\00F3nico).</b></font><br><br>')
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(26668738581088914585)
,p_query_num_rows=>27
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26678934965912924947)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26678935136854924948)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26678935224669924949)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26678935263487924950)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26678935441651924951)
,p_query_column_id=>5
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26678935494630924952)
,p_query_column_id=>6
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>6
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26678935587391924953)
,p_query_column_id=>7
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>7
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26679488311747438805)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26678932661921924924)
,p_button_name=>'Buscar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26668783415762914708)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26679488619605438808)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(26678932661921924924)
,p_button_name=>'Ver_todo'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26668783415762914708)
,p_button_image_alt=>'Todos los anuncios'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP,5::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26678932824187924925)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26678932661921924924)
,p_button_name=>'Ofrecer_ayuda'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(26668783450886914708)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ofrecer ayuda'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:47:P47_POST_TIPO:OFERTA'
,p_icon_css_classes=>'fa-hand-o-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28879850391734780121)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26678932661921924924)
,p_button_name=>'Solicitar_ayuda'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(26668783450886914708)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Solicitar ayuda'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.::P47_POST_TIPO:SOLICITUD'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26679488405894438806)
,p_name=>'P5_SEARCH1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26678932661921924924)
,p_prompt=>unistr('<b>1. B\00FAsqueda por Lugar:</b>')
,p_placeholder=>'Ej: Cayma'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_field_template=>wwv_flow_api.id(26668782080795914693)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26679488817181438810)
,p_name=>'P5_SEARCH2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26678932661921924924)
,p_prompt=>unistr('<b>2. B\00FAsqueda por Categor\00EDa:</b>')
,p_placeholder=>'Ej: Transporte'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(26668782080795914693)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
