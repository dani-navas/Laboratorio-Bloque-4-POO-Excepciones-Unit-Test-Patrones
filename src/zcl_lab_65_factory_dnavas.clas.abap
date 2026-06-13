CLASS zcl_lab_65_factory_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    METHODS create_file  IMPORTING i_file         TYPE string
                         RETURNING VALUE(ro_file) TYPE REF TO zif_lab_06_file_dnavas.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_65_factory_dnavas IMPLEMENTATION.
  METHOD create_file.
    CASE i_file.
      WHEN 'WORK'.
        ro_file = NEW zcl_lab_63_work_file_dnavas( ).
      WHEN 'SUPPLY'.
        ro_file = NEW zcl_lab_64_supply_file_dnavas( ).
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
