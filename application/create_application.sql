prompt --application/create_application
begin
--   Manifest
--     FLOW: 95395
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'SOLID192')
,p_name=>nvl(wwv_flow_application_install.get_application_name,unistr('SOLID-19 Voluntariado en \00E9poca de Coronavirus'))
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'95395')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'F6402DBCB3EA8EF308D1D71F24CECA70789149E233E60CFAA02972A73A0F9AF9'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'es-pe'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>unistr('Aplicaci\00F3n creada por Kevin Qui\00F1ones y Darlyng Rond\00F3n.')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(26668888810672927679)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'SOLID-19'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>unistr('Versi\00F3n en Pruebas 8.0')
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>unistr('Lo sentimos. Esta aplicaci\00F3n no est\00E1 disponible en este momento. Vuelva a intentarlo dentro de cierto tiempo. ')
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'&P0_PORTAL_NAME.'
,p_last_updated_by=>'KQUINONESA@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200808160128'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>29
,p_ui_type_name => null
);
wwv_flow_api.component_end;
end;
/
