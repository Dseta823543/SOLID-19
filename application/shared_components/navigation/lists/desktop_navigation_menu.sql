prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
--   Manifest
--     LIST: Desktop Navigation Menu
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
 p_id=>wwv_flow_api.id(26668669186980914262)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26668817727872915213)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Inicio'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26668819214915915229)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Mi perfil'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-book'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30285364763075600190)
,p_list_item_display_sequence=>950
,p_list_item_link_text=>'Datos Personales'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-book'
,p_parent_list_item_id=>wwv_flow_api.id(26668819214915915229)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30285578576948079424)
,p_list_item_display_sequence=>960
,p_list_item_link_text=>'Publicaciones'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-heart'
,p_parent_list_item_id=>wwv_flow_api.id(26668819214915915229)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29417272672971838301)
,p_list_item_display_sequence=>22
,p_list_item_link_text=>'Bandeja de Entrada'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29418452722949894356)
,p_list_item_display_sequence=>23
,p_list_item_link_text=>'Mensajes Recibidos'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(29417272672971838301)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29418377842509014689)
,p_list_item_display_sequence=>24
,p_list_item_link_text=>'Mensajes Enviados'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(29417272672971838301)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26668926444257205459)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Publicaciones'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-awesome-face'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26689594182010208315)
,p_list_item_display_sequence=>33
,p_list_item_link_text=>'Cosa la mascarilla usted mismo'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-american-sign-language-interpreting'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26680725858213127837)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Openstreetmaps'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-map-marker'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26670883014853796923)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('Distribuci\00F3n de COVID-19')
,p_list_item_link_target=>'https://apex.oracle.com/pls/apex/f?p=103428:32'
,p_list_item_icon=>'fa-ambulance'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26672563405627705423)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Otras iniciativas'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-star-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26680678687412969891)
,p_list_item_display_sequence=>115
,p_list_item_link_text=>'#YoMeQuedoEnCasa Unirse'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26673278212518850537)
,p_list_item_display_sequence=>700
,p_list_item_link_text=>unistr('Noticias / peri\00F3dico nacional')
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-newspaper-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26675545229242752469)
,p_list_item_display_sequence=>750
,p_list_item_link_text=>'Flujo del proceso'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-wizard'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26672542265560010797)
,p_list_item_display_sequence=>800
,p_list_item_link_text=>'FAQ'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26676734049871045238)
,p_list_item_display_sequence=>850
,p_list_item_link_text=>unistr('Administraci\00F3n')
,p_list_item_icon=>'fa-forms'
,p_security_scheme=>wwv_flow_api.id(26672551180248333628)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29208496987517875892)
,p_list_item_display_sequence=>910
,p_list_item_link_text=>'ADMIN: SOLID-19 Usuarios'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-emoji-love'
,p_parent_list_item_id=>wwv_flow_api.id(26676734049871045238)
,p_security_scheme=>wwv_flow_api.id(26672551180248333628)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26683929520921883243)
,p_list_item_display_sequence=>930
,p_list_item_link_text=>'ADMIN: Configuraciones'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_api.id(26676734049871045238)
,p_security_scheme=>wwv_flow_api.id(26672551180248333628)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26,28'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26470190218315036690)
,p_list_item_display_sequence=>940
,p_list_item_link_text=>'Acerca de los Correos'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(26676734049871045238)
,p_security_scheme=>wwv_flow_api.id(26672551180248333628)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30,31'
);
wwv_flow_api.component_end;
end;
/
