prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
--   Manifest
--     LIST: Desktop Navigation Bar
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
 p_id=>wwv_flow_api.id(26668805612953914815)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26668884404443915638)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Acerca de '
,p_list_item_icon=>'fa-question-circle-o'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(26668808044586914997)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26668885304576915642)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(26668884404443915638)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26668884855305915640)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Ayuda',
''))
,p_list_item_link_target=>'f?p=&APP_ID.:10011:&SESSION.::&DEBUG.::P10011_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle-o'
,p_required_patch=>wwv_flow_api.id(26668808044586914997)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26668885741306915642)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Acerca de la P\00E1gina')
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010:::'
,p_list_item_icon=>'fa-info-circle-o'
,p_required_patch=>wwv_flow_api.id(26668808044586914997)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26668885986874915643)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26668886486782915644)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(26668885986874915643)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26668886943756915645)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('Cerrar Sesi\00F3n')
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(26668885986874915643)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26669152057777602434)
,p_list_item_display_sequence=>65
,p_list_item_link_text=>'Mi Perfil'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-card-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26669150775171558652)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Ingresar-mi perfil'
,p_list_item_link_target=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-sign-in'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26672547781987214122)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>unistr('Protecci\00F3n de datos de impresi\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:10012:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_api.id(26672551180248333628)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26675783350883114393)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Descargar'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-download'
,p_list_item_disp_cond_type=>'NEVER'
,p_security_scheme=>wwv_flow_api.id(26672551180248333628)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26681894354963470538)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Lenguaje'
,p_list_item_disp_cond_type=>'NEVER'
,p_security_scheme=>wwv_flow_api.id(26672551180248333628)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26681894735446473726)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>unistr('Ingl\00E9s (solo demo)')
,p_list_item_link_target=>'https://bfw-design.maxapex.ws/apex/f?p=162:5'
,p_parent_list_item_id=>wwv_flow_api.id(26681894354963470538)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
