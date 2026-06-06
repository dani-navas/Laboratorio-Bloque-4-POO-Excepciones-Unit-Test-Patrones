CLASS zcx_lab_56_no_date_dnavas DEFINITION INHERITING FROM cx_static_check
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

    INTERFACES if_t100_message.
    INTERFACES IF_T100_DYn_MSG.

    CONSTANTS: BEGIN OF no_date,
                 msgid TYPE symsgid VALUE 'ZMC_DNAVAS_01',
                 msgno TYPE symsgno VALUE '003',
                 attr1 TYPE scx_attrname VALUE 'ms_msg1',
                 attr2 TYPE scx_attrname VALUE 'ms_msg2',
                 attr3 TYPE scx_attrname VALUE 'ms_msg3',
                 attr4 TYPE scx_attrname VALUE 'ms_msg4',
               END OF no_date.

    DATA ms_msg1 TYPE string.
    DATA ms_msg2 TYPE string.
    DATA ms_msg3 TYPE string.
    DATA ms_msg4 TYPE string.

    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL
        ms_msg1   TYPE string OPTIONAL
        ms_msg2   TYPE string OPTIONAL
        ms_msg3   TYPE string OPTIONAL
        ms_msg4   TYPE string OPTIONAL.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcx_lab_56_no_date_dnavas IMPLEMENTATION.
  METHOD constructor ##ADT_SUPPRESS_GENERATION.

    super->constructor(
    previous = previous
    ).
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.

    me->ms_msg1 = ms_msg1.
    me->ms_msg2 = ms_msg2.
    me->ms_msg3 = ms_msg3.
    me->ms_msg4 = ms_msg4.

  ENDMETHOD.

ENDCLASS.
