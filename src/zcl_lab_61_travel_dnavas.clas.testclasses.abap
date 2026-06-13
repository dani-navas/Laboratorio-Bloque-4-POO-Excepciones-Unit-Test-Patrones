*"* use this source file for your ABAP unit test classes
CLASS ltcl_zcl_lab_61_travel DEFINITION FINAL FOR TESTING
        DURATION SHORT
        RISK LEVEL HARMLESS.

  PUBLIC SECTION.
    INTERFACES  if_abap_db_writer.

  PRIVATE SECTION.
    METHODS:
      get_travel_test FOR TESTING RAISING cx_static_check.

    DATA mo_travel TYPE REF TO zcl_lab_61_travel_dnavas.

    METHODS setup.
    METHODS teardown.
ENDCLASS.


CLASS ltcl_zcl_lab_61_travel IMPLEMENTATION.

  METHOD setup.
    me->mo_travel  = NEW zcl_lab_61_travel_dnavas( ).

    TEST-INJECTION select_flight.
      travel_id = 'LL'.
      ls_flight-carrier_id = travel_id.
      ls_flight-connection_id = '1111'.
      ls_flight-flight_date = '19870924'.
    END-TEST-INJECTION.
  ENDMETHOD.

  METHOD  get_travel_test.

    me->mo_travel->get_travel( IMPORTING e_flight = DATA(ls_flight) ).

    IF cl_abap_unit_assert=>assert_equals(
       EXPORTING
         act                  = |{ ls_flight-carrier_id }-{ ls_flight-connection_id }-{ ls_flight-flight_date }|
         exp                  = 'LL-1111-19870924' )  EQ abap_true.
      cl_abap_unit_assert=>fail( 'Implement your first test here' ).
    ENDIF.
  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_travel.
  ENDMETHOD.

  METHOD if_abap_close_resource~close.
  ENDMETHOD.

  METHOD if_abap_writer~flush.
  ENDMETHOD.

  METHOD if_abap_db_writer~get_statement_handle.
  ENDMETHOD.

  METHOD if_abap_close_resource~is_closed.
  ENDMETHOD.

  METHOD if_abap_writer~is_x_writer.
  ENDMETHOD.

  METHOD if_abap_writer~write.
  ENDMETHOD.
ENDCLASS.

