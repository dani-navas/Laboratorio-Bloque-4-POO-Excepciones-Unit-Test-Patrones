CLASS zcl_exce_dnavas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA i_adt TYPE REF TO if_oo_adt_classrun_out.
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
*    DATA(lo_date_ANALYZER) = NEW zcl_lab_58_date_analyzer_dn( ).
*
*    TRY.
*        TRY.
*            lo_date_ANALYZER->analyze_date( ).
*          CATCH zcx_lab_56_no_date_dnavas INTO DATA(lx_excep1).
*            out->write( lx_excep1->get_text( ) ).
*            out->write( 'Previous....' ).
*            lo_date_ANALYZER->analyze_format( io_previous = lx_excep1 ).
*            out->write( lx_excep1->previous->get_text( ) ).
*        ENDTRY.
*
*      CATCH zcx_lab_57_format_unknown_dn INTO DATA(lx_excep2).
*        out->write( lx_excep2->get_text( ) ).
*    ENDTRY.


*TEST-INJECTION mostrar los datos cambiados
**     data(mo_travel) = new zcl_lab_61_travel_dnavas( ).
*
*    mo_travel->get_travel( IMPORTING e_flight = data(ls_flight) ).
*
*    out->write( |{ ls_flight-carrier_id }-{ ls_flight-connection_id }-{ ls_flight-flight_date } | ).



*SINGLETON
*    DATA mo_singleton_1 TYPE REF TO zcl_lab_62_context_dnavas.
*    DATA mo_singleton_2 TYPE REF TO zcl_lab_62_context_dnavas.
*
*    mo_singleton_1 = zcl_lab_62_context_dnavas=>instance( ).
*    mo_singleton_2 = zcl_lab_62_context_dnavas=>instance( ).
*
*    out->write( |SINGLETON 1:  { mo_singleton_1->l_time } | ).
*    WAIT UP TO 2 SECONDS.
*    out->write( |SINGLETON 2:  { mo_singleton_2->l_time } | ).


*FACTORY METHOD
*
*    DATA(mo_factory) = NEW zcl_lab_65_factory_dnavas( ).
*    DATA mo_FILE TYPE REF TO zif_lab_06_file_dnavas.
*    DATA: i_adt TYPE REF TO if_oo_adt_classrun_out.
*
*    mo_file = mo_factory->create_file( i_file = 'WORK' ).
*    out->write( MO_file->get_file_type( ) ).
*    mo_file = mo_factory->create_file( i_file = 'SUPPLY' ).
*    out->write( MO_file->get_file_type( ) ).


*TEMPLATE METHOD
*    DATA(lo_package_a)  = NEW  zcl_lab_67_package_a_dnavas( ).
*    DATA(lo_package_B)  = NEW  zcl_lab_68_package_B_dnavas( ).
*
*    out->write( |INIT TRAVEL TO PACKAGE A| ).
*    lo_package_a->travel( i_adt = OUT ).
*    OUT->write( cl_abap_char_utilities=>newline ).
*    out->write( |INIT TRAVEL TO PACKAGE B| ).
*    lo_package_B->travel( i_adt = OUT ).


*PATRÓN DISEÑO OBSERVER

    DATA(Lo_BLOG) = NEW zcl_lab_69_blog_dnavas( ).
    DATA(Lo_ADMIN) = NEW zcl_lab_71_administrator_dn( ).
    DATA(Lo_USER) = NEW zcl_lab_72_users_dnavas( ).

    SET HANDLER lo_admin->on_notificacion_articulo FOR Lo_BLOG.
    SET HANDLER lo_user->on_notificacion_articulo FOR Lo_BLOG.

    lo_blog->titulo_articulo( i_titulo = 'Artículo de Deportes-16.06.2026-12:50' ).
    out->write( lo_blog->get_titulo_articulo(  ) ).
    out->write( lo_admin->notificacion_admin  ).
    out->write( lo_user->notificacion_user ).
    out->write(  cl_abap_char_utilities=>newline ).
    lo_blog->titulo_articulo( i_titulo = 'Artículo de Economía-25.10.2026-15:33' ).
    out->write( lo_blog->get_titulo_articulo(  ) ).
    out->write( lo_admin->notificacion_admin  ).
    out->write( lo_user->notificacion_user ).



*MODE->VIEW->CONTROLLER
*    DATA(lo_model) = NEW  zcl_lab_73_model_dnavas( ).
*    DATA(lo_view)  = NEW zcl_lab_74_view_dnavas( ).
*    DATA(lo_controller) = NEW zcl_lab_75_controller_dnavas( ).
*
*    lo_controller->set_model( i_model = lo_model ).
*    lo_controller->get_model( )->set_carrier_id( i_carrier_id = 'AA' ).
*    lo_controller->get_model( )->get_table_flight(
*      RECEIVING
*        rt_flight = DATA(lt_flight)
*    ).
*    lo_controller->set_view( i_view = lo_view ).
*    lo_controller->get_view( )->visualizar_vuelos(
*      it_flight = lt_flight
*      i_print   = out
*    ).


  ENDMETHOD.
ENDCLASS.
