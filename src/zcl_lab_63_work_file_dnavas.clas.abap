CLASS zcl_lab_63_work_file_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES zif_lab_06_file_dnavas.
    ALIASES get_file_type for zif_lab_06_file_dnavas~get_file_type.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_63_work_file_dnavas IMPLEMENTATION.
  METHOD get_file_type.
    file_type = 'Work File'.
  ENDMETHOD.
ENDCLASS.
