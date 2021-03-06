%macro rmcr_csb_insert_level_master;

/* i18nOK:BEGIN */
proc sql;
insert into &lib_apdm..LEVEL_MASTER (

LEVEL_SK ,MASTER_SOURCE_TABLE_SK, SUBSET_RK_TABLE_NM, SUBSET_SK_TABLE_NM, DATE_FOR_AVG_CALC_COLUMN_SK, AVAILABLE_FOR_PROJECT_DFN_FLG ,LEVEL_CD, ACTIVE_FLG, CREATED_DTTM ,CREATED_BY_USER ,LAST_PROCESSED_DTTM ,LAST_PROCESSED_BY_USER ,
LEVEL_DESC ,LEVEL_SHORT_NM, LEVEL_KEY_COLUMN_NM, LEVEL_TYPE_SK  
)
VALUES( 3,67,"I_APP_RK","I_APP_SK",. ,"Y", "P", "Y", "%sysfunc(datetime(),DATETIME.)"dt, "&sysuserid", "%sysfunc(datetime(),DATETIME.)"dt, "&sysuserid", 
"%sysfunc(sasmsg(work.rmcr_message_dtl_banking,LEVEL_MASTER.LEVEL_DS1.1, noquote))","%sysfunc(sasmsg(work.rmcr_message_dtl_banking,LEVEL_MASTER.LEVEL_SM1.1, noquote))",
"APPLICATION_RK", 1)

VALUES( 4,23,"I_CRD_RK","I_CRD_SK",. ,"Y", "D","Y", "%sysfunc(datetime(),DATETIME.)"dt, "&sysuserid", "%sysfunc(datetime(),DATETIME.)"dt, "&sysuserid", 
"%sysfunc(sasmsg(work.rmcr_message_dtl_banking,LEVEL_MASTER.LEVEL_DS2.1, noquote))","%sysfunc(sasmsg(work.rmcr_message_dtl_banking,LEVEL_MASTER.LEVEL_SM2.1, noquote))",
"CREDIT_FACILITY_RK", 2)

VALUES( 5,63,"I_CUS_RK","I_CUS_SK",2886 ,"Y", "C","Y", "%sysfunc(datetime(),DATETIME.)"dt, "&sysuserid", "%sysfunc(datetime(),DATETIME.)"dt, "&sysuserid", 
"%sysfunc(sasmsg(work.rmcr_message_dtl_banking,LEVEL_MASTER.LEVEL_DS3.1, noquote))","%sysfunc(sasmsg(work.rmcr_message_dtl_banking,LEVEL_MASTER.LEVEL_SM3.1, noquote))",
"CUSTOMER_RK", 2)

VALUES( 7,62,"I_ACC_RK","I_ACC_SK", 2880,"Y", "B","Y", "%sysfunc(datetime(),DATETIME.)"dt, "&sysuserid", "%sysfunc(datetime(),DATETIME.)"dt, "&sysuserid", 
"%sysfunc(sasmsg(work.rmcr_message_dtl_banking,LEVEL_MASTER.LEVEL_DS5.1, noquote))","%sysfunc(sasmsg(work.rmcr_message_dtl_banking,LEVEL_MASTER.LEVEL_SM5.1, noquote))",
"ACCOUNT_RK", 2)

VALUES( 8,67,"I_APP_RK","I_APP_SK",. ,"Y", "Q", "Y","%sysfunc(datetime(),DATETIME.)"dt, "&sysuserid", "%sysfunc(datetime(),DATETIME.)"dt, "&sysuserid", 
"%sysfunc(sasmsg(work.rmcr_message_dtl_banking,LEVEL_MASTER.LEVEL_DS6.1, noquote))","%sysfunc(sasmsg(work.rmcr_message_dtl_banking,LEVEL_MASTER.LEVEL_SM6.1, noquote))",
"APPLICATION_RK", 1)

;
quit;

/* Updating Required field for backtesting */

proc sql;
update &lib_apdm..LEVEL_MASTER 
set accptd_applctn_idntfctn_macro_nm='csbmva_get_subset_appl_list'
where level_sk in (3,8); 
quit;

/* i18nOK:END */

%mend rmcr_csb_insert_level_master;