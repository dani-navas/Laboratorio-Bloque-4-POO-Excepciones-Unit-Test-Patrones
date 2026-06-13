CLASS zcl_lab_61_travel_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS get_travel   EXPORTING e_flight     TYPE /dmo/flight.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_61_travel_dnavas IMPLEMENTATION.
  METHOD get_travel.

    DATA ls_flight TYPE /dmo/flight.
    DATA travel_id TYPE /dmo/carrier_id.

    travel_id = 'AA'.
    SELECT SINGLE * FROM /dmo/flight
    WHERE carrier_id = @travel_id
    INTO @e_flight.

    TEST-SEAM select_flight.
      SELECT SINGLE * FROM /dmo/flight
      WHERE carrier_id = @travel_id
      INTO @ls_flight.
    END-TEST-SEAM.

    IF travel_id = 'LL'.
      e_flight = CORRESPONDING #( ls_flight ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
