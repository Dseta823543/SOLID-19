prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Otras Iniciativas'
,p_step_title=>'Otras iniciativas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'KQUINONESA@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200718144344'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26672572923417764905)
,p_plug_name=>unistr('Otras iniciativas \00A0')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID"',
',"SA_NOMBRE"',
',"SA-DESCR"',
',"SA_LINK"',
',sys.dbms_lob.getlength("SA_LOGO")"SA_LOGO"',
'--,''<img src="''||apex_util.get_blob_file_src(''P14_LOGO'',logo)||''" width="250" />'' LOGO2',
'--,''<img src="''||apex_util.get_blob_file_src(''P4_DOCUMENT'',id)||''" />'' ',
'--,''<img src="''||apex_util.get_blob_file_src(''P14_LOGO'',logo)||''" />''  logo',
'',
',"SA_SHOW"',
', SA_TLF',
', SA_WSP ',
'from "COR_SERV_AUX"',
'where SA_SHOW = ''Si''',
'--and SA_WSP != ''infos'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26672573294244764905)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_detail_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP:P14_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_detail_link_auth_scheme=>wwv_flow_api.id(26672551180248333628)
,p_owner=>'FISCHER'
,p_internal_uid=>214581947390065101
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26672573394359764916)
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
 p_id=>wwv_flow_api.id(31985158217325694971)
,p_db_column_name=>'SA_NOMBRE'
,p_display_order=>2
,p_column_identifier=>'I'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31985158377845694972)
,p_db_column_name=>'SA-DESCR'
,p_display_order=>3
,p_column_identifier=>'J'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31985158474722694973)
,p_db_column_name=>'SA_LINK'
,p_display_order=>4
,p_column_identifier=>'K'
,p_column_label=>'Link'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31985158558349694974)
,p_db_column_name=>'SA_LOGO'
,p_display_order=>5
,p_column_identifier=>'L'
,p_column_label=>'Logo'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'IMAGE:COR_SERV_AUX:SA_LOGO:ID::::::::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31985158622842694975)
,p_db_column_name=>'SA_SHOW'
,p_display_order=>6
,p_column_identifier=>'M'
,p_column_label=>'Show'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31985158747745694976)
,p_db_column_name=>'SA_TLF'
,p_display_order=>16
,p_column_identifier=>'N'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31985158874412694977)
,p_db_column_name=>'SA_WSP'
,p_display_order=>26
,p_column_identifier=>'O'
,p_column_label=>'Whatsapp'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26672577644609773530)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2145863'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>':SA_NOMBRE:SA-DESCR:SA_LINK:SA_LOGO:SA_SHOW:SA_TLF:SA_WSP'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26672581477313807316)
,p_plug_name=>unistr('<font color=#3D0814>M\00E1s iniciativas</font>')
,p_icon_css_classes=>'fa-plus-square'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26668695450229914510)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26672576789523765011)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26672572923417764905)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26668783415762914708)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14'
,p_security_scheme=>wwv_flow_api.id(26672551180248333628)
);
wwv_flow_api.component_end;
end;
/
