CLASS zcl_lab_73_model_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS set_carrier_id IMPORTING i_carrier_id TYPE /dmo/carrier_id.
    METHODS get_table_flight RETURNING VALUE(rt_flight) TYPE /dmo/t_flight.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mt_flight TYPE /dmo/t_flight.
ENDCLASS.



CLASS zcl_lab_73_model_dnavas IMPLEMENTATION.
  METHOD get_table_flight.
    rt_flight = me->mt_flight.
  ENDMETHOD.

  METHOD set_carrier_id.
    SELECT * FROM /dmo/flight
    WHERE carrier_id = @i_carrier_id
    INTO TABLE @me->mt_flight.
  ENDMETHOD.
ENDCLASS.
