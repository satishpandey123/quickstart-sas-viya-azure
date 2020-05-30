CREATE TABLE &LIBREF..ACCOUNT_TRANSACTION_DETAIL (
     ACCOUNT_RK           NUMERIC(10) FORMAT=&FMTRK INFORMAT=&FMTRK label='_RKorSK',
     TRANS_TYPE_CD        VARCHAR(3) label='_CD',
     CHANNEL_TYPE_CD      VARCHAR(3) label='_CD',
     MEDIUM_CD            VARCHAR(3) label='_CD',
     VALID_START_DTTM     DATE NOT NULL FORMAT=&DTTMFMT INFORMAT=&DTTMFMT label='_DTTM',
     CUSTOMER_RK          NUMERIC(10) FORMAT=&FMTRK INFORMAT=&FMTRK label='Executing Customer Key',
     LAST_TRANS_AMT       NUMERIC(18,5) FORMAT=NLNUM18.5 INFORMAT=NLNUM18.5 label='_AMT',
     LAST_TRANS_DTTM      DATE FORMAT=&DTTMFMT INFORMAT=&DTTMFMT label='_DTTM',
     VALID_END_DTTM       DATE NOT NULL FORMAT=&DTTMFMT INFORMAT=&DTTMFMT label='_DTTM',
     CREATED_BY           VARCHAR(20) label='CREATED_BY',
     CREATED_DTTM         DATE FORMAT=&DTTMFMT INFORMAT=&DTTMFMT label='_DTTM',
     PROCESSED_DTTM       DATE FORMAT=&DTTMFMT INFORMAT=&DTTMFMT label='_DTTM'
);
