CLASS zcl_lab_67_package_a_dnavas DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_66_travel_dnavas
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: transport_oneway REDEFINITION,
             day_one REDEFINITION,
             day_Two REDEFINITION,
             day_three REDEFINITION,
             transport_return REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_67_package_a_dnavas IMPLEMENTATION.
  METHOD day_Two.
      i_adt->write( |PACKAGE A: DAY TWO| ).
  ENDMETHOD.
  METHOD day_one.
     i_adt->write( |PACKAGE A: DAY ONE| ).
  ENDMETHOD.
  METHOD day_three.
     i_adt->write( |PACKAGE A: DAY THREE| ).
  ENDMETHOD.
  METHOD transport_oneway.
     i_adt->write( |PACKAGE A: START OF THE TRAVEL| ).
  ENDMETHOD.
  METHOD transport_return.
     i_adt->write( |PACKAGE A: FINISH OF THE TRAVEL| ).
  ENDMETHOD.
ENDCLASS.
