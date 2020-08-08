prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Publicaciones - Copia'
,p_alias=>'PUBLICACIONES-COPIA'
,p_step_title=>'Publicaciones - Copia'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KQUINONESA@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200719062106'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59394292252807896313)
,p_plug_name=>'Mis Publicaciones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26668720835683914546)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.ID,',
'       P.POST_TITULO,',
'       P.POST_DESCR,',
'       P.POST_CATEGORIA,',
'       P.POST_FREG,',
'       P.POST_FCAD,',
'       P.POST_PRIV,',
'       P.POST_USER,',
'       P.POST_TIPO,',
'       P.POST_LINK',
'  from COR_POST P INNER JOIN COR_USER U',
'ON P.POST_USER = U.ID',
' where UPPER(U.USER_EMAIL) = upper(:APP_USER) and P.POST_FCAD > SYSDATE',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Mis Publicaciones'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(28879852644938780144)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'- '
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_show_detail_link=>'C'
,p_detail_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,:P6_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'KQUINONESA@UNSA.EDU.PE'
,p_internal_uid=>28879852644938780144
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28879852714367780145)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28879852886494780146)
,p_db_column_name=>'POST_TITULO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Titulo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28879852926209780147)
,p_db_column_name=>'POST_DESCR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28879853093627780148)
,p_db_column_name=>'POST_CATEGORIA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Categoria'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28879853244129780150)
,p_db_column_name=>'POST_FREG'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha de Registro'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30337788978582787701)
,p_db_column_name=>'POST_FCAD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha de Caducidad'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30337789048441787702)
,p_db_column_name=>'POST_PRIV'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Post Priv'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30337789118725787703)
,p_db_column_name=>'POST_USER'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Post User'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30337789238766787704)
,p_db_column_name=>'POST_TIPO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28879853126832780149)
,p_db_column_name=>'POST_LINK'
,p_display_order=>110
,p_column_identifier=>'E'
,p_column_label=>'Notificaciones'
,p_column_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.::P45_POST1:#ID#'
,p_column_linktext=>'Ver mis notificaciones'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(30338061616300857368)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'303380617'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:POST_TITULO:POST_DESCR:POST_CATEGORIA:POST_LINK:POST_FREG:POST_FCAD:POST_PRIV:POST_USER:POST_TIPO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87818848427364086989)
,p_plug_name=>'<font color=#002C52>Mis Publicaciones</font>'
,p_icon_css_classes=>'fa-heart-o'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26668695450229914510)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30337786877237784197)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(59394292252807896313)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26668783415762914708)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:39'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30339315274101892150)
,p_name=>unistr('Editar Informe: Cuadro de Di\00E1logo Cerrado')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(59394292252807896313)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30339315625695892154)
,p_event_id=>wwv_flow_api.id(30339315274101892150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
);
wwv_flow_api.component_end;
end;
/
