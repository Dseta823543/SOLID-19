prompt --application/shared_components/globalization/messages
begin
--   Manifest
--     MESSAGES: 95395
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
wwv_flow_api.create_message(
 p_id=>wwv_flow_api.id(29720258944895625366)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'es'
,p_message_text=>'Existen valores necesarios en este formulario.'
);
null;
wwv_flow_api.component_end;
end;
/
