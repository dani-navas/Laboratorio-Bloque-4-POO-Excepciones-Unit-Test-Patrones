CLASS zcl_lab_58_date_analyzer_dn DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    DATA date TYPE STRING.

    METHODS analyze_date  RAISING zcx_lab_56_no_date_dnavas.
    METHODS aNALYZE_FORMAT  IMPORTING io_previous TYPE REF TO cx_root
                            RAISING   zcx_lab_57_format_unknown_dn.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_58_date_analyzer_dn IMPLEMENTATION.
  METHOD analyze_date.
    IF date = ''.
      RAISE EXCEPTION TYPE zcx_lab_56_no_date_dnavas
        EXPORTING
          textid  = zcx_lab_56_no_date_dnavas=>no_date
          ms_msg1 = ''.
    ENDIF.
  ENDMETHOD.

  METHOD analyze_format.

    date = '132211A'.

    IF date IS NOT INITIAL.
      RAISE EXCEPTION TYPE zcx_lab_57_format_unknown_dn
        EXPORTING
          textid   = zcx_lab_57_format_unknown_dn=>no_format
          previous = io_previous
          ms_msg1  = ME->date.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
