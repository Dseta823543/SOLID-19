prompt --application/shared_components/security/authorizations/corona_admin
begin
--   Manifest
--     SECURITY SCHEME: CORONA_ADMIN
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(26672551180248333628)
,p_name=>'CORONA_ADMIN'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from COR_USER',
'where upper(USER_EMAIL) = upper(:APP_USER)',
'and ADMIN = ''Si'''))
,p_error_message=>'No permitido'
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.component_end;
end;
/
