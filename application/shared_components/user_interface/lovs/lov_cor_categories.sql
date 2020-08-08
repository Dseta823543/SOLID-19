prompt --application/shared_components/user_interface/lovs/lov_cor_categories
begin
--   Manifest
--     LOV_COR_CATEGORIES
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>26293853277175009384
,p_default_application_id=>95395
,p_default_id_offset=>46234255895120286976
,p_default_owner=>'SOLID192'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(26679977122199288532)
,p_lov_name=>'LOV_COR_CATEGORIES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE d, NOMBRE r',
'from COR_CATEGORIES',
'ORDER BY CAT_ID ASC'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'COR_CATEGORIES'
,p_return_column_name=>'D'
,p_display_column_name=>'R'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
