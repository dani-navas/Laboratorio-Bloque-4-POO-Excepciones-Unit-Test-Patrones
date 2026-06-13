*"* use this source file for your ABAP unit test classes
CLASS ltcl_lab_59_calculator DEFINITION FINAL FOR TESTING
        DURATION SHORT
        RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS sum_up_test  FOR TESTING RAISING cx_static_check.

    DATA mo_sum_up TYPE REF TO zcl_lab_59_calculator_dnavas.

    METHODS setup.
    METHODS teardown.

ENDCLASS.


CLASS ltcl_lab_59_calculator IMPLEMENTATION.
  METHOD setup.
    me->mo_sum_up = NEW zcl_lab_59_calculator_dnavas( ).
  ENDMETHOD.
  METHOD sum_up_test.

    DATA L_num1 TYPE i VALUE 2.
    DATA L_num2 TYPE i VALUE 2.

    mo_sum_up->sum_up(
      EXPORTING
        i_num1  =  L_num1
        i_num2  =  L_num2
      IMPORTING
        e_value = DATA(L_result) ).


    IF  cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = l_result
        exp                  = 4 ) EQ abap_true.
      cl_abap_unit_assert=>fail( 'Fallo en el resultado' ).
    ENDIF.
  ENDMETHOD.
  METHOD teardown.
    CLEAR   me->mo_sum_up.
  ENDMETHOD.
ENDCLASS.



