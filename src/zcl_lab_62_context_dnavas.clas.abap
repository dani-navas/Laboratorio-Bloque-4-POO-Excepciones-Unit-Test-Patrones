CLASS zcl_lab_62_context_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    CLASS-DATA l_time TYPE sy-uzeit.
    CLASS-METHODS instance RETURNING VALUE(ro_instance) TYPE REF TO zcl_lab_62_context_dnavas.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA mo_instance TYPE REF TO zcl_lab_62_context_dnavas.
ENDCLASS.

CLASS zcl_lab_62_context_dnavas IMPLEMENTATION.
  METHOD instance.
    IF mo_instance IS NOT BOUND.
      mo_instance = NEW #( ).
    ENDIF.
    ro_instance = mo_instance.
    l_time = cl_abap_context_info=>get_system_time( ).
  ENDMETHOD.
ENDCLASS.
