CLASS zcl_lab_69_blog_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS titulo_articulo IMPORTING i_titulo TYPE string.
    METHODS get_titulo_articulo  RETURNING VALUE(rv_titulo) TYPE string.

    EVENTS notificacion_articulo EXPORTING VALUE(ev_titulo) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA nuevo_articulo TYPE string.
ENDCLASS.



CLASS zcl_lab_69_blog_dnavas IMPLEMENTATION.
  METHOD get_titulo_articulo.
    rv_titulo = me->nuevo_articulo.
  ENDMETHOD.

  METHOD titulo_articulo.
    me->nuevo_articulo = i_titulo.
    RAISE EVENT notificacion_articulo EXPORTING ev_titulo =  me->nuevo_articulo.
  ENDMETHOD.

ENDCLASS.
