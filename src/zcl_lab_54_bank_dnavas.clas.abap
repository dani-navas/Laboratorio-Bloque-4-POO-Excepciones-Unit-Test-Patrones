CLASS zcl_lab_54_bank_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.


    METHODS transfer IMPORTING iv_iban TYPE string
                     RAISING   zcx_lab_52_operations_dnavas
                               RESUMABLE(ZCX_LAB_55_AUTH_IBAN_dnavas).
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_54_bank_dnavas IMPLEMENTATION.
  METHOD transfer.

*    log = | { log } Ejecutando operación validando..... { cl_abap_char_utilities=>newline }  |.

*    IF sy-uname  = 'CB9980000153'.
*      RAISE EXCEPTION TYPE zcx_lab_52_operations_dnavas
*        EXPORTING
*          textid  = zcx_lab_52_operations_dnavas=>no_execute
*          ms_msg1 = | { sy-uname } |.
*    ENDIF.


    IF iv_iban = 'ES95 4329 8765 4321'.
      RAISE RESUMABLE EXCEPTION TYPE zcx_lab_55_auth_iban_dnavas
        EXPORTING
          textid  = zcx_lab_55_auth_iban_dnavas=>no_access
          ms_msg1 = | { sy-uname } |.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
