CLASS zcl_lab_72_users_dnavas DEFINITION INHERITING FROM zcl_lab_70_observer_dnavas
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    data notificacion_user type string.
    METHODS: on_notificacion_articulo REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_72_users_dnavas IMPLEMENTATION.
  METHOD on_notificacion_articulo.
    me->notificacion_user = |Notificación para los Usuarios: { ev_titulo }| .
  ENDMETHOD.
ENDCLASS.
