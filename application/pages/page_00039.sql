prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Mensajes Enviados'
,p_alias=>'MENSAJES-ENVIADOS'
,p_step_title=>'Mensajes Enviados'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KQUINONESA@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200719075630'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57210232940076952372)
,p_plug_name=>'<font color=#3D0814>Mensajes Enviados</font>'
,p_icon_css_classes=>'fa-circle-arrow-in-nw'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26668695450229914510)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(115535345674390641841)
,p_name=>unistr('Corona Ayuda - Ofertas de ayuda de la regi\00F3n')
,p_template=>wwv_flow_api.id(26668722685742914547)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--displaySubtitle:t-Cards--basic:t-Cards--displayInitials:t-Cards--float:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select O.ID,',
'P.POST_TITULO as CARD_TITLE,',
'U.USER_DEPT||'',''||U.USER_PROV||'', ''||U.USER_DISTR as card_subtitle, ',
'O.MSG_MENSAJE as CARD_TEXT,',
'U.USER_TLF as CARD_SUBTEXT,',
'apex_string.get_initials(U.USER_APELLIDO) as CARD_INITIALS',
'FROM COR_MSG O INNER JOIN COR_USER U',
'ON O.MSG_USER = U.ID INNER JOIN COR_POST P ON P.ID= O.MSG_POST',
'where upper(U.USER_EMAIL) = upper(:APP_USER)',
'',
'/*',
'SELECT U.USER_NOMBRE as CARD_TITLE,',
'U.USER_DEPT||'',''||U.USER_PROV||'', ''||U.USER_DISTR as card_subtitle, ',
'M.MSG_MENSAJE as CARD_TEXT,',
'U.USER_TLF as CARD_SUBTEXT,',
'apex_string.get_initials(U.USER_APELLIDO) as CARD_INITIALS',
'FROM COR_USER U INNER JOIN COR_POST P ON P.POST_USER = U.ID INNER JOIN COR_MSG M ON M.MSG_POST = P.ID WHERE M.ID = (SELECT M.ID FROM COR_MSG M INNER JOIN COR_USER U ON M.MSG_USER = U.ID where upper(U.USER_EMAIL) = upper(:APP_USER))*/'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(26668738581088914585)
,p_query_num_rows=>27
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>unistr(' <font size="+2">Usted no ha enviado mensajes a\00FAn.')
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30337792250033787734)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>6
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30361934255663513876)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30361934662652513876)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Subtitle'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30361935065976513877)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30361935433326513877)
,p_query_column_id=>5
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30361935870993513878)
,p_query_column_id=>6
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>5
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.component_end;
end;
/
