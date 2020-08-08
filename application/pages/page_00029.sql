prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Cosa la mascarilla usted mismo'
,p_step_title=>'Cosa el protector bucal usted mismo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'KQUINONESA@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200808074246'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26685336731615315541)
,p_plug_name=>'Cosa la mascarilla usted mismo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Quienes cosen est\00E1n compartiendo una variedad de patrones y tutoriales en l\00EDnea, desde una mascarilla hecha con pa\00F1os de cocina en Instructibles.com (en ingl\00E9s) a instrucciones paso a paso en un tutorial de YouTube (en ingl\00E9s) .'),
'<br><br>',
'',
'<img src ="#APP_IMAGES#mundschutz02.jpg" width = 300 >&nbsp;&nbsp;',
'<img src ="#APP_IMAGES#mundschutz01.jpg" width = 300 >&nbsp;&nbsp;',
'<img src ="#APP_IMAGES#mundschutz03.jpg" width = 300>&nbsp;&nbsp;',
'',
'<br><br>',
unistr('Lo que necesitar\00E1s:'),
'<br>',
unistr('\2022 Algod\00F3n de tejido muy cerrado o tela de algod\00F3n y poli\00E9ster (puedes obtener de 8 a 10 mascarillas con una yarda [36 pulgadas] de tela).'),
'<br>',
unistr('\2022 Aguja e hilo (pero preferiblemente, una m\00E1quina de coser)'),
'<br>',
unistr('\2022 Tijeras afiladas'),
'<br>',
unistr('\2022 Alfileres para mantener la tela en su sitio'),
'<br>',
unistr('\2022 Tiras de tela de algod\00F3n, cordones el\00E1sticos o cordones de zapatos nuevos'),
'<br>',
unistr('\2022 Opcional: los alambres para limpiar pipas pueden servir para ajustar la mascarilla sobre la nariz<br><br>'),
'20.07.2020 - SOLID'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
