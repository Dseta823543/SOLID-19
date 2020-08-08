prompt --application/pages/page_10011
begin
--   Manifest
--     PAGE: 10011
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
 p_id=>10011
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Ayuda'
,p_alias=>'PAGE_HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Ayuda'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(26668808044586914997)
,p_dialog_chained=>'N'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'DRONDONE@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200717053608'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26668883642007915637)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26668695325674914510)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ',
'(',
'    select page_title, help_text ',
'      from apex_application_pages',
'     where page_id = :P10011_PAGE_ID ',
'       and application_id = :APP_ID',
')',
'loop',
'    if c1.help_text is  null then',
'        sys.htp.p(''No hay ayuda disponible para esta pagina.'');',
'    else',
'        if substr(c1.help_text, 1, 3) != ''<p>'' then',
'            sys.htp.p(''<p>'');',
'        end if;',
'',
'        sys.htp.p(apex_application.do_substitutions(c1.help_text));',
'',
'        if substr(trim(c1.help_text), -4) != ''</p>'' then',
'            sys.htp.p(''</p>'');',
'        end if;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26668883989962915637)
,p_name=>'P10011_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26668883642007915637)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
