CLASS zcl_lab_66_travel_dnavas DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS travel FINAL IMPORTING i_adt TYPE REF TO if_oo_adt_classrun_out.

    METHODS transport_oneway ABSTRACT IMPORTING i_adt TYPE REF TO if_oo_adt_classrun_out.
    METHODS day_one          ABSTRACT IMPORTING i_adt TYPE REF TO if_oo_adt_classrun_out.
    METHODS DAY_Two          ABSTRACT IMPORTING i_adt TYPE REF TO if_oo_adt_classrun_out..
    METHODS DAY_three        ABSTRACT IMPORTING i_adt TYPE REF TO if_oo_adt_classrun_out..
    METHODS transport_return ABSTRACT IMPORTING i_adt TYPE REF TO if_oo_adt_classrun_out..

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_66_travel_dnavas IMPLEMENTATION.
  METHOD travel.
    ME->transport_oneway( i_adt ).
    ME->day_one( i_adt ).
    ME->day_TWO( i_adt ).
    ME->day_THREE( i_adt ).
    ME->transport_return( i_adt ).
  ENDMETHOD.
ENDCLASS.
