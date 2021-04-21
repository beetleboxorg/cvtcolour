//File Automatically generated by SystemC Netlister Time
#include "zcu104_base_sci.h"
zcu104_base_sci::zcu104_base_sci(const sc_module_name& module_name) : xsc::utils::xsc_sim_conn_base(module_name) 
{
	//Exported sockets Instantiation
	//Add TLM Parameters
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_auto_cc_0","M_AXI_TLM_MODE","zcu104_base_auto_ds_0","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_auto_cc_0","M_AXI_TLM_MODE","zcu104_base_auto_ds_0","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_auto_ds_0","M_AXI_TLM_MODE","zcu104_base_m01_regslice_3","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_auto_ds_0","M_AXI_TLM_MODE","zcu104_base_m01_regslice_3","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_xbar_2","M01_AXI_TLM_MODE","zcu104_base_auto_cc_0","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_xbar_2","M01_AXI_TLM_MODE","zcu104_base_auto_cc_0","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_auto_cc_1","M_AXI_TLM_MODE","zcu104_base_auto_pc_1","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_auto_cc_1","M_AXI_TLM_MODE","zcu104_base_auto_pc_1","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_auto_pc_1","M_AXI_TLM_MODE","zcu104_base_m01_regslice_4","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_auto_pc_1","M_AXI_TLM_MODE","zcu104_base_m01_regslice_4","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_auto_cc_2","M_AXI_TLM_MODE","zcu104_base_m02_regslice_0","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_auto_cc_2","M_AXI_TLM_MODE","zcu104_base_m02_regslice_0","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_xbar_0","M00_AXI_TLM_MODE","zcu104_base_auto_pc_0","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_xbar_0","M00_AXI_TLM_MODE","zcu104_base_auto_pc_0","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_xbar_0","M01_AXI_TLM_MODE","zcu104_base_auto_cc_1","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_xbar_0","M01_AXI_TLM_MODE","zcu104_base_auto_cc_1","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_xbar_0","M02_AXI_TLM_MODE","zcu104_base_auto_cc_2","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_xbar_0","M02_AXI_TLM_MODE","zcu104_base_auto_cc_2","S_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_dpa_mon0_0_0","TRACE_OUT_0_TLM_MODE","zcu104_base_dpa_hub_0","TRACE_IN_0_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_dpa_mon0_0_0","TRACE_OUT_1_TLM_MODE","zcu104_base_dpa_hub_0","TRACE_IN_1_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_dpa_mon0_1_0","TRACE_OUT_0_TLM_MODE","zcu104_base_dpa_hub_0","TRACE_IN_2_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_dpa_mon0_1_0","TRACE_OUT_1_TLM_MODE","zcu104_base_dpa_hub_0","TRACE_IN_3_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_dpa_mon1_0_0","TRACE_OUT_0_TLM_MODE","zcu104_base_dpa_hub_0","TRACE_IN_4_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_dpa_mon1_0_0","TRACE_OUT_1_TLM_MODE","zcu104_base_dpa_hub_0","TRACE_IN_5_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_dpa_mon1_1_0","TRACE_OUT_0_TLM_MODE","zcu104_base_dpa_hub_0","TRACE_IN_6_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_dpa_mon1_1_0","TRACE_OUT_1_TLM_MODE","zcu104_base_dpa_hub_0","TRACE_IN_7_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_auto_us_0","M_AXI_TLM_MODE","zcu104_base_ps_e_0","S_AXI_HP3_FPD_tlm_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_auto_us_0","M_AXI_TLM_MODE","zcu104_base_ps_e_0","S_AXI_HP3_FPD_tlm_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_m01_regslice_3","M_AXI_TLM_MODE","zcu104_base_dpa_hub_0","S_AXIMM_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_m01_regslice_3","M_AXI_TLM_MODE","zcu104_base_dpa_hub_0","S_AXIMM_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_ps_e_0","M_AXI_HPM0_LPD_tlm_MODE","zcu104_base_xbar_0","S00_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_ps_e_0","M_AXI_HPM0_LPD_tlm_MODE","zcu104_base_xbar_0","S00_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_ps_e_0","M_AXI_HPM0_FPD_tlm_MODE","zcu104_base_xbar_2","S00_AXI_TLM_MODE",1);
	xsc::utils::xsc_sim_manager::addInstanceConnParameters("zcu104_base_ps_e_0","M_AXI_HPM0_FPD_tlm_MODE","zcu104_base_xbar_2","S00_AXI_TLM_MODE",1);
	
	xsc::utils::xsc_sim_manager::addInstance("zcu104_base_sci", this);
}
zcu104_base_sci::~zcu104_base_sci()
{
}
void zcu104_base_sci::initConnModule() {

}

void zcu104_base_sci::before_end_of_elaboration() {
	
	zcu104_base_auto_cc_0_sc*  inst_0=dynamic_cast<zcu104_base_auto_cc_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_cc_0"));
	zcu104_base_auto_ds_0_sc*  inst_1=dynamic_cast<zcu104_base_auto_ds_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_ds_0"));
	xtlm_aximm_transaction_logger* log_inst_0 = new xtlm_aximm_transaction_logger("xtlm_aximm_transaction_logger_0");
	log_inst_0->setProxyRef(inst_0, inst_1, "masterSocket_0", "slaveSocket_0", log_inst_0->m_transactionLogger);
	
	if(inst_0==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_cc_0_sc"<<std::endl;
	}
	if(inst_1==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_ds_0_sc"<<std::endl;
	}
	
	if (inst_0!=NULL && inst_1!=NULL) {
		inst_0->M_INITIATOR_rd_socket->bind(*(log_inst_0->tar_rd_skt));
		log_inst_0->init_rd_skt->bind(*(inst_1->target_rd_socket));
	}
	
	zcu104_base_auto_cc_0_sc*  inst_4=dynamic_cast<zcu104_base_auto_cc_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_cc_0"));
	zcu104_base_auto_ds_0_sc*  inst_5=dynamic_cast<zcu104_base_auto_ds_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_ds_0"));
	
	if(inst_4==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_cc_0_sc"<<std::endl;
	}
	if(inst_5==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_ds_0_sc"<<std::endl;
	}
	
	if (inst_4!=NULL && inst_5!=NULL) {
		inst_4->M_INITIATOR_wr_socket->bind(*(log_inst_0->tar_wr_skt));
		log_inst_0->init_wr_skt->bind(*(inst_5->target_wr_socket));
	}
	
	zcu104_base_auto_ds_0_sc*  inst_8=dynamic_cast<zcu104_base_auto_ds_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_ds_0"));
	zcu104_base_m01_regslice_3_sc*  inst_9=dynamic_cast<zcu104_base_m01_regslice_3_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_m01_regslice_3"));
	xtlm_aximm_transaction_logger* log_inst_1 = new xtlm_aximm_transaction_logger("xtlm_aximm_transaction_logger_1");
	log_inst_1->setProxyRef(inst_8, inst_9, "masterSocket_1", "slaveSocket_1", log_inst_1->m_transactionLogger);
	
	if(inst_8==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_ds_0_sc"<<std::endl;
	}
	if(inst_9==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_m01_regslice_3_sc"<<std::endl;
	}
	
	if (inst_8!=NULL && inst_9!=NULL) {
		inst_8->initiator_rd_socket->bind(*(log_inst_1->tar_rd_skt));
		log_inst_1->init_rd_skt->bind(*(inst_9->S_TARGET_rd_socket));
	}
	
	zcu104_base_auto_ds_0_sc*  inst_12=dynamic_cast<zcu104_base_auto_ds_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_ds_0"));
	zcu104_base_m01_regslice_3_sc*  inst_13=dynamic_cast<zcu104_base_m01_regslice_3_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_m01_regslice_3"));
	
	if(inst_12==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_ds_0_sc"<<std::endl;
	}
	if(inst_13==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_m01_regslice_3_sc"<<std::endl;
	}
	
	if (inst_12!=NULL && inst_13!=NULL) {
		inst_12->initiator_wr_socket->bind(*(log_inst_1->tar_wr_skt));
		log_inst_1->init_wr_skt->bind(*(inst_13->S_TARGET_wr_socket));
	}
	
	zcu104_base_xbar_2_sc*  inst_16=dynamic_cast<zcu104_base_xbar_2_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_xbar_2"));
	zcu104_base_auto_cc_0_sc*  inst_17=dynamic_cast<zcu104_base_auto_cc_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_cc_0"));
	xtlm_aximm_transaction_logger* log_inst_2 = new xtlm_aximm_transaction_logger("xtlm_aximm_transaction_logger_2");
	log_inst_2->setProxyRef(inst_16, inst_17, "masterSocket_2", "slaveSocket_2", log_inst_2->m_transactionLogger);
	
	if(inst_16==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_xbar_2_sc"<<std::endl;
	}
	if(inst_17==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_cc_0_sc"<<std::endl;
	}
	
	if (inst_16!=NULL && inst_17!=NULL) {
		inst_16->initiator_1_rd_socket->bind(*(log_inst_2->tar_rd_skt));
		log_inst_2->init_rd_skt->bind(*(inst_17->S_TARGET_rd_socket));
	}
	
	zcu104_base_xbar_2_sc*  inst_20=dynamic_cast<zcu104_base_xbar_2_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_xbar_2"));
	zcu104_base_auto_cc_0_sc*  inst_21=dynamic_cast<zcu104_base_auto_cc_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_cc_0"));
	
	if(inst_20==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_xbar_2_sc"<<std::endl;
	}
	if(inst_21==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_cc_0_sc"<<std::endl;
	}
	
	if (inst_20!=NULL && inst_21!=NULL) {
		inst_20->initiator_1_wr_socket->bind(*(log_inst_2->tar_wr_skt));
		log_inst_2->init_wr_skt->bind(*(inst_21->S_TARGET_wr_socket));
	}
	
	zcu104_base_auto_cc_1_sc*  inst_24=dynamic_cast<zcu104_base_auto_cc_1_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_cc_1"));
	zcu104_base_auto_pc_1_sc*  inst_25=dynamic_cast<zcu104_base_auto_pc_1_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_pc_1"));
	xtlm_aximm_transaction_logger* log_inst_3 = new xtlm_aximm_transaction_logger("xtlm_aximm_transaction_logger_3");
	log_inst_3->setProxyRef(inst_24, inst_25, "masterSocket_3", "slaveSocket_3", log_inst_3->m_transactionLogger);
	
	if(inst_24==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_cc_1_sc"<<std::endl;
	}
	if(inst_25==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_pc_1_sc"<<std::endl;
	}
	
	if (inst_24!=NULL && inst_25!=NULL) {
		inst_24->M_INITIATOR_rd_socket->bind(*(log_inst_3->tar_rd_skt));
		log_inst_3->init_rd_skt->bind(*(inst_25->target_rd_socket));
	}
	
	zcu104_base_auto_cc_1_sc*  inst_28=dynamic_cast<zcu104_base_auto_cc_1_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_cc_1"));
	zcu104_base_auto_pc_1_sc*  inst_29=dynamic_cast<zcu104_base_auto_pc_1_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_pc_1"));
	
	if(inst_28==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_cc_1_sc"<<std::endl;
	}
	if(inst_29==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_pc_1_sc"<<std::endl;
	}
	
	if (inst_28!=NULL && inst_29!=NULL) {
		inst_28->M_INITIATOR_wr_socket->bind(*(log_inst_3->tar_wr_skt));
		log_inst_3->init_wr_skt->bind(*(inst_29->target_wr_socket));
	}
	
	zcu104_base_auto_pc_1_sc*  inst_32=dynamic_cast<zcu104_base_auto_pc_1_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_pc_1"));
	zcu104_base_m01_regslice_4_sc*  inst_33=dynamic_cast<zcu104_base_m01_regslice_4_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_m01_regslice_4"));
	xtlm_aximm_transaction_logger* log_inst_4 = new xtlm_aximm_transaction_logger("xtlm_aximm_transaction_logger_4");
	log_inst_4->setProxyRef(inst_32, inst_33, "masterSocket_4", "slaveSocket_4", log_inst_4->m_transactionLogger);
	
	if(inst_32==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_pc_1_sc"<<std::endl;
	}
	if(inst_33==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_m01_regslice_4_sc"<<std::endl;
	}
	
	if (inst_32!=NULL && inst_33!=NULL) {
		inst_32->initiator_rd_socket->bind(*(log_inst_4->tar_rd_skt));
		log_inst_4->init_rd_skt->bind(*(inst_33->S_TARGET_rd_socket));
	}
	
	zcu104_base_auto_pc_1_sc*  inst_36=dynamic_cast<zcu104_base_auto_pc_1_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_pc_1"));
	zcu104_base_m01_regslice_4_sc*  inst_37=dynamic_cast<zcu104_base_m01_regslice_4_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_m01_regslice_4"));
	
	if(inst_36==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_pc_1_sc"<<std::endl;
	}
	if(inst_37==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_m01_regslice_4_sc"<<std::endl;
	}
	
	if (inst_36!=NULL && inst_37!=NULL) {
		inst_36->initiator_wr_socket->bind(*(log_inst_4->tar_wr_skt));
		log_inst_4->init_wr_skt->bind(*(inst_37->S_TARGET_wr_socket));
	}
	
	zcu104_base_auto_cc_2_sc*  inst_40=dynamic_cast<zcu104_base_auto_cc_2_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_cc_2"));
	zcu104_base_m02_regslice_0_sc*  inst_41=dynamic_cast<zcu104_base_m02_regslice_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_m02_regslice_0"));
	xtlm_aximm_transaction_logger* log_inst_5 = new xtlm_aximm_transaction_logger("xtlm_aximm_transaction_logger_5");
	log_inst_5->setProxyRef(inst_40, inst_41, "masterSocket_5", "slaveSocket_5", log_inst_5->m_transactionLogger);
	
	if(inst_40==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_cc_2_sc"<<std::endl;
	}
	if(inst_41==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_m02_regslice_0_sc"<<std::endl;
	}
	
	if (inst_40!=NULL && inst_41!=NULL) {
		inst_40->M_INITIATOR_rd_socket->bind(*(log_inst_5->tar_rd_skt));
		log_inst_5->init_rd_skt->bind(*(inst_41->S_TARGET_rd_socket));
	}
	
	zcu104_base_auto_cc_2_sc*  inst_44=dynamic_cast<zcu104_base_auto_cc_2_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_cc_2"));
	zcu104_base_m02_regslice_0_sc*  inst_45=dynamic_cast<zcu104_base_m02_regslice_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_m02_regslice_0"));
	
	if(inst_44==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_cc_2_sc"<<std::endl;
	}
	if(inst_45==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_m02_regslice_0_sc"<<std::endl;
	}
	
	if (inst_44!=NULL && inst_45!=NULL) {
		inst_44->M_INITIATOR_wr_socket->bind(*(log_inst_5->tar_wr_skt));
		log_inst_5->init_wr_skt->bind(*(inst_45->S_TARGET_wr_socket));
	}
	
	zcu104_base_xbar_0_sc*  inst_48=dynamic_cast<zcu104_base_xbar_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_xbar_0"));
	zcu104_base_auto_pc_0_sc*  inst_49=dynamic_cast<zcu104_base_auto_pc_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_pc_0"));
	xtlm_aximm_transaction_logger* log_inst_6 = new xtlm_aximm_transaction_logger("xtlm_aximm_transaction_logger_6");
	log_inst_6->setProxyRef(inst_48, inst_49, "masterSocket_6", "slaveSocket_6", log_inst_6->m_transactionLogger);
	
	if(inst_48==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_xbar_0_sc"<<std::endl;
	}
	if(inst_49==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_pc_0_sc"<<std::endl;
	}
	
	if (inst_48!=NULL && inst_49!=NULL) {
		inst_48->initiator_0_rd_socket->bind(*(log_inst_6->tar_rd_skt));
		log_inst_6->init_rd_skt->bind(*(inst_49->target_rd_socket));
	}
	
	zcu104_base_xbar_0_sc*  inst_52=dynamic_cast<zcu104_base_xbar_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_xbar_0"));
	zcu104_base_auto_pc_0_sc*  inst_53=dynamic_cast<zcu104_base_auto_pc_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_pc_0"));
	
	if(inst_52==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_xbar_0_sc"<<std::endl;
	}
	if(inst_53==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_pc_0_sc"<<std::endl;
	}
	
	if (inst_52!=NULL && inst_53!=NULL) {
		inst_52->initiator_0_wr_socket->bind(*(log_inst_6->tar_wr_skt));
		log_inst_6->init_wr_skt->bind(*(inst_53->target_wr_socket));
	}
	
	zcu104_base_xbar_0_sc*  inst_56=dynamic_cast<zcu104_base_xbar_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_xbar_0"));
	zcu104_base_auto_cc_1_sc*  inst_57=dynamic_cast<zcu104_base_auto_cc_1_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_cc_1"));
	xtlm_aximm_transaction_logger* log_inst_7 = new xtlm_aximm_transaction_logger("xtlm_aximm_transaction_logger_7");
	log_inst_7->setProxyRef(inst_56, inst_57, "masterSocket_7", "slaveSocket_7", log_inst_7->m_transactionLogger);
	
	if(inst_56==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_xbar_0_sc"<<std::endl;
	}
	if(inst_57==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_cc_1_sc"<<std::endl;
	}
	
	if (inst_56!=NULL && inst_57!=NULL) {
		inst_56->initiator_1_rd_socket->bind(*(log_inst_7->tar_rd_skt));
		log_inst_7->init_rd_skt->bind(*(inst_57->S_TARGET_rd_socket));
	}
	
	zcu104_base_xbar_0_sc*  inst_60=dynamic_cast<zcu104_base_xbar_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_xbar_0"));
	zcu104_base_auto_cc_1_sc*  inst_61=dynamic_cast<zcu104_base_auto_cc_1_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_cc_1"));
	
	if(inst_60==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_xbar_0_sc"<<std::endl;
	}
	if(inst_61==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_cc_1_sc"<<std::endl;
	}
	
	if (inst_60!=NULL && inst_61!=NULL) {
		inst_60->initiator_1_wr_socket->bind(*(log_inst_7->tar_wr_skt));
		log_inst_7->init_wr_skt->bind(*(inst_61->S_TARGET_wr_socket));
	}
	
	zcu104_base_xbar_0_sc*  inst_64=dynamic_cast<zcu104_base_xbar_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_xbar_0"));
	zcu104_base_auto_cc_2_sc*  inst_65=dynamic_cast<zcu104_base_auto_cc_2_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_cc_2"));
	xtlm_aximm_transaction_logger* log_inst_8 = new xtlm_aximm_transaction_logger("xtlm_aximm_transaction_logger_8");
	log_inst_8->setProxyRef(inst_64, inst_65, "masterSocket_8", "slaveSocket_8", log_inst_8->m_transactionLogger);
	
	if(inst_64==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_xbar_0_sc"<<std::endl;
	}
	if(inst_65==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_cc_2_sc"<<std::endl;
	}
	
	if (inst_64!=NULL && inst_65!=NULL) {
		inst_64->initiator_2_rd_socket->bind(*(log_inst_8->tar_rd_skt));
		log_inst_8->init_rd_skt->bind(*(inst_65->S_TARGET_rd_socket));
	}
	
	zcu104_base_xbar_0_sc*  inst_68=dynamic_cast<zcu104_base_xbar_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_xbar_0"));
	zcu104_base_auto_cc_2_sc*  inst_69=dynamic_cast<zcu104_base_auto_cc_2_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_cc_2"));
	
	if(inst_68==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_xbar_0_sc"<<std::endl;
	}
	if(inst_69==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_cc_2_sc"<<std::endl;
	}
	
	if (inst_68!=NULL && inst_69!=NULL) {
		inst_68->initiator_2_wr_socket->bind(*(log_inst_8->tar_wr_skt));
		log_inst_8->init_wr_skt->bind(*(inst_69->S_TARGET_wr_socket));
	}
	
	zcu104_base_dpa_mon0_0_0_sc*  inst_72=dynamic_cast<zcu104_base_dpa_mon0_0_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_mon0_0_0"));
	zcu104_base_dpa_hub_0_sc*  inst_73=dynamic_cast<zcu104_base_dpa_hub_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_hub_0"));
	xtlm_axis_transaction_logger* log_inst_9 = new xtlm_axis_transaction_logger("xtlm_axis_transaction_logger_9");
	
	if(inst_72==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_mon0_0_0_sc"<<std::endl;
	}
	if(inst_73==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_hub_0_sc"<<std::endl;
	}
	
	if (inst_72!=NULL && inst_73!=NULL) {
		inst_72->wr_trace_socket->bind(*(log_inst_9->tar_skt));
		log_inst_9->init_skt->bind(*(inst_73->trace_socket0));
	}
	
	zcu104_base_dpa_mon0_0_0_sc*  inst_76=dynamic_cast<zcu104_base_dpa_mon0_0_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_mon0_0_0"));
	zcu104_base_dpa_hub_0_sc*  inst_77=dynamic_cast<zcu104_base_dpa_hub_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_hub_0"));
	xtlm_axis_transaction_logger* log_inst_10 = new xtlm_axis_transaction_logger("xtlm_axis_transaction_logger_10");
	
	if(inst_76==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_mon0_0_0_sc"<<std::endl;
	}
	if(inst_77==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_hub_0_sc"<<std::endl;
	}
	
	if (inst_76!=NULL && inst_77!=NULL) {
		inst_76->rd_trace_socket->bind(*(log_inst_10->tar_skt));
		log_inst_10->init_skt->bind(*(inst_77->trace_socket1));
	}
	
	zcu104_base_dpa_mon0_1_0_sc*  inst_80=dynamic_cast<zcu104_base_dpa_mon0_1_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_mon0_1_0"));
	zcu104_base_dpa_hub_0_sc*  inst_81=dynamic_cast<zcu104_base_dpa_hub_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_hub_0"));
	xtlm_axis_transaction_logger* log_inst_11 = new xtlm_axis_transaction_logger("xtlm_axis_transaction_logger_11");
	
	if(inst_80==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_mon0_1_0_sc"<<std::endl;
	}
	if(inst_81==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_hub_0_sc"<<std::endl;
	}
	
	if (inst_80!=NULL && inst_81!=NULL) {
		inst_80->wr_trace_socket->bind(*(log_inst_11->tar_skt));
		log_inst_11->init_skt->bind(*(inst_81->trace_socket2));
	}
	
	zcu104_base_dpa_mon0_1_0_sc*  inst_84=dynamic_cast<zcu104_base_dpa_mon0_1_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_mon0_1_0"));
	zcu104_base_dpa_hub_0_sc*  inst_85=dynamic_cast<zcu104_base_dpa_hub_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_hub_0"));
	xtlm_axis_transaction_logger* log_inst_12 = new xtlm_axis_transaction_logger("xtlm_axis_transaction_logger_12");
	
	if(inst_84==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_mon0_1_0_sc"<<std::endl;
	}
	if(inst_85==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_hub_0_sc"<<std::endl;
	}
	
	if (inst_84!=NULL && inst_85!=NULL) {
		inst_84->rd_trace_socket->bind(*(log_inst_12->tar_skt));
		log_inst_12->init_skt->bind(*(inst_85->trace_socket3));
	}
	
	zcu104_base_dpa_mon1_0_0_sc*  inst_88=dynamic_cast<zcu104_base_dpa_mon1_0_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_mon1_0_0"));
	zcu104_base_dpa_hub_0_sc*  inst_89=dynamic_cast<zcu104_base_dpa_hub_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_hub_0"));
	xtlm_axis_transaction_logger* log_inst_13 = new xtlm_axis_transaction_logger("xtlm_axis_transaction_logger_13");
	
	if(inst_88==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_mon1_0_0_sc"<<std::endl;
	}
	if(inst_89==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_hub_0_sc"<<std::endl;
	}
	
	if (inst_88!=NULL && inst_89!=NULL) {
		inst_88->wr_trace_socket->bind(*(log_inst_13->tar_skt));
		log_inst_13->init_skt->bind(*(inst_89->trace_socket4));
	}
	
	zcu104_base_dpa_mon1_0_0_sc*  inst_92=dynamic_cast<zcu104_base_dpa_mon1_0_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_mon1_0_0"));
	zcu104_base_dpa_hub_0_sc*  inst_93=dynamic_cast<zcu104_base_dpa_hub_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_hub_0"));
	xtlm_axis_transaction_logger* log_inst_14 = new xtlm_axis_transaction_logger("xtlm_axis_transaction_logger_14");
	
	if(inst_92==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_mon1_0_0_sc"<<std::endl;
	}
	if(inst_93==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_hub_0_sc"<<std::endl;
	}
	
	if (inst_92!=NULL && inst_93!=NULL) {
		inst_92->rd_trace_socket->bind(*(log_inst_14->tar_skt));
		log_inst_14->init_skt->bind(*(inst_93->trace_socket5));
	}
	
	zcu104_base_dpa_mon1_1_0_sc*  inst_96=dynamic_cast<zcu104_base_dpa_mon1_1_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_mon1_1_0"));
	zcu104_base_dpa_hub_0_sc*  inst_97=dynamic_cast<zcu104_base_dpa_hub_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_hub_0"));
	xtlm_axis_transaction_logger* log_inst_15 = new xtlm_axis_transaction_logger("xtlm_axis_transaction_logger_15");
	
	if(inst_96==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_mon1_1_0_sc"<<std::endl;
	}
	if(inst_97==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_hub_0_sc"<<std::endl;
	}
	
	if (inst_96!=NULL && inst_97!=NULL) {
		inst_96->wr_trace_socket->bind(*(log_inst_15->tar_skt));
		log_inst_15->init_skt->bind(*(inst_97->trace_socket6));
	}
	
	zcu104_base_dpa_mon1_1_0_sc*  inst_100=dynamic_cast<zcu104_base_dpa_mon1_1_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_mon1_1_0"));
	zcu104_base_dpa_hub_0_sc*  inst_101=dynamic_cast<zcu104_base_dpa_hub_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_hub_0"));
	xtlm_axis_transaction_logger* log_inst_16 = new xtlm_axis_transaction_logger("xtlm_axis_transaction_logger_16");
	
	if(inst_100==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_mon1_1_0_sc"<<std::endl;
	}
	if(inst_101==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_hub_0_sc"<<std::endl;
	}
	
	if (inst_100!=NULL && inst_101!=NULL) {
		inst_100->rd_trace_socket->bind(*(log_inst_16->tar_skt));
		log_inst_16->init_skt->bind(*(inst_101->trace_socket7));
	}
	
	zcu104_base_auto_us_0_sc*  inst_104=dynamic_cast<zcu104_base_auto_us_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_us_0"));
	zcu104_base_ps_e_0_sc*  inst_105=dynamic_cast<zcu104_base_ps_e_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_ps_e_0"));
	xtlm_aximm_transaction_logger* log_inst_17 = new xtlm_aximm_transaction_logger("xtlm_aximm_transaction_logger_17");
	log_inst_17->setProxyRef(inst_104, inst_105, "masterSocket_17", "slaveSocket_17", log_inst_17->m_transactionLogger);
	
	if(inst_104==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_us_0_sc"<<std::endl;
	}
	if(inst_105==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_ps_e_0_sc"<<std::endl;
	}
	
	if (inst_104!=NULL && inst_105!=NULL) {
		inst_104->initiator_rd_socket->bind(*(log_inst_17->tar_rd_skt));
		log_inst_17->init_rd_skt->bind(*(inst_105->S_AXI_HP3_FPD_rd_socket));
	}
	
	zcu104_base_auto_us_0_sc*  inst_108=dynamic_cast<zcu104_base_auto_us_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_auto_us_0"));
	zcu104_base_ps_e_0_sc*  inst_109=dynamic_cast<zcu104_base_ps_e_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_ps_e_0"));
	
	if(inst_108==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_auto_us_0_sc"<<std::endl;
	}
	if(inst_109==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_ps_e_0_sc"<<std::endl;
	}
	
	if (inst_108!=NULL && inst_109!=NULL) {
		inst_108->initiator_wr_socket->bind(*(log_inst_17->tar_wr_skt));
		log_inst_17->init_wr_skt->bind(*(inst_109->S_AXI_HP3_FPD_wr_socket));
	}
	
	zcu104_base_m01_regslice_3_sc*  inst_112=dynamic_cast<zcu104_base_m01_regslice_3_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_m01_regslice_3"));
	zcu104_base_dpa_hub_0_sc*  inst_113=dynamic_cast<zcu104_base_dpa_hub_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_hub_0"));
	xtlm_aximm_transaction_logger* log_inst_18 = new xtlm_aximm_transaction_logger("xtlm_aximm_transaction_logger_18");
	log_inst_18->setProxyRef(inst_112, inst_113, "masterSocket_18", "slaveSocket_18", log_inst_18->m_transactionLogger);
	
	if(inst_112==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_m01_regslice_3_sc"<<std::endl;
	}
	if(inst_113==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_hub_0_sc"<<std::endl;
	}
	
	if (inst_112!=NULL && inst_113!=NULL) {
		inst_112->M_INITIATOR_rd_socket->bind(*(log_inst_18->tar_rd_skt));
		log_inst_18->init_rd_skt->bind(*(inst_113->s_aximm_rd_socket));
	}
	
	zcu104_base_m01_regslice_3_sc*  inst_116=dynamic_cast<zcu104_base_m01_regslice_3_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_m01_regslice_3"));
	zcu104_base_dpa_hub_0_sc*  inst_117=dynamic_cast<zcu104_base_dpa_hub_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_dpa_hub_0"));
	
	if(inst_116==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_m01_regslice_3_sc"<<std::endl;
	}
	if(inst_117==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_dpa_hub_0_sc"<<std::endl;
	}
	
	if (inst_116!=NULL && inst_117!=NULL) {
		inst_116->M_INITIATOR_wr_socket->bind(*(log_inst_18->tar_wr_skt));
		log_inst_18->init_wr_skt->bind(*(inst_117->s_aximm_wr_socket));
	}
	
	zcu104_base_ps_e_0_sc*  inst_120=dynamic_cast<zcu104_base_ps_e_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_ps_e_0"));
	zcu104_base_xbar_0_sc*  inst_121=dynamic_cast<zcu104_base_xbar_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_xbar_0"));
	xtlm_aximm_transaction_logger* log_inst_19 = new xtlm_aximm_transaction_logger("xtlm_aximm_transaction_logger_19");
	log_inst_19->setProxyRef(inst_120, inst_121, "masterSocket_19", "slaveSocket_19", log_inst_19->m_transactionLogger);
	
	if(inst_120==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_ps_e_0_sc"<<std::endl;
	}
	if(inst_121==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_xbar_0_sc"<<std::endl;
	}
	
	if (inst_120!=NULL && inst_121!=NULL) {
		inst_120->M_AXI_HPM0_LPD_rd_socket->bind(*(log_inst_19->tar_rd_skt));
		log_inst_19->init_rd_skt->bind(*(inst_121->target_0_rd_socket));
	}
	
	zcu104_base_ps_e_0_sc*  inst_124=dynamic_cast<zcu104_base_ps_e_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_ps_e_0"));
	zcu104_base_xbar_0_sc*  inst_125=dynamic_cast<zcu104_base_xbar_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_xbar_0"));
	
	if(inst_124==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_ps_e_0_sc"<<std::endl;
	}
	if(inst_125==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_xbar_0_sc"<<std::endl;
	}
	
	if (inst_124!=NULL && inst_125!=NULL) {
		inst_124->M_AXI_HPM0_LPD_wr_socket->bind(*(log_inst_19->tar_wr_skt));
		log_inst_19->init_wr_skt->bind(*(inst_125->target_0_wr_socket));
	}
	
	zcu104_base_ps_e_0_sc*  inst_128=dynamic_cast<zcu104_base_ps_e_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_ps_e_0"));
	zcu104_base_xbar_2_sc*  inst_129=dynamic_cast<zcu104_base_xbar_2_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_xbar_2"));
	xtlm_aximm_transaction_logger* log_inst_20 = new xtlm_aximm_transaction_logger("xtlm_aximm_transaction_logger_20");
	log_inst_20->setProxyRef(inst_128, inst_129, "masterSocket_20", "slaveSocket_20", log_inst_20->m_transactionLogger);
	
	if(inst_128==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_ps_e_0_sc"<<std::endl;
	}
	if(inst_129==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_xbar_2_sc"<<std::endl;
	}
	
	if (inst_128!=NULL && inst_129!=NULL) {
		inst_128->M_AXI_HPM0_FPD_rd_socket->bind(*(log_inst_20->tar_rd_skt));
		log_inst_20->init_rd_skt->bind(*(inst_129->target_0_rd_socket));
	}
	
	zcu104_base_ps_e_0_sc*  inst_132=dynamic_cast<zcu104_base_ps_e_0_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_ps_e_0"));
	zcu104_base_xbar_2_sc*  inst_133=dynamic_cast<zcu104_base_xbar_2_sc*>(xsc::utils::xsc_sim_manager::getInstancePtr("zcu104_base_xbar_2"));
	
	if(inst_132==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_ps_e_0_sc"<<std::endl;
	}
	if(inst_133==NULL) {
		std::cerr<<"Error: While binding sockets cannot find socket object instance to bind zcu104_base_xbar_2_sc"<<std::endl;
	}
	
	if (inst_132!=NULL && inst_133!=NULL) {
		inst_132->M_AXI_HPM0_FPD_wr_socket->bind(*(log_inst_20->tar_wr_skt));
		log_inst_20->init_wr_skt->bind(*(inst_133->target_0_wr_socket));
	}
	
}
#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(zcu104_base_sci);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(zcu104_base_sci);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(zcu104_base_sci);
#endif

