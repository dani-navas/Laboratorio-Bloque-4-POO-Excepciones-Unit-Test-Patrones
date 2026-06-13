CLASS zcl_lab_68_package_b_dnavas DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_66_travel_dnavas
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: transport_oneway REDEFINITION,
             day_one REDEFINITION,
             day_TWo REDEFINITION,
             day_three REDEFINITION,
             transport_return REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_68_package_b_dnavas IMPLEMENTATION.
  METHOD day_Two.
      i_adt->write( |PACKAGE B: DAY TWO| ).
  ENDMETHOD.
  METHOD day_one.
     i_adt->write( |PACKAGE B: DAY ONE| ).
  ENDMETHOD.
  METHOD day_three.
     i_adt->write( |PACKAGE B: DAY THREE| ).
  ENDMETHOD.
  METHOD transport_oneway.
     i_adt->write( |PACKAGE B: START OF THE TRAVEL| ).
  ENDMETHOD.
  METHOD transport_return.
     i_adt->write( |PACKAGE B: FINISH OF THE TRAVEL| ).
  ENDMETHOD.
ENDCLASS.
