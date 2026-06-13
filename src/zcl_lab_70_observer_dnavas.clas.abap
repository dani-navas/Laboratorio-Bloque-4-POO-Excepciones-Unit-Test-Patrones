CLASS zcl_lab_70_observer_dnavas DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    METHODS on_notificacion_articulo ABSTRACT
    FOR EVENT notificacion_articulo OF zcl_lab_69_blog_dnavas IMPORTING ev_titulo.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_70_observer_dnavas IMPLEMENTATION.
ENDCLASS.
