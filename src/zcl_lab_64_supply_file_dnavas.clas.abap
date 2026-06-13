CLASS zcl_lab_64_supply_file_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES zif_lab_06_file_dnavas .
     ALIASES get_file_type for zif_lab_06_file_dnavas~get_file_type.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_64_supply_file_dnavas IMPLEMENTATION.
  METHOD zif_lab_06_file_dnavas~get_file_type.
    file_type = 'Supply File'.
  ENDMETHOD.
ENDCLASS.
