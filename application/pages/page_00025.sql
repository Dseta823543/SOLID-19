prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>unistr('Campa\00F1a #YoMeQuedoEnCasa')
,p_step_title=>unistr('Campa\00F1a #YoMeQuedoEnCasa')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'KQUINONESA14@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20200625055632'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26680623503792531317)
,p_plug_name=>'#Stayathome - Kampagne'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_URL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'https://www.stayathome.world/'
,p_attribute_02=>'IFRAME'
,p_attribute_03=>'width="1400" height="800"'
);
wwv_flow_api.component_end;
end;
/
