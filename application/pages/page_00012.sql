prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Proceso'
,p_step_title=>'Flujo de Procesos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'KQUINONESA@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200808160104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26673299003636126315)
,p_plug_name=>'El flujo del proceso de SOLID19'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>9
,p_plug_display_point=>'BODY'
,p_plug_source=>'<img src ="#APP_IMAGES#117181717_222841829020880_4548002104700932326_n.png" width="800" />'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
