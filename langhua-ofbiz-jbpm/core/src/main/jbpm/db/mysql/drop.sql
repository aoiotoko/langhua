alter table JBPM_ACTION drop foreign key FK_ACTION_EVENT;
alter table JBPM_ACTION drop foreign key FK_ACTION_EXPTHDL;
alter table JBPM_ACTION drop foreign key FK_ACTION_PROCDEF;
alter table JBPM_ACTION drop foreign key FK_CRTETIMERACT_TA;
alter table JBPM_ACTION drop foreign key FK_ACTION_ACTNDEL;
alter table JBPM_ACTION drop foreign key FK_ACTION_REFACT;
alter table JBPM_BYTEARRAY drop foreign key FK_BYTEARR_FILDEF;
alter table JBPM_BYTEBLOCK drop foreign key FK_BYTEBLOCK_FILE;
alter table JBPM_COMMENT drop foreign key FK_COMMENT_TOKEN;
alter table JBPM_COMMENT drop foreign key FK_COMMENT_TSK;
alter table JBPM_DECISIONCONDITIONS drop foreign key FK_DECCOND_DEC;
alter table JBPM_DELEGATION drop foreign key FK_DELEGATION_PRCD;
alter table JBPM_EVENT drop foreign key FK_EVENT_PROCDEF;
alter table JBPM_EVENT drop foreign key FK_EVENT_NODE;
alter table JBPM_EVENT drop foreign key FK_EVENT_TRANS;
alter table JBPM_EVENT drop foreign key FK_EVENT_TASK;
alter table JBPM_ID_GROUP drop foreign key FK_ID_GRP_PARENT;
alter table JBPM_ID_MEMBERSHIP drop foreign key FK_ID_MEMSHIP_GRP;
alter table JBPM_ID_MEMBERSHIP drop foreign key FK_ID_MEMSHIP_USR;
alter table JBPM_LOG drop foreign key FK_LOG_SOURCENODE;
alter table JBPM_LOG drop foreign key FK_LOG_TOKEN;
alter table JBPM_LOG drop foreign key FK_LOG_OLDBYTES;
alter table JBPM_LOG drop foreign key FK_LOG_NEWBYTES;
alter table JBPM_LOG drop foreign key FK_LOG_CHILDTOKEN;
alter table JBPM_LOG drop foreign key FK_LOG_DESTNODE;
alter table JBPM_LOG drop foreign key FK_LOG_TASKINST;
alter table JBPM_LOG drop foreign key FK_LOG_SWIMINST;
alter table JBPM_LOG drop foreign key FK_LOG_PARENT;
alter table JBPM_LOG drop foreign key FK_LOG_NODE;
alter table JBPM_LOG drop foreign key FK_LOG_ACTION;
alter table JBPM_LOG drop foreign key FK_LOG_VARINST;
alter table JBPM_LOG drop foreign key FK_LOG_TRANSITION;
alter table JBPM_MESSAGE drop foreign key FK_MSG_TOKEN;
alter table JBPM_MESSAGE drop foreign key FK_CMD_NODE;
alter table JBPM_MESSAGE drop foreign key FK_CMD_ACTION;
alter table JBPM_MESSAGE drop foreign key FK_CMD_TASKINST;
alter table JBPM_MODULEDEFINITION drop foreign key FK_TSKDEF_START;
alter table JBPM_MODULEDEFINITION drop foreign key FK_MODDEF_PROCDEF;
alter table JBPM_MODULEINSTANCE drop foreign key FK_TASKMGTINST_TMD;
alter table JBPM_MODULEINSTANCE drop foreign key FK_MODINST_PRCINST;
alter table JBPM_NODE drop foreign key FK_PROCST_SBPRCDEF;
alter table JBPM_NODE drop foreign key FK_NODE_PROCDEF;
alter table JBPM_NODE drop foreign key FK_NODE_ACTION;
alter table JBPM_NODE drop foreign key FK_DECISION_DELEG;
alter table JBPM_NODE drop foreign key FK_NODE_SUPERSTATE;
alter table JBPM_POOLEDACTOR drop foreign key FK_POOLEDACTOR_SLI;
alter table JBPM_PROCESSDEFINITION drop foreign key FK_PROCDEF_STRTSTA;
alter table JBPM_PROCESSINSTANCE drop foreign key FK_PROCIN_PROCDEF;
alter table JBPM_PROCESSINSTANCE drop foreign key FK_PROCIN_ROOTTKN;
alter table JBPM_PROCESSINSTANCE drop foreign key FK_PROCIN_SPROCTKN;
alter table JBPM_RUNTIMEACTION drop foreign key FK_RTACTN_PROCINST;
alter table JBPM_RUNTIMEACTION drop foreign key FK_RTACTN_ACTION;
alter table JBPM_SWIMLANE drop foreign key FK_SWL_ASSDEL;
alter table JBPM_SWIMLANE drop foreign key FK_SWL_TSKMGMTDEF;
alter table JBPM_SWIMLANEINSTANCE drop foreign key FK_SWIMLANEINST_TM;
alter table JBPM_SWIMLANEINSTANCE drop foreign key FK_SWIMLANEINST_SL;
alter table JBPM_TASK drop foreign key FK_TSK_TSKCTRL;
alter table JBPM_TASK drop foreign key FK_TASK_ASSDEL;
alter table JBPM_TASK drop foreign key FK_TASK_TASKNODE;
alter table JBPM_TASK drop foreign key FK_TASK_PROCDEF;
alter table JBPM_TASK drop foreign key FK_TASK_STARTST;
alter table JBPM_TASK drop foreign key FK_TASK_TASKMGTDEF;
alter table JBPM_TASK drop foreign key FK_TASK_SWIMLANE;
alter table JBPM_TASKACTORPOOL drop foreign key FK_TSKACTPOL_PLACT;
alter table JBPM_TASKACTORPOOL drop foreign key FK_TASKACTPL_TSKI;
alter table JBPM_TASKCONTROLLER drop foreign key FK_TSKCTRL_DELEG;
alter table JBPM_TASKINSTANCE drop foreign key FK_TASKINST_TMINST;
alter table JBPM_TASKINSTANCE drop foreign key FK_TASKINST_TOKEN;
alter table JBPM_TASKINSTANCE drop foreign key FK_TASKINST_SLINST;
alter table JBPM_TASKINSTANCE drop foreign key FK_TASKINST_TASK;
alter table JBPM_TIMER drop foreign key FK_TIMER_TOKEN;
alter table JBPM_TIMER drop foreign key FK_TIMER_PRINST;
alter table JBPM_TIMER drop foreign key FK_TIMER_ACTION;
alter table JBPM_TIMER drop foreign key FK_TIMER_TSKINST;
alter table JBPM_TOKEN drop foreign key FK_TOKEN_PARENT;
alter table JBPM_TOKEN drop foreign key FK_TOKEN_NODE;
alter table JBPM_TOKEN drop foreign key FK_TOKEN_PROCINST;
alter table JBPM_TOKEN drop foreign key FK_TOKEN_SUBPI;
alter table JBPM_TOKENVARIABLEMAP drop foreign key FK_TKVARMAP_CTXT;
alter table JBPM_TOKENVARIABLEMAP drop foreign key FK_TKVARMAP_TOKEN;
alter table JBPM_TRANSITION drop foreign key FK_TRANSITION_TO;
alter table JBPM_TRANSITION drop foreign key FK_TRANS_PROCDEF;
alter table JBPM_TRANSITION drop foreign key FK_TRANSITION_FROM;
alter table JBPM_VARIABLEACCESS drop foreign key FK_VARACC_TSKCTRL;
alter table JBPM_VARIABLEACCESS drop foreign key FK_VARACC_SCRIPT;
alter table JBPM_VARIABLEACCESS drop foreign key FK_VARACC_PROCST;
alter table JBPM_VARIABLEINSTANCE drop foreign key FK_VARINST_TK;
alter table JBPM_VARIABLEINSTANCE drop foreign key FK_VARINST_TKVARMP;
alter table JBPM_VARIABLEINSTANCE drop foreign key FK_VARINST_PRCINST;
alter table JBPM_VARIABLEINSTANCE drop foreign key FK_VAR_TSKINST;
alter table JBPM_VARIABLEINSTANCE drop foreign key FK_BYTEINST_ARRAY;
drop table if exists JBPM_ACTION;
drop table if exists JBPM_BYTEARRAY;
drop table if exists JBPM_BYTEBLOCK;
drop table if exists JBPM_COMMENT;
drop table if exists JBPM_DECISIONCONDITIONS;
drop table if exists JBPM_DELEGATION;
drop table if exists JBPM_EVENT;
drop table if exists JBPM_EXCEPTIONHANDLER;
drop table if exists JBPM_ID_GROUP;
drop table if exists JBPM_ID_MEMBERSHIP;
drop table if exists JBPM_ID_PERMISSIONS;
drop table if exists JBPM_ID_USER;
drop table if exists JBPM_LOG;
drop table if exists JBPM_MESSAGE;
drop table if exists JBPM_MODULEDEFINITION;
drop table if exists JBPM_MODULEINSTANCE;
drop table if exists JBPM_NODE;
drop table if exists JBPM_POOLEDACTOR;
drop table if exists JBPM_PROCESSDEFINITION;
drop table if exists JBPM_PROCESSINSTANCE;
drop table if exists JBPM_RUNTIMEACTION;
drop table if exists JBPM_SWIMLANE;
drop table if exists JBPM_SWIMLANEINSTANCE;
drop table if exists JBPM_TASK;
drop table if exists JBPM_TASKACTORPOOL;
drop table if exists JBPM_TASKCONTROLLER;
drop table if exists JBPM_TASKINSTANCE;
drop table if exists JBPM_TIMER;
drop table if exists JBPM_TOKEN;
drop table if exists JBPM_TOKENVARIABLEMAP;
drop table if exists JBPM_TRANSITION;
drop table if exists JBPM_VARIABLEACCESS;
drop table if exists JBPM_VARIABLEINSTANCE;
