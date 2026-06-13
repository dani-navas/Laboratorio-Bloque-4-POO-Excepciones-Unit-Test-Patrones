CLASS zcl_lab_59_calculator_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS sum_up IMPORTING i_num1         TYPE i
                             i_num2         TYPE i
                   EXPORTING VALUE(e_value) TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_59_calculator_dnavas IMPLEMENTATION.
  METHOD sum_up.
    e_value = i_num1 + i_num2.
  ENDMETHOD.
ENDCLASS.
