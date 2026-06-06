CLASS zcl_lab_53_check_user_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    METHODS check_user  IMPORTING i_uname TYPE sy-uname
                        RAISING   zcx_lab_52_operations_dnavas.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_53_check_user_dnavas IMPLEMENTATION.
  METHOD check_user.

    IF sy-uname = 'CB9980000153'.
      RAISE EXCEPTION TYPE zcx_lab_52_operations_dnavas
        EXPORTING
          textid  = zcx_lab_52_operations_dnavas=>no_access
*         previous =
          ms_msg1 = | { sy-uname } |
*         ms_msg2 =
*         ms_msg3 =
*         ms_msg4 =
        .
    ENDIF.
  ENDMETHOD.

ENDCLASS.
