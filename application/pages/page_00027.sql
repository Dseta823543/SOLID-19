prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(26668805928449914819)
,p_name=>'Ubicaciones de proveedores'
,p_step_title=>'Ubicaciones de proveedores'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'KQUINONESA@UNSA.EDU.PE'
,p_last_upd_yyyymmddhh24miss=>'20200719164206'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26680726268714127866)
,p_plug_name=>'Ubicaciones de proveedores'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(26668722685742914547)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    /* set center longitude of the map - only first row is used */',
'    ''-71.537639'' AS MAP_LONGITUDE,',
'    /* set center latitude of the map - only first row is used */',
'    ''-16.408331'' AS MAP_LATITUDE,',
'    /* set zoom level of the map - only first row is used */',
'    10 AS MAP_ZOOM,',
'    /* set longitude of the marker */',
'--    DBMS_RANDOM.VALUE(',
'--        0,',
'--        60',
'--    ) AS MARKER_LONGITUDE,',
'    U.LNG as MARKER_LONGITUDE,',
'    U.LAT as MARKER_LATITUDE,',
'    /* set label of the marker if lables are enabled*/',
'    U.USER_DEPT||''-''||P.POST_CATEGORIA||''-''||P.POST_DESCR as MARKER_LABEL,',
'/* set url for the icon of the marker */',
'''https://img.icons8.com/color/48/000000/trust.png'' AS MARKER_URL,',
'    /* set width of the marker icon*/',
'    40 AS MARKER_WIDTH,',
'    /* set height of the marker icon */',
'    40 AS MARKER_HEIGHT,',
'    APEX_PAGE.GET_URL (',
'            p_page   => 10,',
'            p_items  => ''P10_MSG_POST'',',
'            p_values => P.ID ) AS MARKER_LINK',
' from COR_POST P INNER JOIN COR_USER U',
'ON P.POST_USER = U.ID',
' where UPPER(P.POST_TIPO) = ''OFERTA''',
'',
'    union all',
'  SELECT',
'    /* set center longitude of the map - only first row is used */',
'    ''-71.537639'' AS MAP_LONGITUDE,',
'    /* set center latitude of the map - only first row is used */',
'    ''-16.408331'' AS MAP_LATITUDE,',
'    /* set zoom level of the map - only first row is used */',
'    10 AS MAP_ZOOM,',
'    /* set longitude of the marker */',
'--    DBMS_RANDOM.VALUE(',
'--        0,',
'--        60',
'--    ) AS MARKER_LONGITUDE,',
'    U.LNG as MARKER_LONGITUDE,',
'    U.LAT as MARKER_LATITUDE,',
'    /* set label of the marker if lables are enabled*/',
'    U.USER_DEPT||''-''||P.POST_CATEGORIA||''-''||P.POST_DESCR as MARKER_LABEL,',
'/* set url for the icon of the marker */',
'/*''data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAApCAIAAADWCcwsAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAA5SURBVFhH7c0xEQAgDAAxtKCnZusQFWH6u+w5d+ezSqQSqUQqkUqkEqlEKpFKpBKpRCqRSuR7ufMAwe/TBfhjJ5wAAAAASUVORK5CYII='' AS '
||'MARKER_URL,',
'*/',
'''https://img.icons8.com/color/96/000000/pray.png'' AS MARKER_URL,',
'',
'/* set width of the marker icon*/',
'    30 AS MARKER_WIDTH,',
'    /* set height of the marker icon */',
'    30 AS MARKER_HEIGHT,',
'    APEX_PAGE.GET_URL (',
'            p_page   => 10,',
'            p_items  => ''P10_MSG_POST'',',
'            p_values => P.ID ) AS MARKER_LINK',
' from COR_POST P INNER JOIN COR_USER U',
'ON P.POST_USER = U.ID',
' where UPPER(P.POST_TIPO) = ''SOLICITUD'''))
,p_plug_source_type=>'PLUGIN_APEX.ORACLE.OSM.MAPS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<b>Ubicaciones de ofertas de ayuda con un marcador rojo - Solicitudes de ayuda: verde</b>'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "refresh": 0,',
'  "height": "600px",',
'  "map": {',
'    "longitude": 10.5,',
'    "latitude": 53.25,',
'    "zoom": 10',
'  },',
'  "marker": {',
'    "height": 54,',
'    "width": 54,',
'    "labels": false,',
'    "url": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAEeElEQVRogcWZT2hdRRTGf/cRQhYhBAmlhC5CkRBCKCEqVBcSShTRLkSKiJQiLooLF+JCgohQXHThyoVIESkSsuiqiBTRIiolipQS/NcWJG0lVKvV1lBriGnO52LmNjc3d+579915fQeG'
||'N+/CzHzfme/MPXNuQk2T+xkAdgOjwEPAFDDsnwP8C1wDvgfOAueBS8CNBKwuhrZNMGhwwOCYYMlgXaB8s63/NwRXBfMGL8oR7Qr4CYNTBr97UNuAlzVz7abBgmBG0LhXwHcKjhjczHs31G+h3TZ435wEOwp+h2BecDsi+LStCz4XjHcS/HEFdB6xfRqdhJfNXChIfVs1uOB36KBgSrBLMGwuXp6RC/ZzBitNdu0LwVg0AgZvpLIJtF8MXh'
||'fsEfSUOKIhGBEcNlgsCf4NwYdRAlswZvBXaCGDrwT7BL0V5mwIJv1urQV2Y9Vgf13wAwYnbfPYy3vpuGBnjfn7BG8arBXJyZzcRuoQ2C+4GjhVztQBnyVhTi7b5GRwy+DlMlmWTdwveCeg02XBTF3wmbUmBN8GAvqjthwlGBf8VOCVNYMjVTTfzMytdyiNNdsqoxXBdGhsWZTvFtxf8PxKAh8n8F9d4DkQnwEXBSS++f4A8GCTsYU2mXgv'
||'a+vz87isMrZdS+DLJPMg0384NKiMwAMFE5HA6Zjez61xCpzDUqf5/mRoXBmBUOBcrIyudSuSEJSk3EECgv5MP2t/1EHYxP5O4E76J9n87QsNCJ6vAS3eE0sdlmz2g7e2shfEjcDzoXZAtWgDgp7UYRkJ/RMaUBYDl9JOTkKdvHSMFu28MljyVkZgIT+Rn+yxmC+xzLwAT6X97CmUwNehcWVB/KPgz/zzBCbozK1pCJguOIXuAGdCg4IEEv'
||'g18S+snIRGgCfaSrAC5iN0HzBeIKErci/PaiboEcwKVgvy9SXBo7WRezMYlbtX5POuDcF72qwvVSaxV/BzJrHKLnBacF8E8L0e5HrBneC64Dk1nyZIoE8wV5BOpxead+uQ8OBflSurFN2PFwx2tDt/SmLCwgtsCD4RPFIlJnz6PC53yV8tcdCBWuAzJE4UxMHdX4MLBq/IabnsZEMwLFe1WAjIJm2LKkkhqhKYlqtnBus5BrcE33mvPi0Y'
||'NRiUe7uOCB4XvC34RpmLSxF4c7tyKAp4T6BP8FbgRGrar9J87WlOsVMWwZjgbBXgbfYvy5Vp4ppBw5x22/Fqlf7RaNoPEJm3TKUipoTM7XDnwHsCk4LFDkhoWXUrca2YoNfgsMLlxnYktOql098cQRwSPYKj5mqjMSR0QhHSkqokhvznoboSuqyYpfSKJGY8gHYltGLwQlfAewINuWzxt6oS8oXb1zp+6rRAok8wW5Ryl/UNPlBnCwStm1'
||'y+c7KChH5Qt74Ph0ywy1wpfD0kIf8CPCfY022820yuTcllmyHZLAmeVMT7dFTzQb3X/EfwHJF1g2fVgZJMdJPL/ZcyJK4LXuo2rpbN33WfFyz73ZhVu5WFbpk/Xg/KfYUc7NQ6/wPXO1op+IbpEgAAAABJRU5ErkJggg=="',
'  }',
'}'))
,p_attribute_02=>'osm'
);
wwv_flow_api.component_end;
end;
/
