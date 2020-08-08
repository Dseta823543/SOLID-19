prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'KQUINONESA@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200718144927'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26673298574159126311)
,p_name=>'load_Background'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26673298722346126312)
,p_event_id=>wwv_flow_api.id(26673298574159126311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_AT.RAMMELHOF.MODERNBACKGROUND'
,p_attribute_01=>'blue-2137334_1920.jpg'
,p_attribute_02=>'help-ORIG (1).jpg'
,p_attribute_05=>'#000A01'
,p_attribute_06=>'0.5'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_attribute_10=>'#44CFCB'
);
wwv_flow_api.component_end;
end;
/
