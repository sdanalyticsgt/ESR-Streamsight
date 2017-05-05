#!/bin/ksh

pdp_success_rate_ib()
{
${SQLPLUS} -s dash/dash123@elixirdb << EOFEOF
set pages 0
set lines 1000
set trimspool on
set feedback off

prompt #2G PDP SUCCESS RATE (IB)
prompt
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),PDP_SUCCESS_RATE,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),PDP_SUCCESS_RATE,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),PDP_SUCCESS_RATE,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),PDP_SUCCESS_RATE,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),PDP_SUCCESS_RATE,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),PDP_SUCCESS_RATE,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),PDP_SUCCESS_RATE,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'IB'
and a.RAT (+) = '2G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'INBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #3G PDP SUCCESS RATE (IB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),PDP_SUCCESS_RATE,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),PDP_SUCCESS_RATE,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),PDP_SUCCESS_RATE,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),PDP_SUCCESS_RATE,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),PDP_SUCCESS_RATE,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),PDP_SUCCESS_RATE,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),PDP_SUCCESS_RATE,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'IB'
and a.RAT (+) = '3G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'INBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #4G PDP SUCCESS RATE (IB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),PDP_SUCCESS_RATE,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),PDP_SUCCESS_RATE,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),PDP_SUCCESS_RATE,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),PDP_SUCCESS_RATE,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),PDP_SUCCESS_RATE,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),PDP_SUCCESS_RATE,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),PDP_SUCCESS_RATE,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'IB'
and a.RAT (+) = '4G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'INBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt

exit;

EOFEOF
}

pdp_success_rate_ob()
{
${SQLPLUS} -s dash/dash123@elixirdb << EOFEOF
set pages 0
set lines 1000
set trimspool on
set feedback off

prompt #2G PDP SUCCESS RATE (OB)
prompt
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),PDP_SUCCESS_RATE,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),PDP_SUCCESS_RATE,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),PDP_SUCCESS_RATE,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),PDP_SUCCESS_RATE,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),PDP_SUCCESS_RATE,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),PDP_SUCCESS_RATE,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),PDP_SUCCESS_RATE,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'OB'
and a.RAT (+) = '2G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'OUTBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #3G PDP SUCCESS RATE (OB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),PDP_SUCCESS_RATE,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),PDP_SUCCESS_RATE,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),PDP_SUCCESS_RATE,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),PDP_SUCCESS_RATE,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),PDP_SUCCESS_RATE,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),PDP_SUCCESS_RATE,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),PDP_SUCCESS_RATE,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'OB'
and a.RAT (+) = '3G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'OUTBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #4G PDP SUCCESS RATE (OB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),PDP_SUCCESS_RATE,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),PDP_SUCCESS_RATE,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),PDP_SUCCESS_RATE,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),PDP_SUCCESS_RATE,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),PDP_SUCCESS_RATE,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),PDP_SUCCESS_RATE,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),PDP_SUCCESS_RATE,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'OB'
and a.RAT (+) = '4G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'OUTBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;

exit;

EOFEOF
}


dl_speed_ib()
{
${SQLPLUS} -s dash/dash123@elixirdb << EOFEOF
set pages 0
set lines 1000
set trimspool on

prompt #2G DL SPEED (IB)
prompt
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),TPUT_DOWN,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),TPUT_DOWN,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),TPUT_DOWN,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),TPUT_DOWN,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),TPUT_DOWN,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),TPUT_DOWN,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),TPUT_DOWN,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'IB'
and a.RAT (+) = '2G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'INBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #3G DL SPEED (IB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),TPUT_DOWN,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),TPUT_DOWN,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),TPUT_DOWN,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),TPUT_DOWN,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),TPUT_DOWN,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),TPUT_DOWN,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),TPUT_DOWN,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'IB'
and a.RAT (+) = '3G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'INBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #4G DL SPEED (IB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),TPUT_DOWN,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),TPUT_DOWN,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),TPUT_DOWN,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),TPUT_DOWN,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),TPUT_DOWN,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),TPUT_DOWN,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),TPUT_DOWN,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'IB'
and a.RAT (+) = '4G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'INBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt

exit;

EOFEOF
}


dl_speed_ob()
{
${SQLPLUS} -s dash/dash123@elixirdb << EOFEOF
set pages 0
set lines 1000
set trimspool on

prompt #2G DL SPEED (OB)
prompt
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),TPUT_DOWN,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),TPUT_DOWN,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),TPUT_DOWN,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),TPUT_DOWN,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),TPUT_DOWN,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),TPUT_DOWN,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),TPUT_DOWN,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'OB'
and a.RAT (+) = '2G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'OUTBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #3G DL SPEED (OB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),TPUT_DOWN,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),TPUT_DOWN,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),TPUT_DOWN,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),TPUT_DOWN,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),TPUT_DOWN,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),TPUT_DOWN,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),TPUT_DOWN,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'OB'
and a.RAT (+) = '3G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'OUTBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #4G DL SPEED (OB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),TPUT_DOWN,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),TPUT_DOWN,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),TPUT_DOWN,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),TPUT_DOWN,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),TPUT_DOWN,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),TPUT_DOWN,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),TPUT_DOWN,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'OB'
and a.RAT (+) = '4G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'OUTBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;


exit;

EOFEOF
}



latency_ib()
{
${SQLPLUS} -s dash/dash123@elixirdb << EOFEOF
set pages 0
set lines 1000
set trimspool on

prompt #2G LATENCY (IB)
prompt
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),RTT,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),RTT,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),RTT,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),RTT,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),RTT,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),RTT,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),RTT,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'IB'
and a.RAT (+) = '2G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'INBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #3G LATENCY (IB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),RTT,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),RTT,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),RTT,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),RTT,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),RTT,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),RTT,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),RTT,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'IB'
and a.RAT (+) = '3G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'INBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #4G LATENCY (IB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),RTT,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),RTT,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),RTT,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),RTT,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),RTT,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),RTT,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),RTT,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'IB'
and a.RAT (+) = '4G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'INBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt

exit;

EOFEOF
}

latency_ob()
{
${SQLPLUS} -s dash/dash123@elixirdb << EOFEOF
set pages 0
set lines 1000
set trimspool on

prompt #2G LATENCY (OB)
prompt
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),RTT,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),RTT,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),RTT,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),RTT,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),RTT,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),RTT,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),RTT,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'OB'
and a.RAT (+) = '2G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'OUTBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #3G LATENCY (OB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),RTT,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),RTT,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),RTT,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),RTT,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),RTT,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),RTT,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),RTT,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'OB'
and a.RAT (+) = '3G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'OUTBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #4G LATENCY (OB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),RTT,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),RTT,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),RTT,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),RTT,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),RTT,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),RTT,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),RTT,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'OB'
and a.RAT (+) = '4G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'OUTBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;

exit;

EOFEOF
}


http_sucess_rate_ib()
{
${SQLPLUS} -s dash/dash123@elixirdb << EOFEOF
set pages 0
set lines 1000
set trimspool on

prompt #2G HTTP SUCCESS RATE (IB)
prompt
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),HTTP_SUCCESS_RATE,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),HTTP_SUCCESS_RATE,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),HTTP_SUCCESS_RATE,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),HTTP_SUCCESS_RATE,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),HTTP_SUCCESS_RATE,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),HTTP_SUCCESS_RATE,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),HTTP_SUCCESS_RATE,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'IB'
and a.RAT (+) = '2G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'INBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #3G HTTP SUCCESS RATE (IB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),HTTP_SUCCESS_RATE,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),HTTP_SUCCESS_RATE,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),HTTP_SUCCESS_RATE,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),HTTP_SUCCESS_RATE,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),HTTP_SUCCESS_RATE,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),HTTP_SUCCESS_RATE,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),HTTP_SUCCESS_RATE,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'IB'
and a.RAT (+) = '3G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'INBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #4G HTTP SUCCESS RATE (IB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),HTTP_SUCCESS_RATE,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),HTTP_SUCCESS_RATE,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),HTTP_SUCCESS_RATE,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),HTTP_SUCCESS_RATE,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),HTTP_SUCCESS_RATE,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),HTTP_SUCCESS_RATE,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),HTTP_SUCCESS_RATE,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'IB'
and a.RAT (+) = '4G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'INBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt

exit;

EOFEOF
}

http_sucess_rate_ob()
{
${SQLPLUS} -s dash/dash123@elixirdb << EOFEOF
set pages 0
set lines 1000
set trimspool on

prompt #2G HTTP SUCCESS RATE (OB)
prompt
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),HTTP_SUCCESS_RATE,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),HTTP_SUCCESS_RATE,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),HTTP_SUCCESS_RATE,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),HTTP_SUCCESS_RATE,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),HTTP_SUCCESS_RATE,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),HTTP_SUCCESS_RATE,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),HTTP_SUCCESS_RATE,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'OB'
and a.RAT (+) = '2G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'OUTBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #3G HTTP SUCCESS RATE (OB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),HTTP_SUCCESS_RATE,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),HTTP_SUCCESS_RATE,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),HTTP_SUCCESS_RATE,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),HTTP_SUCCESS_RATE,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),HTTP_SUCCESS_RATE,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),HTTP_SUCCESS_RATE,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),HTTP_SUCCESS_RATE,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'OB'
and a.RAT (+) = '3G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'OUTBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;
prompt
prompt #4G HTTP SUCCESS RATE (OB)
select 'RPs,Country,Region,'||trunc(sysdate-7)||','||trunc(sysdate-6)||','||trunc(sysdate-5)||','||trunc(sysdate-4)||','||trunc(sysdate-3)||','||trunc(sysdate-2)||','||trunc(sysdate-1) from dual;
select OPERATOR_NAME||','||COUNTRY||','||region||','||sum(t1)||','||sum(t2)||','||sum(t3)||','||sum(t4)||','||sum(t5)||','||sum(t6)||','||sum(t7) from (
select b.OPERATOR_NAME, b.COUNTRY, b.REGION, decode(trunc(timestamp),trunc(sysdate-7),HTTP_SUCCESS_RATE,NULL) as t1,
decode(trunc(timestamp),trunc(sysdate-6),HTTP_SUCCESS_RATE,NULL) as t2, decode(trunc(timestamp),trunc(sysdate-5),HTTP_SUCCESS_RATE,NULL) as t3, decode(trunc(timestamp),trunc(sysdate-4),HTTP_SUCCESS_RATE,NULL) as t4,
decode(trunc(timestamp),trunc(sysdate-3),HTTP_SUCCESS_RATE,NULL) as t5, decode(trunc(timestamp),trunc(sysdate-2),HTTP_SUCCESS_RATE,NULL) as t6, decode(trunc(timestamp),trunc(sysdate-1),HTTP_SUCCESS_RATE,NULL) as t7
from roaming_data_stats a, roaming_partners_top30 b
where a.CATEGORY (+) = 'OB'
and a.RAT (+) = '4G'
and a.timestamp (+) >= trunc(sysdate-7)
and a.timestamp (+) < trunc(sysdate)
and a.OPERATOR_NAME (+) = b.OPERATOR_NAME
and a.COUNTRY (+) = b.COUNTRY
and b.DIRECTION = 'OUTBOUND')
group by OPERATOR_NAME, COUNTRY, REGION
order by 1;

exit;

EOFEOF
}



xday()
{
sqlplus -s dash/dash123@elixirdb << EOFEOF
set pages 0
set lines 1000
set trimspool on

select 'XDAY:'||max(timestamp) from roaming_data_stats;
exit;

EOFEOF
}


#MAIN
PROFILE=/export/home/oracle/.profile
. $PROFILE

BASE_DIR=/apps/DASHBOARD/REPORTS
CONFIG=${BASE_DIR}/config
BIN=${BASE_DIR}/bin
ALARM=${BASE_DIR}/alarm
LOG=${BASE_DIR}/logs
DATA=${BASE_DIR}/data
SQLLDR=/export/home/oracle/product/11g/bin/sqlldr
SQLPLUS=/export/home/oracle/product/11g/bin/sqlplus
ouser=dash
opass=dash123

BODY=${BASE_DIR}/config/roaming_data_body.txt
EMAIL_LIST=${BASE_DIR}/config/roaming_data_list.txt
SENDER=elixir@globe.com.ph
HEADER=${BASE_DIR}/config/roaming_data_header.cfg
TRAILER=${BASE_DIR}/config/roaming_data_trailer.cfg
REPORT=${BASE_DIR}/REPORT_FILES/ROAMING
deyt=`date "+%Y%m%d"`
dayno=`xday | grep XDAY | cut -f 2 -d :`
SUBJECT=`echo "Data Roaming Report as of ${dayno}"`
ATTACH1=${REPORT}/IB_roaming_data_report_${dayno}.tar.gz
ATTACH2=${REPORT}/OB_roaming_data_report_${dayno}.tar.gz

echo "`date` Processing..."
pdp_success_rate_ib > ${REPORT}/IB_pdp_success_rate_report_${dayno}.csv
dl_speed_ib> ${REPORT}/IB_dl_speed_report_${dayno}.csv
latency_ib > ${REPORT}/IB_latency_report_${dayno}.csv
http_sucess_rate_ib > ${REPORT}/IB_http_success_rate_${dayno}.csv
pdp_success_rate_ob > ${REPORT}/OB_pdp_success_rate_report_${dayno}.csv
dl_speed_ob> ${REPORT}/OB_dl_speed_report_${dayno}.csv
latency_ob > ${REPORT}/OB_latency_report_${dayno}.csv
http_sucess_rate_ob > ${REPORT}/OB_http_success_rate_${dayno}.csv



cd ${REPORT}
tar cvf IB_roaming_data_report_${dayno}.tar IB_pdp_success_rate_report_${dayno}.csv IB_dl_speed_report_${dayno}.csv IB_latency_report_${dayno}.csv IB_http_success_rate_${dayno}.csv
tar cvf OB_roaming_data_report_${dayno}.tar OB_pdp_success_rate_report_${dayno}.csv OB_dl_speed_report_${dayno}.csv OB_latency_report_${dayno}.csv OB_http_success_rate_${dayno}.csv

gzip -f ${REPORT}/IB_roaming_data_report_${dayno}.tar
gzip -f ${REPORT}/OB_roaming_data_report_${dayno}.tar

cat ${HEADER} ${TRAILER} > ${BODY}

#EMAIL DATA

#DEBUG
echo "/apps/EMAIL/bin/email.ksh ${SENDER} ${EMAIL_LIST} ${BODY} "${SUBJECT}" ${ATTACH1} ${ATTACH2}"


/apps/EMAIL/bin/email2.ksh ${SENDER} ${EMAIL_LIST} ${BODY} "${SUBJECT}" ${ATTACH1} ${ATTACH2}

echo "`date` Done..."

#REMOVE INITIAL REPORT FILES
rm -f ${REPORT}/?B_pdp_success_rate_report_${dayno}.csv ${REPORT}/?B_dl_speed_report_${dayno}.csv ${REPORT}/?B_latency_report_${dayno}.csv ${REPORT}/?B_http_success_rate_${dayno}.csv

#END PROGRAM
