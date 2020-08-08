prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Mensajes Recibidos'
,p_alias=>'MENSAJES-RECIBIDOS'
,p_step_title=>'Mensajes Recibidos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KQUINONESA@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200719075715'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(85173415099697127975)
,p_name=>unistr('Corona Ayuda - Ofertas de ayuda de la regi\00F3n')
,p_template=>wwv_flow_api.id(26668722685742914547)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--displaySubtitle:t-Cards--basic:t-Cards--displayInitials:t-Cards--float:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select O.ID,',
'U.USER_SEX||'' ''|| U.USER_NOMBRE||'' ''||U.USER_APELLIDO as CARD_TITLE,',
'U.USER_DEPT||'',''||U.USER_PROV||'', ''||U.USER_DISTR as card_subtitle, ',
'O.MSG_MENSAJE as CARD_TEXT,',
'U.USER_TLF as CARD_SUBTEXT,',
'apex_string.get_initials(U.USER_APELLIDO) as CARD_INITIALS',
'FROM COR_MSG O INNER JOIN COR_USER U',
'ON O.MSG_USER = U.ID',
'WHERE O.MSG_POST IN (SELECT P.ID FROM COR_POST P INNER JOIN COR_USER V ON P.POST_USER = V.ID where upper(user_email) = upper(:APP_USER) )'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(26668738581088914585)
,p_query_num_rows=>27
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>unistr(' <font size="+2">Usted no ha recibido mensajes a\00FAn.')
,p_query_num_rows_type=>'ROW_RANGES'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29409252710929543086)
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
 p_id=>wwv_flow_api.id(29409253180394543089)
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
 p_id=>wwv_flow_api.id(29409253455150543089)
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
 p_id=>wwv_flow_api.id(29409253897971543090)
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
 p_id=>wwv_flow_api.id(29409254208628543090)
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
 p_id=>wwv_flow_api.id(29409254648694543091)
,p_query_column_id=>6
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>6
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87827088528324267658)
,p_plug_name=>'<font color=#3D0814>Mensajes Recibidos</font>'
,p_icon_css_classes=>'fa-circle-arrow-in-se'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26668695450229914510)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
