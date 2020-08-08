prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Noticias'
,p_step_title=>'Noticias'
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'iframe:focus {',
'  outline: none;',
'}',
'',
'iframe[seamless] {',
'  display: block;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'KQUINONESA@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200719155856'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26672584948593807351)
,p_plug_name=>'News'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.EPORTELA.WEBVIEW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'STATIC'
,p_attribute_06=>'height: 30vh;'
,p_attribute_07=>'my-webview'
,p_attribute_08=>'http://landeszeitung.de'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26673298264658126308)
,p_plug_name=>'ZDF News'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<iframe id="news-4" style="width:100%;border:none;height:70vh" src=" https://www.zdf.de/nachrichten/politik/blog-coronavirus-102.html"></iframe>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26673298546084126310)
,p_plug_name=>'Noticias'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>8
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<iframe id="news-4" style="width:80%;border:none;height:80vh" src="https://peru.as.com/peru/2020/06/23/tikitakas/1592907265_803232.html"></iframe> '
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26673298830717126313)
,p_plug_name=>'<font color=#3D0814>Noticias</font>'
,p_icon_css_classes=>'fa-newspaper-o'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26668695450229914510)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26673298092395126306)
,p_name=>'P18_LZ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26672584948593807351)
,p_use_cache_before_default=>'NO'
,p_item_default=>'http://landeszeitung.de'
,p_source=>'P18_LZ'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
