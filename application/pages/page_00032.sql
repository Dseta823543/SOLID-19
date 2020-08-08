prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Categorias'
,p_alias=>'CATEGORIAS1'
,p_step_title=>'Categorias'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KQUINONESA14@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20200625051059'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32816386299399952395)
,p_plug_name=>'Informe 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26668720835683914546)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'COR_CATEGORIES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Informe 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(32816386734564952395)
,p_name=>'Informe 1'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP:P41_CAT_ID:\#CAT_ID#\'
,p_detail_link_text=>'<span aria-label="Editar"><span class="fa fa-edit" aria-hidden="true" title="Editar"></span></span>'
,p_owner=>'KQUINONESA14@GMAIL.COM'
,p_internal_uid=>26134659935975839763
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32816386891582952396)
,p_db_column_name=>'CAT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cat Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32816387672554952397)
,p_db_column_name=>'CAT_NOM_ESP'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32816387222298952397)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Nombre en Ingles'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(32815818440071606505)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'261340917'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CAT_ID:NOMBRE:CAT_NOM_ESP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32816389076336952398)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(32816386299399952395)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26668783415762914708)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32816388090058952397)
,p_name=>unistr('Editar Informe: Cuadro de Di\00E1logo Cerrado')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(32816386299399952395)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32816388526552952398)
,p_event_id=>wwv_flow_api.id(32816388090058952397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32816386299399952395)
);
wwv_flow_api.component_end;
end;
/
