CLASS zcl_lab_74_view_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS visualizar_vuelos IMPORTING it_flight type /dmo/t_flight
                                        i_print   type ref to IF_OO_ADT_CLASSRUN_OUT.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_74_view_dnavas IMPLEMENTATION.
  METHOD visualizar_vuelos.
    i_print->write( it_flight ).
  ENDMETHOD.
ENDCLASS.
