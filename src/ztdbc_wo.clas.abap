CLASS ztdbc_wo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_mfgorder_check_before_save .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDBC_WO IMPLEMENTATION.


  METHOD if_mfgorder_check_before_save~check_before_save.

  if   manufacturingorder-productionplant Is NOT INITIAL.
      append value #( messagetype = 'W'  messagetext = 'productionplant is not INITIAL'  ) to messages.

  ENDIF.

  ENDMETHOD.
ENDCLASS.
