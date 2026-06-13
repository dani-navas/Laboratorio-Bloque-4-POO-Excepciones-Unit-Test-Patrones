CLASS zcl_lab_60_test_calc_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.
    "! @testing zcl_lab_59_calculator_dnavas
    METHODS sum_up FOR TESTING .
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA mo_sum_up TYPE REF TO zcl_lab_59_calculator_dnavas.

    METHODS setup.
    METHODS teardown.

ENDCLASS.


CLASS zcl_lab_60_test_calc_dnavas IMPLEMENTATION.
  METHOD setup.
    me->mo_sum_up = NEW zcl_lab_59_calculator_dnavas( ).
  ENDMETHOD.
  METHOD sum_up.

    DATA L_num1 TYPE i VALUE 2.
    DATA L_num2 TYPE i VALUE 2.

    mo_sum_up->sum_up(
      EXPORTING
        i_num1  =  L_num1
        i_num2  =  L_num2
      IMPORTING
        e_value = DATA(L_result) ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = l_result
        exp                  = 4 ).

  ENDMETHOD.
  METHOD teardown.
    CLEAR   me->mo_sum_up.
  ENDMETHOD.
ENDCLASS.
