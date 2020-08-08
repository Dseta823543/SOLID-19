prompt --application/shared_components/navigation/lists/mail_navegation
begin
--   Manifest
--     LIST: Mail Navegation
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(29417282638849847490)
,p_name=>'Mail Navegation'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29417282862721847493)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Mensajes Recibidos'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29417283258408847494)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Mensajes Enviados'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-envelope'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
