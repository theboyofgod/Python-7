<<<<<<< HEAD
select 'DQ_NN_AMC_CUST_ACCOUNT_1', 'AMC_CUST_ACCOUNT.ETL_FILEID, AMC_CUST_ACCOUNT.ETL_BATCHID, AMC_CUST_ACCOUNT.EAP_AS_OF_DT, AMC_CUST_ACCOUNT.IMSNUMBER' pknames, AMC_CUST_ACCOUNT.ETL_FILEID pk1, AMC_CUST_ACCOUNT.ETL_BATCHID pk2, AMC_CUST_ACCOUNT.EAP_AS_OF_DT pk3, AMC_CUST_ACCOUNT.IMSNUMBER pk4, '-' pk5,'-' pk6, '-' pk7, '-' pk8, AMC_CUST_ACCOUNT.FIRMCODE errcol,         case (AMC_CUST_ACCOUNT.FIRMCODE is null or AMC_CUST_ACCOUNT.FIRMCODE = '') and 1=1 When True Then 1 Else 0 end NullChkResult, case (length(AMC_CUST_ACCOUNT.FIRMCODE) < 0 or length(AMC_CUST_ACCOUNT.FIRMCODE) > 2) and 1=1 When True Then 1 Else 0 end LenChkResult, case (AMC_CUST_ACCOUNT.FIRMCODE not in ('AAPX','AAVP','BKR','SBSH','CHAR','CMTA','CONF','CONS','CAVP','CRI','CXL','OPCT','DOC','DUMY','FACI','SUSP','FUSD','GVUP','GAVP','IAP','INST','INTB','INTA','SBAL','INTI','SHED','IBKR','LGP','MKTM','OPRP','PBSB','PBBK','PRIV','PROP','RHDG','REPO','COLL','PSYF','ZALL','HALL','SPLT','CUST','STEX','BUYN','RECL','SWPC','SWNG','SYN','TEMP','TEST')) When True Then 1 Else 0 end LovChkResult, -1 DataChkResult from AMC_CUST_ACCOUNT         where (AMC_CUST_ACCOUNT.FIRMCODE is not null and AMC_CUST_ACCOUNT.FIRMCODE != '')
select 'DQ_NN_AMC_CUST_ACCOUNT_2', 'AMC_CUST_ACCOUNT.ETL_FILEID, AMC_CUST_ACCOUNT.ETL_BATCHID, AMC_CUST_ACCOUNT.EAP_AS_OF_DT, AMC_CUST_ACCOUNT.IMSNUMBER' pknames, AMC_CUST_ACCOUNT.ETL_FILEID pk1, AMC_CUST_ACCOUNT.ETL_BATCHID pk2, AMC_CUST_ACCOUNT.EAP_AS_OF_DT pk3, AMC_CUST_ACCOUNT.IMSNUMBER pk4, '-' pk5,'-' pk6, '-' pk7, '-' pk8, AMC_CUST_ACCOUNT.GFCID errcol,         -1 NullChkResult, case (length(AMC_CUST_ACCOUNT.GFCID) < 0 or length(AMC_CUST_ACCOUNT.GFCID) > 3) and 1=1 When True Then 1 Else 0 end LenChkResult, case (AMC_CUST_ACCOUNT.GFCID not in ('AR','BF','DA','DC','DI','DW','EB','FC','FE','FF','FI','FR','IB','IC','II','PA','PB','PC','PF','PG','PH','PL','PN','PQ','PR','PS','PT','PW','PY','PZ','RO','RP','SB','SF','SI','WS','XB')) When True Then 1 Else 0 end LovChkResult, case (Not (AMC_CUST_ACCOUNT.GFCID is null or AMC_CUST_ACCOUNT.GFCID = '') and (GFCID like )) When True Then 1 Else 0 end DataChkResult from AMC_CUST_ACCOUNT         where (AMC_CUST_ACCOUNT.GFCID is not null and AMC_CUST_ACCOUNT.GFCID != '')
=======
select 'DQ_NN_AMC_CUST_ACCOUNT_1', 'AMC_CUST_ACCOUNT.ETL_FILEID, AMC_CUST_ACCOUNT.ETL_BATCHID, AMC_CUST_ACCOUNT.EAP_AS_OF_DT, AMC_CUST_ACCOUNT.IMSNUMBER' pknames, A.AMC_CUST_ACCOUNT.ETL_FILEID pk1, A.AMC_CUST_ACCOUNT.ETL_BATCHID pk2, A.AMC_CUST_ACCOUNT.EAP_AS_OF_DT pk3, A.AMC_CUST_ACCOUNT.IMSNUMBER pk4, '-' pk5, '-' pk6, '-' pk7, '-' pk8, A.AMC_CUST_ACCOUNT.FIRMCODE errcol,         case (A.AMC_CUST_ACCOUNT.FIRMCODE is null or A.AMC_CUST_ACCOUNT.FIRMCODE = '') and 1=1 When True Then 1 Else 0 end NullChkResult, case (length(A.AMC_CUST_ACCOUNT.FIRMCODE) < 0 or length(A.AMC_CUST_ACCOUNT.FIRMCODE) > 2) and 1=1 When True Then 1 Else 0 end LenChkResult, case (A.AMC_CUST_ACCOUNT.FIRMCODE not in ('AAPX','AAVP','BKR','SBSH','CHAR','CMTA','CONF','CONS','CAVP','CRI','CXL','OPCT','DOC','DUMY','FACI','SUSP','FUSD','GVUP','GAVP','IAP','INST','INTB','INTA','SBAL','INTI','SHED','IBKR','LGP','MKTM','OPRP','PBSB','PBBK','PRIV','PROP','RHDG','REPO','COLL','PSYF','ZALL','HALL','SPLT','CUST','STEX','BUYN','RECL','SWPC','SWNG','SYN','TEMP','TEST')) When True Then 1 Else 0 end LovChkResult, -1 DataChkResult from AMC_CUST_ACCOUNT A        where (A.AMC_CUST_ACCOUNT.FIRMCODE is not null and A.AMC_CUST_ACCOUNT.FIRMCODE != '')
select 'A.AMC_CUST_ACCOUNT.ETL_FILEID pk1, A.AMC_CUST_ACCOUNT.ETL_BATCHID pk2, A.AMC_CUST_ACCOUNT.EAP_AS_OF_DT pk3, A.AMC_CUST_ACCOUNT.IMSNUMBER pk4, '-' pk5,'-' pk6, '-' pk7, '-' pk8,count(*) DupChkResult from AMC_CUST_ACCOUNT where 1=1 GROUP BY ETL_FILEID, ETL_BATCHID, EAP_AS_OF_DT, IMSNUMBER HAVING COUNT(1)>1
select 'DQ_NN_AMC_CUST_ACCOUNT_2', 'AMC_CUST_ACCOUNT.ETL_FILEID, AMC_CUST_ACCOUNT.ETL_BATCHID, AMC_CUST_ACCOUNT.EAP_AS_OF_DT, AMC_CUST_ACCOUNT.IMSNUMBER' pknames, A.AMC_CUST_ACCOUNT.ETL_FILEID pk1, A.AMC_CUST_ACCOUNT.ETL_BATCHID pk2, A.AMC_CUST_ACCOUNT.EAP_AS_OF_DT pk3, A.AMC_CUST_ACCOUNT.IMSNUMBER pk4, '-' pk5, '-' pk6, '-' pk7, '-' pk8, A.AMC_CUST_ACCOUNT.GFCID errcol,         -1 NullChkResult, case (length(A.AMC_CUST_ACCOUNT.GFCID) < 0 or length(A.AMC_CUST_ACCOUNT.GFCID) > 3) and 1=1 When True Then 1 Else 0 end LenChkResult, case (A.AMC_CUST_ACCOUNT.GFCID not in ('AR','BF','DA','DC','DI','DW','EB','FC','FE','FF','FI','FR','IB','IC','II','PA','PB','PC','PF','PG','PH','PL','PN','PQ','PR','PS','PT','PW','PY','PZ','RO','RP','SB','SF','SI','WS','XB')) When True Then 1 Else 0 end LovChkResult, case (Not (AMC_CUST_ACCOUNT.GFCID is null or AMC_CUST_ACCOUNT.GFCID = '') and (GFCID like )) When True Then 1 Else 0 end DataChkResult from AMC_CUST_ACCOUNT A        where (A.AMC_CUST_ACCOUNT.GFCID is not null and A.AMC_CUST_ACCOUNT.GFCID != '')
select 'A.AMC_CUST_ACCOUNT.ETL_FILEID pk1, A.AMC_CUST_ACCOUNT.ETL_BATCHID pk2, A.AMC_CUST_ACCOUNT.EAP_AS_OF_DT pk3, A.AMC_CUST_ACCOUNT.IMSNUMBER pk4, '-' pk5,'-' pk6, '-' pk7, '-' pk8,count(*) DupChkResult from AMC_CUST_ACCOUNT where 1=1 GROUP BY ETL_FILEID, ETL_BATCHID, EAP_AS_OF_DT, IMSNUMBER HAVING COUNT(1)>1
>>>>>>> 1ee257bfcba75ec9f47aecb7144487ff4e7a9ccf