CREATE TABLE &LIBREF..ACCOUNT_DEFAULT_DIM (

     ACCOUNT_RK           NUMERIC(10) FORMAT=&FMTRK INFORMAT=&FMTRK label='_RKorSK',

     VALID_START_DTTM     DATE NOT NULL FORMAT=&DTTMFMT INFORMAT=&DTTMFMT label='_DTTM',

     ACCOUNT_STATUS_CD    VARCHAR(3) label='_CD',

     CREDIT_FACILITY_RK   NUMERIC(10) NOT NULL FORMAT=&FMTRK INFORMAT=&FMTRK label='_RKorSK',

     CUSTOMER_RK          NUMERIC(10) NOT NULL FORMAT=&FMTRK INFORMAT=&FMTRK label='_RKorSK',

     VALID_END_DTTM       DATE NOT NULL FORMAT=&DTTMFMT INFORMAT=&DTTMFMT label='_DTTM',

     DEFAULT_DT           DATE FORMAT=&DTTMFMT INFORMAT=&DTTMFMT label='_DT',

     DEFAULT_EVENT_RK     NUMERIC(10) FORMAT=&FMTRK INFORMAT=&FMTRK label='_RKorSK',

     DEFAULT_STATUS_CD    VARCHAR(3) label='_CD',

     PROCESSED_DTTM       DATE FORMAT=&DTTMFMT INFORMAT=&DTTMFMT label='_DTTM',

     OPEN_DT              DATE FORMAT=&DTTMFMT INFORMAT=&DTTMFMT label='_DT',

     ACCOUNT_TYPE_CD      VARCHAR(3) label='_CD',

     INDIVIDUAL_ORGANIZATION_CD VARCHAR(3) label='_CD',

     CONSTRAINT PRIM_KEY PRIMARY KEY (ACCOUNT_RK, VALID_START_DTTM)

);


