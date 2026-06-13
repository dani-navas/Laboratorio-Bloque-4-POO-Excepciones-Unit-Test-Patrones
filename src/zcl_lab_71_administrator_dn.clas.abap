CLASS zcl_lab_71_administrator_dn DEFINITION INHERITING FROM zcl_lab_70_observer_dnavas
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    data notificacion_admin type string.

    METHODS: on_notificacion_articulo REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_71_administrator_dn IMPLEMENTATION.
  METHOD on_notificacion_articulo.
    me->notificacion_admin = |Notificación para los Administradores: { ev_titulo }| .
  ENDMETHOD.
ENDCLASS.
