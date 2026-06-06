CLASS zcl_exce_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_exce_dnavas IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*Excepción, obteniendo en el catch para procesar la excepción
*Excepción con el retry, en caso que haya excepción vuelva a ejectuarse
*    DATA(lo_check_user) = NEW zcl_lab_53_check_user_dnavas( ).
*
*    TRY.
*        lo_check_user->check_user( i_uname = 'CB9980000153'  ).
*      CATCH zcx_lab_52_operations_dnavas INTO DATA(l_return).
*        out->write( l_return->get_text( ) ).
*
*    ENDTRY.


*    DATA l_num1      TYPE i VALUE 8.
*    DATA l_num2      TYPE i VALUE 0.
*    DATA l_resultado TYPE i.
*
*
*    TRY.
*        TRY.
*            l_resultado = l_num1 + l_num2.
*            l_resultado = l_num1 / l_num2.
*            l_resultado = l_num1 * l_num2.
*
*          CATCH  zcx_lab_52_operations_dnavas INTO DATA(l_auth).
*            out->write( l_auth->get_text( ) ).
*
*          CATCH cx_a4c_bc_exception.
*
*          CLEANUP.
*            out->write(  |Cleanup1.... { l_resultado }| ).
*        ENDTRY.
*
*      CATCH cx_sy_zerodivide INTO DATA(l_zerodivide).
*        out->write( l_zerodivide->get_text( ) ).
*        l_num2 = 2.
*        RETRY .
*      CLEANUP.
*        out->write(  |Cleanup2.... { l_resultado }| ).
*    ENDTRY.
*
*    out->write( |Resultado: { l_resultado } | ).


*Excepción Reanudable
*    DATA(lo_bank) = NEW zcl_lab_54_bank_dnavas( ).
*
*
*    out->write( |Usuario { sy-uname } pidiendo autorización para acceder al IBAN ES95 4329 8765 4321 | ).
*    TRY.
*        out->write( |Comprobando Autorización... | ).
*        lo_bank->transfer( 'ES95 4329 8765 4321' ).
*      CATCH BEFORE UNWIND zcx_lab_55_auth_iban_dnavas INTO DATA(lx_authority).
*
*        IF lx_authority->is_resumable = abap_true.
*          out->write( lx_authority->get_text( ) ).
*          RESUME.
*        ENDIF.
*    ENDTRY.


*Asignación de excepciones unas a otras
    DATA(lo_date_ANALYZER) = NEW zcl_lab_58_date_analyzer_dn( ).

    TRY.
        TRY.
            lo_date_ANALYZER->analyze_date( ).
          CATCH zcx_lab_56_no_date_dnavas INTO DATA(lx_excep1).
            out->write( lx_excep1->get_text( ) ).
            out->write( 'Previous....' ).
            lo_date_ANALYZER->analyze_format( io_previous = lx_excep1 ).
            out->write( lx_excep1->previous->get_text( ) ).
        ENDTRY.

      CATCH zcx_lab_57_format_unknown_dn INTO DATA(lx_excep2).
        out->write( lx_excep2->get_text( ) ).
    ENDTRY.


  ENDMETHOD.
ENDCLASS.
