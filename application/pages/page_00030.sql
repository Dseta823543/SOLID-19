prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Mails'
,p_alias=>'MAILS'
,p_step_title=>'Correos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'DAR0015VALE@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20200609203909'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26470188220517036674)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26668720835683914546)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'CORONA_MAIL'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26470188549125036675)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP:P31_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'FISCHER'
,p_internal_uid=>12197202270336871
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26470188678171036678)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26470189038955036689)
,p_db_column_name=>'SUBJECT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Subject'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26470189399266036690)
,p_db_column_name=>'TEXT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Text'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26470189811660036690)
,p_db_column_name=>'ERSTELLT_AM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Erstellt Am'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26470192294546042937)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'122010'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:SUBJECT:TEXT:ERSTELLT_AM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26470190979512036696)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26470188220517036674)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26668783415762914708)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:31'
);
wwv_flow_api.component_end;
end;
/
