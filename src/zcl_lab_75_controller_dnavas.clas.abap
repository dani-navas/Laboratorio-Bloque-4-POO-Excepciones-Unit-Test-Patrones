CLASS zcl_lab_75_controller_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS set_model IMPORTING i_model TYPE REF TO zcl_lab_73_model_dnavas.
    METHODS get_model RETURNING VALUE(rv_model) TYPE REF TO zcl_lab_73_model_dnavas.

    METHODS set_view IMPORTING i_view TYPE REF TO zcl_lab_74_view_dnavas.
    METHODS get_view RETURNING VALUE(rv_view) TYPE REF TO zcl_lab_74_view_dnavas.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA lo_model TYPE REF TO zcl_lab_73_model_dnavas.
    DATA lo_view  TYPE REF TO zcl_lab_74_view_dnavas.
ENDCLASS.


CLASS zcl_lab_75_controller_dnavas IMPLEMENTATION.
  METHOD set_model.
    me->lo_model = i_model.
  ENDMETHOD.
  METHOD get_model.
    rv_model = me->lo_model.
  ENDMETHOD.
  METHOD set_view.
    me->lo_view = i_view.
  ENDMETHOD.
  METHOD get_view.
    rv_view = me->lo_view.
  ENDMETHOD.
ENDCLASS.
