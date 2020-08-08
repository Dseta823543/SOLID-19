prompt --application/shared_components/security/authentications/corona_authentification
begin
--   Manifest
--     AUTHENTICATION: Corona_authentification
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(26668888810672927679)
,p_name=>'Corona_authentification'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'CORONA_AUTH_FUNCTION'
,p_attribute_05=>'N'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.component_end;
end;
/
