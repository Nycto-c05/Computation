
## Initialization section

## Function getDataType(...) which accepts axiom data type as a parameter
## and returns it's equivalent R data type
getDataType <- function(axiomType) { if(axiomType == "INTEGER" | axiomType == "FLOAT") { return(numeric()) } else { return(character()) } }

## Function getDataTypeAsString(...) which accepts axiom data type as a parameter
## and returns it's equivalent R data type as string
getDataTypeAsString <- function(axiomType) { if(axiomType == "INTEGER" | axiomType == "FLOAT") { return("numeric") } else { return("character") } }


## Initialize variable 'debug'
debug <- 4

## Initialize variable 'precision'
precision <- 4

## Create a list of the fields in the producing data model 'ltv' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_ltv <- list()
temp_var_columnDataTypesFor_ltv$mltv_prpty_typ <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_ltv$mltv_entity_cntry <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_ltv$mltv_ltv <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_ltv$mltv_interim_rw_1 <- getDataTypeAsString("FLOAT")

## Create a list of the fields in the producing data model 'fcsm' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_fcsm <- list()
temp_var_columnDataTypesFor_fcsm$clltrl_entity_fcsm <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fcsm$id_clltrl_unique_fcsm <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fcsm$clltrl_rw_vl_fcsm <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_fcsm$clltrl_amnt_fcsm <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_fcsm$clltrl_ccy_fcsm <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fcsm$id_clltrl_nttng_agrmnt_fcsm <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fcsm$clltrl_id_pldg_fcsm <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fcsm$clltrl_rsdl_mtrty_yrs_fcsm <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_fcsm$clltrl_enm_pre_crm_sqnc_fcsm <- getDataTypeAsString("VARCHAR")

## Create a list of the fields in the producing data model 'exposure' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_exposure <- list()
temp_var_columnDataTypesFor_exposure$expsr_entity <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$enm_crm_sqnc <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$id_expsr_unique <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$expsr_amnt <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$id_expsr_clltrl_nttng_agrmnt <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$id_expsr_unfndd_crm_pool <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$id_expsr_real_estt_pool <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$expsr_hrct <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$ccf <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$expsr_rsdl_mtrty_yrs <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$expsr_rw_vl <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$hfx_expsr_ccy <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$enm_rw_mthd <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$expsr_id_pldg <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$dltn_rsk_expsr_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$id_cntrprty <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$enm_cntrprty_typ <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$expsr_rw_vl_lmt <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$enm_rw_mthd_aftr_lmt_chck <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$apply_rtl_lmt_chck_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$sme_sf_chck_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$enm_expsr_clcltn_mthd <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$irb_prprty_thrshld <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$irb_prprty_thrshld_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$fx_rate <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$enm_sa_irb_expsr <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$expsr_ccy <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$expsr_zero_hrct_elgbl_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$apply_ccf_bfr_crm_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$pfe_exemption_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$pfe_with_mlplctn_fctr <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$rc_with_mlplctn_fctr <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$enm_imm_expsr_clcltn <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$enm_pstn_clss <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$lien_rnk <- getDataTypeAsString("INTEGER")
temp_var_columnDataTypesFor_exposure$entity_cntry <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$ntrl_prsn_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$whl_ln_apprch_sme_sf_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$imm_ba_cva_dplct_rcrd_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$qrre_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$a_irb_rsdntl_prprty_amnt <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$real_estt_rw_cnddt_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$fll_prcnt_rw_flr_appld_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$orgnl_sa_expsr_clss_rw <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$enm_cqs_st <- getDataTypeAsString("INTEGER")
temp_var_columnDataTypesFor_exposure$mrtgg_cndtns_met_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$enm_real_estt_trmnt <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$prprty_exempt_amnt <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$qlfyng_art_124_2a_ii_2 <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$non_prft_hsng_dvlpr_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$enm_ipre_drgtn_appld <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$fnl_expsr_clssfctn <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$prfntl_rw_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$thrshld_limit <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$id_expsr_on_bs_nttng <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$adc_clssfctn <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$sme_or_prsn_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_exposure$mrtgg_cp_rw_vl_rtl_lmt <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$interim_rw <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_exposure$uk_mrtgg_cp_rw_apprch <- getDataTypeAsString("VARCHAR")

## Create a list of the fields in the producing data model 'guarantee' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_guarantee <- list()
temp_var_columnDataTypesFor_guarantee$grnt_entity <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_guarantee$id_grnt_unique <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_guarantee$id_grnt_unfndd_crm_pool <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_guarantee$grnt_amnt <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_guarantee$grnt_mtrty_yrs <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_guarantee$orgnl_mtrty_mnths <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_guarantee$grnt_ccy <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_guarantee$grnt_rw_vl <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_guarantee$grnt_sclld_10dy_fx_hrct <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_guarantee$id_grnt_clltrl_nttng_agrmnt <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_guarantee$grnt_id_pldg <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_guarantee$grnt_enm_irb_rcvbls_crm_typ <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_guarantee$grnt_enm_pre_crm_sqnc <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_guarantee$enm_unfndd_crm_rw_apprch <- getDataTypeAsString("VARCHAR")

## Create a list of the fields in the producing data model 'fccm' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_fccm <- list()
temp_var_columnDataTypesFor_fccm$clltrl_entity <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$id_clltrl_unique <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$clltrl_amnt <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_fccm$clltrl_rsdl_mtrty_yrs <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_fccm$clltrl_nttng_agrmnt_id <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$clltrl_orgnl_mtrty_mnths <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_fccm$clltrl_ccy <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$sclld_10dy_hrct <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_fccm$sclld_10dy_fx_hrct <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_fccm$irb_fndd_non_fnncl_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$mnm_thrshld <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_fccm$mxmm_thrshld <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_fccm$enm_crm_clss <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$clltrl_id_pldg <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$clltrl_enm_irb_rcvbls_crm_typ <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$irb_trgt_cffcnts_prrt <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_fccm$enm_prprty_typ <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$clltrl_zero_hrct_elgbl_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$clltrl_enm_pre_crm_sqnc <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$enm_trdng_bnkng <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$clltrl_elgblty_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$id_clltrl_on_bs_nttng <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$f_irb_clltrl_elgblty_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_fccm$a_irb_clltrl_elgblty_ind <- getDataTypeAsString("VARCHAR")

## Create a list of the fields in the producing data model 'airb_sme_sf' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_airb_sme_sf <- list()
temp_var_columnDataTypesFor_airb_sme_sf$expsr_entity_airb <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_airb_sme_sf$id_expsr_unique_airb <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_airb_sme_sf$expsr_amnt_airb <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_airb_sme_sf$fx_rate_airb <- getDataTypeAsString("FLOAT")

## Create a list of the fields in the producing data model 'retail_limit' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_retail_limit <- list()
temp_var_columnDataTypesFor_retail_limit$id_ultmt_prnt <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_retail_limit$id_prty <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_retail_limit$fnl_ttl_expsrs <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_retail_limit$ttl_obs_expsrs_eur <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_retail_limit$ttl_expsrs_excldng_obs <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_retail_limit$entity_limit <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_retail_limit$mxd_rw_mthd_gcc <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_retail_limit$whl_ln_prprty_exmpt_amnt <- getDataTypeAsString("FLOAT")

## Create a list of the fields in the producing data model 'pledge' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_pledge <- list()
temp_var_columnDataTypesFor_pledge$entity <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_pledge$id_pldg_grntr <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_pledge$id_pldg_rcvr <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_pledge$pldg_amnt <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_pledge$pldg_typ <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_pledge$prmry_rsdnc_ind <- getDataTypeAsString("VARCHAR")

## Create a list of the fields in the producing data model 'pari_passu' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_pari_passu <- list()
temp_var_columnDataTypesFor_pari_passu$p_entity <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_pari_passu$p_id_real_estt_pool <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_pari_passu$p_lien_rnk <- getDataTypeAsString("INTEGER")
temp_var_columnDataTypesFor_pari_passu$pari_passu_extrnl_fctr <- getDataTypeAsString("FLOAT")

## Create a list of the fields in the producing data model 'crm_pools' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_crm_pools <- list()
temp_var_columnDataTypesFor_crm_pools$crm_entity <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_crm_pools$crm_pool_id <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_crm_pools$crm_step <- getDataTypeAsString("VARCHAR")

## Create a list of the fields in the producing data model 'threads' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_threads <- list()
temp_var_columnDataTypesFor_threads$nmbr_thrds <- getDataTypeAsString("INTEGER")

## Create a list of the fields in the producing data model 'mixed' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_mixed <- list()
temp_var_columnDataTypesFor_mixed$clltrl_entity_mxd <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_mixed$clltrl_nttng_agrmnt_id_mxd <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_mixed$mxd_clltrl_pool_elgblty_ind <- getDataTypeAsString("VARCHAR")

## Create a list of the fields in the producing data model 'pre_crm' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_pre_crm <- list()
temp_var_columnDataTypesFor_pre_crm$entity_pre_crm <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_pre_crm$pre_crm_sqnc <- getDataTypeAsString("VARCHAR")

## Create a list of the fields in the producing data model 'prprty_rnk' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_prprty_rnk <- list()
temp_var_columnDataTypesFor_prprty_rnk$entity_prpty <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_prprty_rnk$lien_rnk_prpty <- getDataTypeAsString("INTEGER")
temp_var_columnDataTypesFor_prprty_rnk$id_prprty <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_prprty_rnk$pari_passu_othr_snr <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_prprty_rnk$pledge_pari_passu_extrnl_fctr <- getDataTypeAsString("FLOAT")

## Create a list of the fields in the producing data model 'mortgage' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_mortgage <- list()
temp_var_columnDataTypesFor_mortgage$mrtgg_entity <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_mortgage$id_mrtgg_unique <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_mortgage$id_mrtgg_real_estt_pool <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_mortgage$mrtgg_amnt <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_mortgage$mrtgg_rw_vl <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_mortgage$mrtgg_id_pldg <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_mortgage$mrtgg_enm_pre_crm_sqnc <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_mortgage$id_trnch <- getDataTypeAsString("INTEGER")
temp_var_columnDataTypesFor_mortgage$mrtgg_enm_prprty_typ <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_mortgage$ipre_rw <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_mortgage$non_ipre_rw <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_mortgage$incm_prdcng_real_estt_ind <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_mortgage$mrtgg_id_prprty <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_mortgage$mrtgg_lien_rnk <- getDataTypeAsString("INTEGER")
temp_var_columnDataTypesFor_mortgage$rl_estt_elgbl_prfrentl_rw <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_mortgage$prdntl_prprty_vl <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_mortgage$mrtgg_entity_cntry <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_mortgage$ipre_cntry_drgtn_ind <- getDataTypeAsString("VARCHAR")

## Create a list of the fields in the producing data model 'sme_limit' 
## Also specify the type for each field 
temp_var_columnDataTypesFor_sme_limit <- list()
temp_var_columnDataTypesFor_sme_limit$id_ultmt_prnt_sme <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_sme_limit$id_prty_sme <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_sme_limit$fnl_ttl_expsrs_sme <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_sme_limit$ttl_obs_expsrs_eur_sme <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_sme_limit$ttl_expsrs_excldng_obs_sme <- getDataTypeAsString("FLOAT")
temp_var_columnDataTypesFor_sme_limit$entity_sme <- getDataTypeAsString("VARCHAR")
temp_var_columnDataTypesFor_sme_limit$mxd_rw_mthd_gcc_sme <- getDataTypeAsString("VARCHAR")

## Populate data frame (representing producing data model 'ltv') from input file 
ltv <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/061ae636-fb7f-4e23-9e1c-ea26d21c9ab1_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_ltv) )

## Populate data frame (representing producing data model 'fcsm') from input file 
fcsm <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/2e003b46-a2ac-4636-9669-33603709bfce_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_fcsm) )

## Populate data frame (representing producing data model 'exposure') from input file 
exposure <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/2e13e5df-da6c-4dbd-8235-4a8146a824e6_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_exposure) )

## Populate data frame (representing producing data model 'guarantee') from input file 
guarantee <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/05b2069c-84db-47f5-9f60-dda5a30b820d_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_guarantee) )

## Populate data frame (representing producing data model 'fccm') from input file 
fccm <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/cffdc7da-594c-49d6-a93b-b6f9a04f2e8b_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_fccm) )

## Populate data frame (representing producing data model 'airb_sme_sf') from input file 
airb_sme_sf <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/a435dac5-17e3-4ebb-a06b-0f1b1962b859_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_airb_sme_sf) )

## Populate data frame (representing producing data model 'retail_limit') from input file 
retail_limit <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/4237f768-cd40-4e60-882d-3d9086464419_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_retail_limit) )

## Populate data frame (representing producing data model 'pledge') from input file 
pledge <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/4860fe60-5c44-417c-92bd-105e60dd4245_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_pledge) )

## Populate data frame (representing producing data model 'pari_passu') from input file 
pari_passu <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/fbac7ecc-b51f-4831-bca4-6a4200fa6a9e_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_pari_passu) )

## Populate data frame (representing producing data model 'crm_pools') from input file 
crm_pools <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/16130919-d6c8-46c7-b777-b6dcbd85957a_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_crm_pools) )

## Populate data frame (representing producing data model 'threads') from input file 
threads <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/fa1dd045-0c4d-4d7f-a29e-f2b52df0f9b3_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_threads) )

## Populate data frame (representing producing data model 'mixed') from input file 
mixed <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/30c8a394-ba08-4cdc-a606-63cb655a969c_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_mixed) )

## Populate data frame (representing producing data model 'pre_crm') from input file 
pre_crm <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/0e394f85-eb5c-4e1a-8d78-a0dd2834bf5d_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_pre_crm) )

## Populate data frame (representing producing data model 'prprty_rnk') from input file 
prprty_rnk <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/959896c6-f0b9-4a84-be8b-eb8d4511e6b2_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_prprty_rnk) )

## Populate data frame (representing producing data model 'mortgage') from input file 
mortgage <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/e1a3210f-dc36-4bc4-be75-bee657b5c859_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_mortgage) )

## Populate data frame (representing producing data model 'sme_limit') from input file 
sme_limit <- read.table("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/input/bd378226-a17d-4fed-97e7-c61e879bfcfd_c47d77c0-fb2a-43b0-ab19-4f87b7b73a7b.data", header=TRUE, sep = "\t", quote="", na.strings=character(), comment.char="", colClasses = c(temp_var_columnDataTypesFor_sme_limit) )

## Create a list representing the columns in the resulting data source 'alloc' 
alloc <- list()
alloc$entity <- getDataType("VARCHAR")
alloc$id_expsr_unique <- getDataType("VARCHAR")
alloc$expsr_amnt <- getDataType("FLOAT")
alloc$id_clltrl_unique <- getDataType("VARCHAR")
alloc$clltrl_allctd_prcntg <- getDataType("FLOAT")
alloc$allctd_clltrl <- getDataType("FLOAT")
alloc$hrct_amnt <- getDataType("FLOAT")
alloc$expsr_hrct_amnt <- getDataType("FLOAT")
alloc$hrct_10dy_amt <- getDataType("FLOAT")
alloc$hrct_10dy_fx_amt <- getDataType("FLOAT")
alloc$hrct_hm_amnt <- getDataType("FLOAT")
alloc$liens_amnt_cvrd <- getDataType("FLOAT")
alloc$expsr_rw_vl <- getDataType("FLOAT")
alloc$id_orgnl_expsr_unique <- getDataType("VARCHAR")
alloc$expsr_aftr_crm <- getDataType("FLOAT")
alloc$id_synthtc_expsr_unique <- getDataType("VARCHAR")
alloc$mxd_clltrl_pool_elgblty_ind <- getDataType("VARCHAR")
alloc$fndd_synthtc_ind <- getDataType("VARCHAR")
alloc$rw_mthd_appld <- getDataType("VARCHAR")
alloc$ca_step <- getDataType("VARCHAR")
alloc$alloc_id <- getDataType("INTEGER")

## Create a list representing the columns in the resulting data source 'alloc_imm_calc' 
alloc_imm_calc <- list()
alloc_imm_calc$entity <- getDataType("VARCHAR")
alloc_imm_calc$id_expsr_unique <- getDataType("VARCHAR")
alloc_imm_calc$expsr_amnt <- getDataType("FLOAT")
alloc_imm_calc$id_clltrl_unique <- getDataType("VARCHAR")
alloc_imm_calc$clltrl_allctd_prcntg <- getDataType("FLOAT")
alloc_imm_calc$allctd_clltrl <- getDataType("FLOAT")
alloc_imm_calc$hrct_amnt <- getDataType("FLOAT")
alloc_imm_calc$expsr_hrct_amnt <- getDataType("FLOAT")
alloc_imm_calc$hrct_10dy_amt <- getDataType("FLOAT")
alloc_imm_calc$hrct_10dy_fx_amt <- getDataType("FLOAT")
alloc_imm_calc$hrct_hm_amnt <- getDataType("FLOAT")
alloc_imm_calc$liens_amnt_cvrd <- getDataType("FLOAT")
alloc_imm_calc$expsr_rw_vl <- getDataType("FLOAT")
alloc_imm_calc$id_orgnl_expsr_unique <- getDataType("VARCHAR")
alloc_imm_calc$expsr_aftr_crm <- getDataType("FLOAT")
alloc_imm_calc$id_synthtc_expsr_unique <- getDataType("VARCHAR")
alloc_imm_calc$ca_step <- getDataType("VARCHAR")
alloc_imm_calc$alloc_id <- getDataType("INTEGER")

## Create a list representing the columns in the resulting data source 'prep_c' 
prep_c <- list()
prep_c$entity <- getDataType("VARCHAR")
prep_c$id_expsr_unique <- getDataType("VARCHAR")
prep_c$id_clltrl_unique <- getDataType("VARCHAR")
prep_c$expsr_amnt <- getDataType("FLOAT")
prep_c$expsr_hrct <- getDataType("FLOAT")
prep_c$expsr_hrct_amnt <- getDataType("FLOAT")
prep_c$ccf <- getDataType("FLOAT")
prep_c$clltrl_amnt <- getDataType("FLOAT")
prep_c$sclld_10dy_hrct <- getDataType("FLOAT")
prep_c$sclld_10dy_fx_hrct <- getDataType("FLOAT")
prep_c$mtrty_msmtch_hrct <- getDataType("FLOAT")
prep_c$liens_amnt_cvrd <- getDataType("FLOAT")
prep_c$expsr_rw_vl <- getDataType("FLOAT")
prep_c$clltrl_rw_vl <- getDataType("FLOAT")
prep_c$clltrl_avlbl <- getDataType("FLOAT")
prep_c$trgt_cfcnts <- getDataType("FLOAT")
prep_c$amnt_lst_to_hrcts <- getDataType("FLOAT")
prep_c$hfx_expsr_ccy <- getDataType("VARCHAR")
prep_c$expsr_rsdl_mtrty_yrs <- getDataType("FLOAT")
prep_c$expsr_ccy <- getDataType("VARCHAR")
prep_c$exp_zero_hrct_elgbl_ind <- getDataType("VARCHAR")

## Create a list representing the columns in the resulting data source 'prep_r' 
prep_r <- list()
prep_r$entity <- getDataType("VARCHAR")
prep_r$id_expsr_unique <- getDataType("VARCHAR")
prep_r$id_clltrl_unique <- getDataType("VARCHAR")
prep_r$expsr_amnt <- getDataType("FLOAT")
prep_r$expsr_hrct <- getDataType("FLOAT")
prep_r$expsr_hrct_amnt <- getDataType("FLOAT")
prep_r$ccf <- getDataType("FLOAT")
prep_r$clltrl_amnt <- getDataType("FLOAT")
prep_r$sclld_10dy_hrct <- getDataType("FLOAT")
prep_r$sclld_10dy_fx_hrct <- getDataType("FLOAT")
prep_r$mtrty_msmtch_hrct <- getDataType("FLOAT")
prep_r$liens_amnt_cvrd <- getDataType("FLOAT")
prep_r$expsr_rw_vl <- getDataType("FLOAT")
prep_r$clltrl_rw_vl <- getDataType("FLOAT")
prep_r$clltrl_avlbl <- getDataType("FLOAT")
prep_r$trgt_cfcnts <- getDataType("FLOAT")
prep_r$amnt_lst_to_hrcts <- getDataType("FLOAT")
prep_r$hfx_expsr_ccy <- getDataType("VARCHAR")
prep_r$expsr_rsdl_mtrty_yrs <- getDataType("FLOAT")
prep_r$expsr_ccy <- getDataType("VARCHAR")
prep_r$exp_zero_hrct_elgbl_ind <- getDataType("VARCHAR")

## Create a list representing the columns in the resulting data source 'prep_r_pledge' 
prep_r_pledge <- list()
prep_r_pledge$entity <- getDataType("VARCHAR")
prep_r_pledge$id_expsr_unique <- getDataType("VARCHAR")
prep_r_pledge$id_clltrl_unique <- getDataType("VARCHAR")
prep_r_pledge$expsr_amnt <- getDataType("FLOAT")
prep_r_pledge$expsr_hrct <- getDataType("FLOAT")
prep_r_pledge$expsr_hrct_amnt <- getDataType("FLOAT")
prep_r_pledge$ccf <- getDataType("FLOAT")
prep_r_pledge$clltrl_amnt <- getDataType("FLOAT")
prep_r_pledge$sclld_10dy_hrct <- getDataType("FLOAT")
prep_r_pledge$sclld_10dy_fx_hrct <- getDataType("FLOAT")
prep_r_pledge$mtrty_msmtch_hrct <- getDataType("FLOAT")
prep_r_pledge$liens_amnt_cvrd <- getDataType("FLOAT")
prep_r_pledge$expsr_rw_vl <- getDataType("FLOAT")
prep_r_pledge$clltrl_rw_vl <- getDataType("FLOAT")
prep_r_pledge$clltrl_avlbl <- getDataType("FLOAT")
prep_r_pledge$trgt_cfcnts <- getDataType("FLOAT")
prep_r_pledge$amnt_lst_to_hrcts <- getDataType("FLOAT")
prep_r_pledge$hfx_expsr_ccy <- getDataType("VARCHAR")
prep_r_pledge$expsr_rsdl_mtrty_yrs <- getDataType("FLOAT")
prep_r_pledge$expsr_ccy <- getDataType("VARCHAR")
prep_r_pledge$exp_zero_hrct_elgbl_ind <- getDataType("VARCHAR")

## Create a list representing the columns in the resulting data source 'prep_g' 
prep_g <- list()
prep_g$entity <- getDataType("VARCHAR")
prep_g$id_expsr_unique <- getDataType("VARCHAR")
prep_g$id_clltrl_unique <- getDataType("VARCHAR")
prep_g$expsr_amnt <- getDataType("FLOAT")
prep_g$expsr_hrct <- getDataType("FLOAT")
prep_g$expsr_hrct_amnt <- getDataType("FLOAT")
prep_g$ccf <- getDataType("FLOAT")
prep_g$clltrl_amnt <- getDataType("FLOAT")
prep_g$sclld_10dy_hrct <- getDataType("FLOAT")
prep_g$sclld_10dy_fx_hrct <- getDataType("FLOAT")
prep_g$mtrty_msmtch_hrct <- getDataType("FLOAT")
prep_g$liens_amnt_cvrd <- getDataType("FLOAT")
prep_g$expsr_rw_vl <- getDataType("FLOAT")
prep_g$clltrl_rw_vl <- getDataType("FLOAT")
prep_g$clltrl_avlbl <- getDataType("FLOAT")
prep_g$trgt_cfcnts <- getDataType("FLOAT")
prep_g$amnt_lst_to_hrcts <- getDataType("FLOAT")
prep_g$hfx_expsr_ccy <- getDataType("VARCHAR")
prep_g$expsr_rsdl_mtrty_yrs <- getDataType("FLOAT")
prep_g$expsr_ccy <- getDataType("VARCHAR")
prep_g$exp_zero_hrct_elgbl_ind <- getDataType("VARCHAR")

## Create a list representing the columns in the resulting data source 'prep_s' 
prep_s <- list()
prep_s$entity <- getDataType("VARCHAR")
prep_s$id_expsr_unique <- getDataType("VARCHAR")
prep_s$id_clltrl_unique <- getDataType("VARCHAR")
prep_s$expsr_amnt <- getDataType("FLOAT")
prep_s$expsr_hrct <- getDataType("FLOAT")
prep_s$expsr_hrct_amnt <- getDataType("FLOAT")
prep_s$ccf <- getDataType("FLOAT")
prep_s$clltrl_amnt <- getDataType("FLOAT")
prep_s$sclld_10dy_hrct <- getDataType("FLOAT")
prep_s$sclld_10dy_fx_hrct <- getDataType("FLOAT")
prep_s$mtrty_msmtch_hrct <- getDataType("FLOAT")
prep_s$liens_amnt_cvrd <- getDataType("FLOAT")
prep_s$expsr_rw_vl <- getDataType("FLOAT")
prep_s$clltrl_rw_vl <- getDataType("FLOAT")
prep_s$clltrl_avlbl <- getDataType("FLOAT")
prep_s$trgt_cfcnts <- getDataType("FLOAT")
prep_s$amnt_lst_to_hrcts <- getDataType("FLOAT")
prep_s$hfx_expsr_ccy <- getDataType("VARCHAR")
prep_s$expsr_rsdl_mtrty_yrs <- getDataType("FLOAT")
prep_s$expsr_ccy <- getDataType("VARCHAR")
prep_s$exp_zero_hrct_elgbl_ind <- getDataType("VARCHAR")

## Create a list representing the columns in the resulting data source 'retail_million_eur' 
retail_million_eur <- list()
retail_million_eur$entity <- getDataType("VARCHAR")
retail_million_eur$id_expsr_unique <- getDataType("VARCHAR")
retail_million_eur$new_rw_vl <- getDataType("FLOAT")
retail_million_eur$orgnl_rw_vl <- getDataType("FLOAT")
retail_million_eur$new_enm_cntrprty_typ <- getDataType("VARCHAR")
retail_million_eur$orgnl_cntrprty_typ <- getDataType("VARCHAR")
retail_million_eur$rtl_lmt_chck_cntrprt_chngd_ind <- getDataType("VARCHAR")
retail_million_eur$rtl_lmt_chck_rw_chngd_ind <- getDataType("VARCHAR")
retail_million_eur$orgnl_sa_expsr_clss_rw_crm <- getDataType("VARCHAR")

## Create a list representing the columns in the resulting data source 'sme_limit_eur' 
sme_limit_eur <- list()
sme_limit_eur$entity <- getDataType("VARCHAR")
sme_limit_eur$id_expsr_unique <- getDataType("VARCHAR")
sme_limit_eur$new_sme_fctr <- getDataType("FLOAT")

## Create a list representing the columns in the resulting data source 'retail_million_eur_irb' 
retail_million_eur_irb <- list()
retail_million_eur_irb$entity <- getDataType("VARCHAR")
retail_million_eur_irb$id_expsr_unique <- getDataType("VARCHAR")
retail_million_eur_irb$new_enm_cntrprty_typ <- getDataType("VARCHAR")
retail_million_eur_irb$orgnl_cntrprty_typ <- getDataType("VARCHAR")
retail_million_eur_irb$new_rw_method <- getDataType("VARCHAR")
retail_million_eur_irb$old_rw_method <- getDataType("VARCHAR")
retail_million_eur_irb$rtl_lmt_chck_cntrprt_chngd_ind <- getDataType("VARCHAR")
retail_million_eur_irb$rtl_lmt_chck_rw_chngd_ind <- getDataType("VARCHAR")

## Create a list representing the columns in the resulting data source 'sme_million_eur_irb' 
sme_million_eur_irb <- list()
sme_million_eur_irb$entity <- getDataType("VARCHAR")
sme_million_eur_irb$id_expsr_unique <- getDataType("VARCHAR")
sme_million_eur_irb$new_sme_fctr <- getDataType("FLOAT")

## Create a list representing the columns in the resulting data source 'retail_million_gcc_exempt' 
retail_million_gcc_exempt <- list()
retail_million_gcc_exempt$entity <- getDataType("VARCHAR")
retail_million_gcc_exempt$id_ultmt_prnt <- getDataType("VARCHAR")
retail_million_gcc_exempt$fnl_ttl_expsrs_eur <- getDataType("FLOAT")
retail_million_gcc_exempt$ttl_obs_expsrs_eur <- getDataType("FLOAT")
retail_million_gcc_exempt$ttl_expsrs_excldng_obs <- getDataType("FLOAT")
retail_million_gcc_exempt$exmptn_amnts_ip <- getDataType("FLOAT")
retail_million_gcc_exempt$ttl_exmptn_amnts <- getDataType("FLOAT")
retail_million_gcc_exempt$ttl_amnt_owd <- getDataType("FLOAT")
retail_million_gcc_exempt$whl_ln_prprty_exmpt_amnt <- getDataType("FLOAT")
retail_million_gcc_exempt$breached_ind <- getDataType("VARCHAR")

## Create a list representing the columns in the resulting data source 'sme_million_gcc_exempt' 
sme_million_gcc_exempt <- list()
sme_million_gcc_exempt$entity <- getDataType("VARCHAR")
sme_million_gcc_exempt$id_ultmt_prnt <- getDataType("VARCHAR")
sme_million_gcc_exempt$fnl_ttl_expsrs_eur <- getDataType("FLOAT")
sme_million_gcc_exempt$ttl_obs_expsrs_eur <- getDataType("FLOAT")
sme_million_gcc_exempt$ttl_expsrs_excldng_obs <- getDataType("FLOAT")
sme_million_gcc_exempt$exmptn_amnts_ip <- getDataType("FLOAT")
sme_million_gcc_exempt$ttl_exmptn_amnts <- getDataType("FLOAT")
sme_million_gcc_exempt$ttl_amnt_owd <- getDataType("FLOAT")
sme_million_gcc_exempt$new_sme_fctr <- getDataType("FLOAT")

## Create a list representing the columns in the resulting data source 'exposure_ipre' 
exposure_ipre <- list()
exposure_ipre$entity <- getDataType("VARCHAR")
exposure_ipre$id_expsr_unique <- getDataType("VARCHAR")

## Create a list representing the columns in the resulting data source 'mortgage_fnl_ipre_rw' 
mortgage_fnl_ipre_rw <- list()
mortgage_fnl_ipre_rw$entity <- getDataType("VARCHAR")
mortgage_fnl_ipre_rw$id_synthetic <- getDataType("VARCHAR")
mortgage_fnl_ipre_rw$fnl_ipre_rw <- getDataType("FLOAT")
mortgage_fnl_ipre_rw$fnl_ltv <- getDataType("FLOAT")

## Create a list representing the columns in the resulting data source 're_pledge_rw_used' 
re_pledge_rw_used <- list()
re_pledge_rw_used$entity <- getDataType("VARCHAR")
re_pledge_rw_used$id_expsr_unique <- getDataType("VARCHAR")
re_pledge_rw_used$id_clltrl_unique <- getDataType("VARCHAR")
re_pledge_rw_used$mrtgg_cndtns_met_ind <- getDataType("VARCHAR")
re_pledge_rw_used$rl_estt_elgbl_prfrentl_rw <- getDataType("VARCHAR")
re_pledge_rw_used$enm_real_estt_rw_trmnt <- getDataType("VARCHAR")
re_pledge_rw_used$incm_prdcng_real_estt_ind <- getDataType("VARCHAR")
re_pledge_rw_used$rw_mthd_appld <- getDataType("VARCHAR")
re_pledge_rw_used$prfrntl_rw <- getDataType("VARCHAR")
re_pledge_rw_used$expsr_rw_vl <- getDataType("FLOAT")
re_pledge_rw_used$clltrl_rw_vl <- getDataType("FLOAT")

## Create a list representing the columns in the resulting data source 'mortgage_non_pref_elig' 
mortgage_non_pref_elig <- list()
mortgage_non_pref_elig$entity <- getDataType("VARCHAR")
mortgage_non_pref_elig$id_clltrl_unique <- getDataType("VARCHAR")
mortgage_non_pref_elig$fnl_rw_vl <- getDataType("FLOAT")

## Create a list representing the columns in the resulting data source 'exposure_fnl_typ' 
exposure_fnl_typ <- list()
exposure_fnl_typ$entity <- getDataType("VARCHAR")
exposure_fnl_typ$id_expsr_unique <- getDataType("VARCHAR")
exposure_fnl_typ$rw_mthd_appld <- getDataType("VARCHAR")
exposure_fnl_typ$fnl_prtfl_typ <- getDataType("VARCHAR")

## Create a list representing the columns in the resulting data source 'exposure_ipre_drgtn_appld_methd' 
exposure_ipre_drgtn_appld_methd <- list()
exposure_ipre_drgtn_appld_methd$entity <- getDataType("VARCHAR")
exposure_ipre_drgtn_appld_methd$id_expsr_unique <- getDataType("VARCHAR")
exposure_ipre_drgtn_appld_methd$enm_ipre_drgtn_appld <- getDataType("VARCHAR")

## Create a list representing the columns in the resulting data source 'exposure_prfrntl_rw' 
exposure_prfrntl_rw <- list()
exposure_prfrntl_rw$entity <- getDataType("VARCHAR")
exposure_prfrntl_rw$id_expsr_unique <- getDataType("VARCHAR")
exposure_prfrntl_rw$id_clltrl_unique <- getDataType("VARCHAR")
exposure_prfrntl_rw$prfrntl_rw <- getDataType("VARCHAR")

## Create a list representing the columns in the resulting data source 'fccm_clltrl_not_used' 
fccm_clltrl_not_used <- list()
fccm_clltrl_not_used$entity <- getDataType("VARCHAR")
fccm_clltrl_not_used$id_clltrl_unique <- getDataType("VARCHAR")
fccm_clltrl_not_used$enm_clltrl_trnstcn_typ <- getDataType("VARCHAR")

## Create a list representing the columns in the resulting data source 'prep_o' 
prep_o <- list()
prep_o$entity <- getDataType("VARCHAR")
prep_o$id_expsr_unique <- getDataType("VARCHAR")
prep_o$id_clltrl_unique <- getDataType("VARCHAR")
prep_o$expsr_amnt <- getDataType("FLOAT")
prep_o$expsr_hrct <- getDataType("FLOAT")
prep_o$expsr_hrct_amnt <- getDataType("FLOAT")
prep_o$ccf <- getDataType("FLOAT")
prep_o$clltrl_amnt <- getDataType("FLOAT")
prep_o$sclld_10dy_hrct <- getDataType("FLOAT")
prep_o$sclld_10dy_fx_hrct <- getDataType("FLOAT")
prep_o$mtrty_msmtch_hrct <- getDataType("FLOAT")
prep_o$liens_amnt_cvrd <- getDataType("FLOAT")
prep_o$expsr_rw_vl <- getDataType("FLOAT")
prep_o$clltrl_rw_vl <- getDataType("FLOAT")
prep_o$clltrl_avlbl <- getDataType("FLOAT")
prep_o$trgt_cfcnts <- getDataType("FLOAT")
prep_o$amnt_lst_to_hrcts <- getDataType("FLOAT")
prep_o$hfx_expsr_ccy <- getDataType("VARCHAR")
prep_o$expsr_rsdl_mtrty_yrs <- getDataType("FLOAT")
prep_o$expsr_ccy <- getDataType("VARCHAR")
prep_o$exp_zero_hrct_elgbl_ind <- getDataType("VARCHAR")


#!DL
#!link exposure.expsr_entity alloc.entity
#!link exposure.expsr_entity prep_c.entity
#!link exposure.expsr_entity prep_r.entity
#!link exposure.expsr_entity prep_g.entity
#!link exposure.expsr_entity prep_s.entity
#!link exposure.expsr_entity retail_million_eur.entity
#!link exposure.expsr_entity sme_limit_eur.entity
#!link exposure.expsr_entity retail_million_eur_irb.entity
#!link exposure.expsr_entity sme_million_eur_irb.entity
#!link exposure.expsr_entity retail_million_gcc_exempt.entity
#!link exposure.expsr_entity sme_million_gcc_exempt.entity
#!link exposure.enm_crm_sqnc alloc.id_expsr_unique
#!link exposure.enm_crm_sqnc alloc.id_clltrl_unique
#!link exposure.enm_crm_sqnc retail_million_eur.id_expsr_unique
#!link exposure.enm_crm_sqnc retail_million_eur_irb.id_expsr_unique
#!link exposure.enm_crm_sqnc sme_million_eur_irb.id_expsr_unique
#!link exposure.enm_crm_sqnc sme_million_eur_irb.id_expsr_unique
#!link exposure.enm_crm_sqnc retail_million_gcc_exempt.id_ultmt_prnt
#!link exposure.enm_crm_sqnc sme_million_gcc_exempt.id_ultmt_prnt
#!link exposure.id_expsr_unique alloc.id_expsr_unique
#!link exposure.id_expsr_unique alloc.id_synthtc_expsr_unique
#!link exposure.id_expsr_unique prep_c.id_expsr_unique
#!link exposure.id_expsr_unique prep_r.id_expsr_unique
#!link exposure.id_expsr_unique prep_g.id_expsr_unique
#!link exposure.id_expsr_unique prep_s.id_expsr_unique
#!link exposure.id_expsr_unique retail_million_eur.id_expsr_unique
#!link exposure.id_expsr_unique sme_limit_eur.id_expsr_unique
#!link exposure.id_expsr_unique retail_million_eur_irb.id_expsr_unique
#!link exposure.id_expsr_unique sme_million_eur_irb.id_expsr_unique
#!link exposure.expsr_amnt alloc.expsr_amnt
#!link exposure.expsr_amnt alloc.clltrl_allctd_prcntg
#!link exposure.expsr_amnt alloc.allctd_clltrl
#!link exposure.expsr_amnt alloc.expsr_hrct_amnt
#!link exposure.expsr_amnt alloc.expsr_aftr_crm
#!link exposure.expsr_amnt prep_c.expsr_amnt
#!link exposure.expsr_amnt prep_c.expsr_hrct
#!link exposure.expsr_amnt prep_c.expsr_hrct_amnt
#!link exposure.expsr_amnt prep_r.expsr_amnt
#!link exposure.expsr_amnt prep_r.expsr_hrct
#!link exposure.expsr_amnt prep_r.expsr_hrct_amnt
#!link exposure.expsr_amnt prep_g.expsr_amnt
#!link exposure.expsr_amnt prep_g.expsr_hrct
#!link exposure.expsr_amnt prep_g.expsr_hrct_amnt
#!link exposure.expsr_amnt prep_s.expsr_amnt
#!link exposure.expsr_amnt prep_s.expsr_hrct
#!link exposure.expsr_amnt prep_s.expsr_hrct_amnt
#!link exposure.expsr_amnt retail_million_eur.new_rw_vl
#!link exposure.expsr_amnt retail_million_eur.new_enm_cntrprty_typ
#!link exposure.expsr_amnt sme_limit_eur.new_sme_fctr
#!link exposure.expsr_amnt retail_million_eur_irb.new_enm_cntrprty_typ
#!link exposure.expsr_amnt retail_million_eur_irb.new_rw_method
#!link exposure.expsr_amnt sme_million_eur_irb.new_sme_fctr
#!link exposure.expsr_amnt retail_million_gcc_exempt.fnl_ttl_expsrs
#!link exposure.expsr_amnt retail_million_gcc_exempt.ttl_obs_expsrs_eur
#!link exposure.expsr_amnt retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.expsr_amnt retail_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.expsr_amnt retail_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.expsr_amnt retail_million_gcc_exempt.ttl_amnt_owd
#!link exposure.expsr_amnt retail_million_gcc_exempt.breached_ind
#!link exposure.expsr_amnt sme_million_gcc_exempt.fnl_ttl_expsrs
#!link exposure.expsr_amnt sme_million_gcc_exempt.ttl_obs_expsrs_eur
#!link exposure.expsr_amnt sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.expsr_amnt sme_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.expsr_amnt sme_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.expsr_amnt sme_million_gcc_exempt.ttl_amnt_owd
#!link exposure.expsr_amnt sme_million_gcc_exempt.new_sme_fctr
#!link exposure.id_expsr_clltrl_nttng_agrmnt alloc.id_expsr_unique
#!link exposure.id_expsr_clltrl_nttng_agrmnt alloc.id_clltrl_unique
#!link exposure.id_expsr_clltrl_nttng_agrmnt prep_c.id_expsr_unique
#!link exposure.id_expsr_clltrl_nttng_agrmnt prep_c.id_clltrl_unique
#!link exposure.id_expsr_clltrl_nttng_agrmnt prep_r.id_expsr_unique
#!link exposure.id_expsr_clltrl_nttng_agrmnt prep_r.id_clltrl_unique
#!link exposure.id_expsr_clltrl_nttng_agrmnt prep_g.id_expsr_unique
#!link exposure.id_expsr_clltrl_nttng_agrmnt prep_g.id_clltrl_unique
#!link exposure.id_expsr_clltrl_nttng_agrmnt prep_s.id_expsr_unique
#!link exposure.id_expsr_clltrl_nttng_agrmnt prep_s.id_clltrl_unique
#!link exposure.id_expsr_unfndd_crm_pool alloc.id_expsr_unique
#!link exposure.id_expsr_unfndd_crm_pool alloc.id_clltrl_unique
#!link exposure.id_expsr_unfndd_crm_pool prep_c.id_expsr_unique
#!link exposure.id_expsr_unfndd_crm_pool prep_c.id_clltrl_unique
#!link exposure.id_expsr_unfndd_crm_pool prep_r.id_expsr_unique
#!link exposure.id_expsr_unfndd_crm_pool prep_r.id_clltrl_unique
#!link exposure.id_expsr_unfndd_crm_pool prep_g.id_expsr_unique
#!link exposure.id_expsr_unfndd_crm_pool prep_g.id_clltrl_unique
#!link exposure.id_expsr_unfndd_crm_pool prep_s.id_expsr_unique
#!link exposure.id_expsr_unfndd_crm_pool prep_s.id_clltrl_unique
#!link exposure.id_expsr_real_estt_pool alloc.id_expsr_unique
#!link exposure.id_expsr_real_estt_pool alloc.id_clltrl_unique
#!link exposure.id_expsr_real_estt_pool prep_c.id_expsr_unique
#!link exposure.id_expsr_real_estt_pool prep_c.id_clltrl_unique
#!link exposure.id_expsr_real_estt_pool prep_r.id_expsr_unique
#!link exposure.id_expsr_real_estt_pool prep_r.id_clltrl_unique
#!link exposure.id_expsr_real_estt_pool prep_g.id_expsr_unique
#!link exposure.id_expsr_real_estt_pool prep_g.id_clltrl_unique
#!link exposure.id_expsr_real_estt_pool prep_s.id_expsr_unique
#!link exposure.id_expsr_real_estt_pool prep_s.id_clltrl_unique
#!link exposure.expsr_hrct alloc.expsr_hrct_amnt
#!link exposure.expsr_hrct alloc.expsr_aftr_crm
#!link exposure.expsr_hrct alloc.allctd_clltrl
#!link exposure.expsr_hrct alloc.expsr_amnt
#!link exposure.expsr_hrct prep_c.expsr_hrct
#!link exposure.expsr_hrct prep_c.expsr_hrct_amnt
#!link exposure.expsr_hrct prep_c.amnt_lst_to_hrcts
#!link exposure.expsr_hrct prep_r.expsr_hrct
#!link exposure.expsr_hrct prep_r.expsr_hrct_amnt
#!link exposure.expsr_hrct prep_r.amnt_lst_to_hrcts
#!link exposure.expsr_hrct prep_g.expsr_hrct
#!link exposure.expsr_hrct prep_g.expsr_hrct_amnt
#!link exposure.expsr_hrct prep_g.amnt_lst_to_hrcts
#!link exposure.expsr_hrct prep_s.expsr_hrct
#!link exposure.expsr_hrct prep_s.expsr_hrct_amnt
#!link exposure.expsr_hrct prep_s.amnt_lst_to_hrcts
#!link exposure.expsr_id_pldg alloc.id_expsr_unique
#!link exposure.expsr_id_pldg alloc.id_clltrl_unique
#!link exposure.expsr_id_pldg prep_c.id_expsr_unique
#!link exposure.expsr_id_pldg prep_c.id_clltrl_unique
#!link exposure.expsr_id_pldg prep_r.id_expsr_unique
#!link exposure.expsr_id_pldg prep_r.id_clltrl_unique
#!link exposure.expsr_id_pldg prep_g.id_expsr_unique
#!link exposure.expsr_id_pldg prep_g.id_clltrl_unique
#!link exposure.expsr_id_pldg prep_s.id_expsr_unique
#!link exposure.expsr_id_pldg prep_s.id_clltrl_unique
#!link exposure.expsr_rw_vl alloc.id_expsr_unique
#!link exposure.expsr_rw_vl alloc.id_clltrl_unique
#!link exposure.expsr_rw_vl alloc.allctd_clltrl
#!link exposure.expsr_rw_vl alloc.hrct_amnt
#!link exposure.expsr_rw_vl alloc.expsr_aftr_crm
#!link exposure.expsr_rw_vl alloc.id_synthtc_expsr_unique
#!link exposure.expsr_rw_vl prep_c.id_expsr_unique
#!link exposure.expsr_rw_vl prep_c.id_clltrl_unique
#!link exposure.expsr_rw_vl prep_c.clltrl_avlbl
#!link exposure.expsr_rw_vl prep_c.trgt_cfcnts
#!link exposure.expsr_rw_vl prep_c.expsr_rw_vl
#!link exposure.expsr_rw_vl prep_r.id_expsr_unique
#!link exposure.expsr_rw_vl prep_r.id_clltrl_unique
#!link exposure.expsr_rw_vl prep_r.clltrl_avlbl
#!link exposure.expsr_rw_vl prep_r.trgt_cfcnts
#!link exposure.expsr_rw_vl prep_r.expsr_rw_vl
#!link exposure.expsr_rw_vl prep_g.id_expsr_unique
#!link exposure.expsr_rw_vl prep_g.id_clltrl_unique
#!link exposure.expsr_rw_vl prep_g.clltrl_avlbl
#!link exposure.expsr_rw_vl prep_g.trgt_cfcnts
#!link exposure.expsr_rw_vl prep_g.expsr_rw_vl
#!link exposure.expsr_rw_vl prep_s.id_expsr_unique
#!link exposure.expsr_rw_vl prep_s.id_clltrl_unique
#!link exposure.expsr_rw_vl prep_s.clltrl_avlbl
#!link exposure.expsr_rw_vl prep_s.trgt_cfcnts
#!link exposure.expsr_rw_vl prep_s.expsr_rw_vl
#!link exposure.hfx_expsr_ccy alloc.id_expsr_unique
#!link exposure.hfx_expsr_ccy alloc.id_clltrl_unique
#!link exposure.hfx_expsr_ccy alloc.allctd_clltrl
#!link exposure.hfx_expsr_ccy alloc.hrct_amnt
#!link exposure.hfx_expsr_ccy alloc.expsr_aftr_crm
#!link exposure.hfx_expsr_ccy alloc.id_synthtc_expsr_unique
#!link exposure.hfx_expsr_ccy prep_c.id_expsr_unique
#!link exposure.hfx_expsr_ccy prep_c.id_clltrl_unique
#!link exposure.hfx_expsr_ccy prep_c.clltrl_avlbl
#!link exposure.hfx_expsr_ccy prep_c.trgt_cfcnts
#!link exposure.hfx_expsr_ccy prep_c.hfx_expsr_ccy
#!link exposure.hfx_expsr_ccy prep_r.id_expsr_unique
#!link exposure.hfx_expsr_ccy prep_r.id_clltrl_unique
#!link exposure.hfx_expsr_ccy prep_r.clltrl_avlbl
#!link exposure.hfx_expsr_ccy prep_r.trgt_cfcnts
#!link exposure.hfx_expsr_ccy prep_r.hfx_expsr_ccy
#!link exposure.hfx_expsr_ccy prep_g.id_expsr_unique
#!link exposure.hfx_expsr_ccy prep_g.id_clltrl_unique
#!link exposure.hfx_expsr_ccy prep_g.clltrl_avlbl
#!link exposure.hfx_expsr_ccy prep_g.trgt_cfcnts
#!link exposure.hfx_expsr_ccy prep_g.hfx_expsr_ccy
#!link exposure.hfx_expsr_ccy prep_s.id_expsr_unique
#!link exposure.hfx_expsr_ccy prep_s.id_clltrl_unique
#!link exposure.hfx_expsr_ccy prep_s.clltrl_avlbl
#!link exposure.hfx_expsr_ccy prep_s.trgt_cfcnts
#!link exposure.hfx_expsr_ccy prep_s.hfx_expsr_ccy
#!link exposure.ccf alloc.id_expsr_unique
#!link exposure.ccf alloc.id_clltrl_unique
#!link exposure.ccf alloc.allctd_clltrl
#!link exposure.ccf alloc.hrct_amnt
#!link exposure.ccf alloc.expsr_aftr_crm
#!link exposure.ccf alloc.id_synthtc_expsr_unique
#!link exposure.ccf prep_c.id_expsr_unique
#!link exposure.ccf prep_c.id_clltrl_unique
#!link exposure.ccf prep_c.clltrl_avlbl
#!link exposure.ccf prep_c.trgt_cfcnts
#!link exposure.ccf prep_c.ccf
#!link exposure.ccf prep_r.id_expsr_unique
#!link exposure.ccf prep_r.id_clltrl_unique
#!link exposure.ccf prep_r.clltrl_avlbl
#!link exposure.ccf prep_r.trgt_cfcnts
#!link exposure.ccf prep_r.ccf
#!link exposure.ccf prep_g.id_expsr_unique
#!link exposure.ccf prep_g.id_clltrl_unique
#!link exposure.ccf prep_g.clltrl_avlbl
#!link exposure.ccf prep_g.trgt_cfcnts
#!link exposure.ccf prep_g.ccf
#!link exposure.ccf prep_s.id_expsr_unique
#!link exposure.ccf prep_s.id_clltrl_unique
#!link exposure.ccf prep_s.clltrl_avlbl
#!link exposure.ccf prep_s.trgt_cfcnts
#!link exposure.ccf prep_s.ccf
#!link exposure.expsr_ccy alloc.id_expsr_unique
#!link exposure.expsr_ccy alloc.id_clltrl_unique
#!link exposure.expsr_ccy alloc.allctd_clltrl
#!link exposure.expsr_ccy alloc.hrct_amnt
#!link exposure.expsr_ccy alloc.expsr_aftr_crm
#!link exposure.expsr_ccy alloc.id_synthtc_expsr_unique
#!link exposure.expsr_ccy prep_c.id_expsr_unique
#!link exposure.expsr_ccy prep_c.id_clltrl_unique
#!link exposure.expsr_ccy prep_c.clltrl_avlbl
#!link exposure.expsr_ccy prep_c.trgt_cfcnts
#!link exposure.expsr_ccy prep_c.expsr_ccy
#!link exposure.expsr_ccy prep_r.id_expsr_unique
#!link exposure.expsr_ccy prep_r.id_clltrl_unique
#!link exposure.expsr_ccy prep_r.clltrl_avlbl
#!link exposure.expsr_ccy prep_r.trgt_cfcnts
#!link exposure.expsr_ccy prep_r.expsr_ccy
#!link exposure.expsr_ccy prep_g.id_expsr_unique
#!link exposure.expsr_ccy prep_g.id_clltrl_unique
#!link exposure.expsr_ccy prep_g.clltrl_avlbl
#!link exposure.expsr_ccy prep_g.trgt_cfcnts
#!link exposure.expsr_ccy prep_g.expsr_ccy
#!link exposure.expsr_ccy prep_s.id_expsr_unique
#!link exposure.expsr_ccy prep_s.id_clltrl_unique
#!link exposure.expsr_ccy prep_s.clltrl_avlbl
#!link exposure.expsr_ccy prep_s.trgt_cfcnts
#!link exposure.expsr_ccy prep_s.expsr_ccy
#!link exposure.enm_sa_irb_expsr alloc.id_expsr_unique
#!link exposure.enm_sa_irb_expsr alloc.id_clltrl_unique
#!link exposure.enm_sa_irb_expsr prep_c.id_expsr_unique
#!link exposure.enm_sa_irb_expsr prep_c.id_clltrl_unique
#!link exposure.enm_sa_irb_expsr prep_r.id_expsr_unique
#!link exposure.enm_sa_irb_expsr prep_r.id_clltrl_unique
#!link exposure.enm_sa_irb_expsr prep_g.id_expsr_unique
#!link exposure.enm_sa_irb_expsr prep_g.id_clltrl_unique
#!link exposure.enm_sa_irb_expsr prep_s.id_expsr_unique
#!link exposure.enm_sa_irb_expsr prep_s.id_clltrl_unique
#!link exposure.pfe_exemption_ind retail_million_eur.new_rw_vl
#!link exposure.pfe_exemption_ind retail_million_eur.orgnl_rw_vl
#!link exposure.pfe_exemption_ind retail_million_eur.new_enm_cntrprty_typ
#!link exposure.pfe_exemption_ind retail_million_eur.orgnl_cntrprty_typ
#!link exposure.pfe_exemption_ind sme_limit_eur.new_sme_fctr
#!link exposure.pfe_exemption_ind retail_million_eur_irb.new_enm_cntrprty_typ
#!link exposure.pfe_exemption_ind retail_million_eur_irb.new_rw_method
#!link exposure.pfe_exemption_ind sme_million_eur_irb.new_sme_fctr
#!link exposure.pfe_exemption_ind retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.pfe_exemption_ind retail_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.pfe_exemption_ind retail_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.pfe_exemption_ind sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.pfe_exemption_ind sme_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.pfe_exemption_ind sme_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.pfe_with_mlplctn_fctr retail_million_eur.new_rw_vl
#!link exposure.pfe_with_mlplctn_fctr retail_million_eur.orgnl_rw_vl
#!link exposure.pfe_with_mlplctn_fctr retail_million_eur.new_enm_cntrprty_typ
#!link exposure.pfe_with_mlplctn_fctr retail_million_eur.orgnl_cntrprty_typ
#!link exposure.pfe_with_mlplctn_fctr sme_limit_eur.new_sme_fctr
#!link exposure.pfe_with_mlplctn_fctr retail_million_eur_irb.new_enm_cntrprty_typ
#!link exposure.pfe_with_mlplctn_fctr retail_million_eur_irb.new_rw_method
#!link exposure.pfe_with_mlplctn_fctr sme_million_eur_irb.new_sme_fctr
#!link exposure.pfe_with_mlplctn_fctr retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.pfe_with_mlplctn_fctr retail_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.pfe_with_mlplctn_fctr retail_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.pfe_with_mlplctn_fctr sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.pfe_with_mlplctn_fctr sme_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.pfe_with_mlplctn_fctr sme_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.rc_with_mlplctn_fctr retail_million_eur.new_rw_vl
#!link exposure.rc_with_mlplctn_fctr retail_million_eur.orgnl_rw_vl
#!link exposure.rc_with_mlplctn_fctr retail_million_eur.new_enm_cntrprty_typ
#!link exposure.rc_with_mlplctn_fctr retail_million_eur.orgnl_cntrprty_typ
#!link exposure.rc_with_mlplctn_fctr sme_limit_eur.new_sme_fctr
#!link exposure.rc_with_mlplctn_fctr retail_million_eur_irb.new_enm_cntrprty_typ
#!link exposure.rc_with_mlplctn_fctr retail_million_eur_irb.new_rw_method
#!link exposure.rc_with_mlplctn_fctr sme_million_eur_irb.new_sme_fctr
#!link exposure.rc_with_mlplctn_fctr retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.rc_with_mlplctn_fctr retail_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.rc_with_mlplctn_fctr retail_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.rc_with_mlplctn_fctr sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.rc_with_mlplctn_fctr sme_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.rc_with_mlplctn_fctr sme_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.enm_cntrprty_typ retail_million_eur.new_rw_vl
#!link exposure.enm_cntrprty_typ retail_million_eur.orgnl_rw_vl
#!link exposure.enm_cntrprty_typ retail_million_eur.new_enm_cntrprty_typ
#!link exposure.enm_cntrprty_typ retail_million_eur.orgnl_cntrprty_typ
#!link exposure.enm_cntrprty_typ sme_limit_eur.new_sme_fctr
#!link exposure.enm_cntrprty_typ retail_million_eur_irb.new_enm_cntrprty_typ
#!link exposure.enm_cntrprty_typ retail_million_eur_irb.new_rw_method
#!link exposure.enm_cntrprty_typ sme_million_eur_irb.new_sme_fctr
#!link exposure.enm_cntrprty_typ retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.enm_cntrprty_typ retail_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.enm_cntrprty_typ retail_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.enm_cntrprty_typ sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.enm_cntrprty_typ sme_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.enm_cntrprty_typ sme_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.expsr_rw_vl_lmt retail_million_eur.new_rw_vl
#!link exposure.expsr_rw_vl_lmt retail_million_eur.orgnl_rw_vl
#!link exposure.expsr_rw_vl_lmt retail_million_eur.new_enm_cntrprty_typ
#!link exposure.expsr_rw_vl_lmt retail_million_eur.orgnl_cntrprty_typ
#!link exposure.expsr_rw_vl_lmt sme_limit_eur.new_sme_fctr
#!link exposure.expsr_rw_vl_lmt retail_million_eur_irb.new_enm_cntrprty_typ
#!link exposure.expsr_rw_vl_lmt retail_million_eur_irb.new_rw_method
#!link exposure.expsr_rw_vl_lmt sme_million_eur_irb.new_sme_fctr
#!link exposure.expsr_rw_vl_lmt retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.expsr_rw_vl_lmt retail_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.expsr_rw_vl_lmt retail_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.expsr_rw_vl_lmt sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.expsr_rw_vl_lmt sme_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.expsr_rw_vl_lmt sme_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.enm_rw_mthd_aftr_lmt_chck retail_million_eur.new_rw_vl
#!link exposure.enm_rw_mthd_aftr_lmt_chck retail_million_eur.orgnl_rw_vl
#!link exposure.enm_rw_mthd_aftr_lmt_chck retail_million_eur.new_enm_cntrprty_typ
#!link exposure.enm_rw_mthd_aftr_lmt_chck retail_million_eur.orgnl_cntrprty_typ
#!link exposure.enm_rw_mthd_aftr_lmt_chck sme_limit_eur.new_sme_fctr
#!link exposure.enm_rw_mthd_aftr_lmt_chck retail_million_eur_irb.new_enm_cntrprty_typ
#!link exposure.enm_rw_mthd_aftr_lmt_chck retail_million_eur_irb.new_rw_method
#!link exposure.enm_rw_mthd_aftr_lmt_chck sme_million_eur_irb.new_sme_fctr
#!link exposure.enm_rw_mthd_aftr_lmt_chck retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.enm_rw_mthd_aftr_lmt_chck retail_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.enm_rw_mthd_aftr_lmt_chck retail_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.enm_rw_mthd_aftr_lmt_chck sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.enm_rw_mthd_aftr_lmt_chck sme_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.enm_rw_mthd_aftr_lmt_chck sme_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.apply_rtl_lmt_chck_ind retail_million_eur.new_rw_vl
#!link exposure.apply_rtl_lmt_chck_ind retail_million_eur.orgnl_rw_vl
#!link exposure.apply_rtl_lmt_chck_ind retail_million_eur.new_enm_cntrprty_typ
#!link exposure.apply_rtl_lmt_chck_ind retail_million_eur.orgnl_cntrprty_typ
#!link exposure.apply_rtl_lmt_chck_ind sme_limit_eur.new_sme_fctr
#!link exposure.apply_rtl_lmt_chck_ind retail_million_eur_irb.new_enm_cntrprty_typ
#!link exposure.apply_rtl_lmt_chck_ind retail_million_eur_irb.new_rw_method
#!link exposure.apply_rtl_lmt_chck_ind sme_million_eur_irb.new_sme_fctr
#!link exposure.apply_rtl_lmt_chck_ind retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.apply_rtl_lmt_chck_ind retail_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.apply_rtl_lmt_chck_ind retail_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.apply_rtl_lmt_chck_ind sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.apply_rtl_lmt_chck_ind sme_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.apply_rtl_lmt_chck_ind sme_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.sme_sf_chck_ind retail_million_eur.new_rw_vl
#!link exposure.sme_sf_chck_ind retail_million_eur.orgnl_rw_vl
#!link exposure.sme_sf_chck_ind retail_million_eur.new_enm_cntrprty_typ
#!link exposure.sme_sf_chck_ind retail_million_eur.orgnl_cntrprty_typ
#!link exposure.sme_sf_chck_ind sme_limit_eur.new_sme_fctr
#!link exposure.sme_sf_chck_ind retail_million_eur_irb.new_enm_cntrprty_typ
#!link exposure.sme_sf_chck_ind retail_million_eur_irb.new_rw_method
#!link exposure.sme_sf_chck_ind sme_million_eur_irb.new_sme_fctr
#!link exposure.sme_sf_chck_ind retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.sme_sf_chck_ind retail_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.sme_sf_chck_ind retail_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.sme_sf_chck_ind sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.sme_sf_chck_ind sme_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.sme_sf_chck_ind sme_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.id_cntrprty retail_million_eur.new_rw_vl
#!link exposure.id_cntrprty retail_million_eur.orgnl_rw_vl
#!link exposure.id_cntrprty retail_million_eur.new_enm_cntrprty_typ
#!link exposure.id_cntrprty retail_million_eur.orgnl_cntrprty_typ
#!link exposure.id_cntrprty sme_limit_eur.new_sme_fctr
#!link exposure.id_cntrprty retail_million_eur_irb.new_enm_cntrprty_typ
#!link exposure.id_cntrprty retail_million_eur_irb.new_rw_method
#!link exposure.id_cntrprty sme_million_eur_irb.new_sme_fctr
#!link exposure.id_cntrprty retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.id_cntrprty retail_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.id_cntrprty retail_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.id_cntrprty sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.id_cntrprty sme_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.id_cntrprty sme_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.enm_expsr_clcltn_mthd retail_million_eur.new_rw_vl
#!link exposure.enm_expsr_clcltn_mthd retail_million_eur.orgnl_rw_vl
#!link exposure.enm_expsr_clcltn_mthd retail_million_eur.new_enm_cntrprty_typ
#!link exposure.enm_expsr_clcltn_mthd retail_million_eur.orgnl_cntrprty_typ
#!link exposure.enm_expsr_clcltn_mthd sme_limit_eur.new_sme_fctr
#!link exposure.enm_expsr_clcltn_mthd retail_million_eur_irb.new_enm_cntrprty_typ
#!link exposure.enm_expsr_clcltn_mthd retail_million_eur_irb.new_rw_method
#!link exposure.enm_expsr_clcltn_mthd sme_million_eur_irb.new_sme_fctr
#!link exposure.enm_expsr_clcltn_mthd retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.enm_expsr_clcltn_mthd retail_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.enm_expsr_clcltn_mthd retail_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.enm_expsr_clcltn_mthd sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.enm_expsr_clcltn_mthd sme_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.enm_expsr_clcltn_mthd sme_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.fx_rate retail_million_eur.new_rw_vl
#!link exposure.fx_rate retail_million_eur.orgnl_rw_vl
#!link exposure.fx_rate retail_million_eur.new_enm_cntrprty_typ
#!link exposure.fx_rate retail_million_eur.orgnl_cntrprty_typ
#!link exposure.fx_rate sme_limit_eur.new_sme_fctr
#!link exposure.fx_rate retail_million_eur_irb.new_enm_cntrprty_typ
#!link exposure.fx_rate retail_million_eur_irb.new_rw_method
#!link exposure.fx_rate sme_million_eur_irb.new_sme_fctr
#!link exposure.fx_rate retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.fx_rate retail_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.fx_rate retail_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.fx_rate sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.fx_rate sme_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.fx_rate sme_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.expsr_zero_hrct_elgbl_ind alloc.expsr_amnt
#!link exposure.expsr_zero_hrct_elgbl_ind alloc.clltrl_allctd_prcntg
#!link exposure.expsr_zero_hrct_elgbl_ind alloc.allctd_clltrl
#!link exposure.expsr_zero_hrct_elgbl_ind alloc.expsr_hrct_amnt
#!link exposure.expsr_zero_hrct_elgbl_ind alloc.expsr_aftr_crm
#!link exposure.expsr_zero_hrct_elgbl_ind prep_c.expsr_amnt
#!link exposure.expsr_zero_hrct_elgbl_ind prep_c.expsr_hrct
#!link exposure.expsr_zero_hrct_elgbl_ind prep_c.expsr_hrct_amnt
#!link exposure.expsr_zero_hrct_elgbl_ind prep_r.expsr_amnt
#!link exposure.expsr_zero_hrct_elgbl_ind prep_r.expsr_hrct
#!link exposure.expsr_zero_hrct_elgbl_ind prep_r.expsr_hrct_amnt
#!link exposure.expsr_zero_hrct_elgbl_ind prep_g.expsr_amnt
#!link exposure.expsr_zero_hrct_elgbl_ind prep_g.expsr_hrct
#!link exposure.expsr_zero_hrct_elgbl_ind prep_g.expsr_hrct_amnt
#!link exposure.expsr_zero_hrct_elgbl_ind prep_s.expsr_amnt
#!link exposure.expsr_zero_hrct_elgbl_ind prep_s.expsr_hrct
#!link exposure.expsr_zero_hrct_elgbl_ind prep_s.expsr_hrct_amnt
#!link exposure.apply_ccf_bfr_crm_ind alloc.expsr_amnt
#!link exposure.apply_ccf_bfr_crm_ind alloc.clltrl_allctd_prcntg
#!link exposure.apply_ccf_bfr_crm_ind alloc.allctd_clltrl
#!link exposure.apply_ccf_bfr_crm_ind alloc.expsr_hrct_amnt
#!link exposure.apply_ccf_bfr_crm_ind alloc.expsr_aftr_crm
#!link exposure.apply_ccf_bfr_crm_ind prep_c.expsr_amnt
#!link exposure.apply_ccf_bfr_crm_ind prep_c.expsr_hrct
#!link exposure.apply_ccf_bfr_crm_ind prep_c.expsr_hrct_amnt
#!link exposure.apply_ccf_bfr_crm_ind prep_r.expsr_amnt
#!link exposure.apply_ccf_bfr_crm_ind prep_r.expsr_hrct
#!link exposure.apply_ccf_bfr_crm_ind prep_r.expsr_hrct_amnt
#!link exposure.apply_ccf_bfr_crm_ind prep_g.expsr_amnt
#!link exposure.apply_ccf_bfr_crm_ind prep_g.expsr_hrct
#!link exposure.apply_ccf_bfr_crm_ind prep_g.expsr_hrct_amnt
#!link exposure.apply_ccf_bfr_crm_ind prep_s.expsr_amnt
#!link exposure.apply_ccf_bfr_crm_ind prep_s.expsr_hrct
#!link exposure.apply_ccf_bfr_crm_ind prep_s.expsr_hrct_amnt
#!link exposure.irb_prprty_thrshld alloc.clltrl_allctd_prcntg
#!link exposure.irb_prprty_thrshld alloc.allctd_clltrl
#!link exposure.irb_prprty_thrshld alloc.expsr_hrct_amnt
#!link exposure.irb_prprty_thrshld alloc.expsr_aftr_crm
#!link exposure.irb_prprty_thrshld_ind alloc.clltrl_allctd_prcntg
#!link exposure.irb_prprty_thrshld_ind alloc.allctd_clltrl
#!link exposure.irb_prprty_thrshld_ind alloc.expsr_hrct_amnt
#!link exposure.irb_prprty_thrshld_ind alloc.expsr_aftr_crm
#!link exposure.enm_rw_mthd alloc.id_expsr_unique
#!link exposure.enm_rw_mthd alloc.id_clltrl_unique
#!link exposure.enm_rw_mthd retail_million_eur.new_rw_vl
#!link exposure.enm_rw_mthd retail_million_eur.orgnl_rw_vl
#!link exposure.enm_rw_mthd retail_million_eur.new_enm_cntrprty_typ
#!link exposure.enm_rw_mthd retail_million_eur.orgnl_cntrprty_typ
#!link exposure.enm_rw_mthd sme_limit_eur.new_sme_fctr
#!link exposure.enm_rw_mthd retail_million_eur_irb.new_enm_cntrprty_typ
#!link exposure.enm_rw_mthd retail_million_eur_irb.new_rw_method
#!link exposure.enm_rw_mthd sme_million_eur_irb.new_sme_fctr
#!link exposure.enm_rw_mthd retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.enm_rw_mthd retail_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.enm_rw_mthd retail_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.enm_rw_mthd sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link exposure.enm_rw_mthd sme_million_gcc_exempt.exmptn_amnts_ip
#!link exposure.enm_rw_mthd sme_million_gcc_exempt.ttl_exmptn_amnts
#!link exposure.dltn_rsk_expsr_ind alloc.id_expsr_unique
#!link exposure.dltn_rsk_expsr_ind alloc.id_clltrl_unique
#!link pre_crm.pre_crm_sqnc alloc.id_expsr_unique
#!link pre_crm.pre_crm_sqnc alloc.id_clltrl_unique
#!link pre_crm.pre_crm_sqnc retail_million_eur.id_expsr_unique
#!link pre_crm.pre_crm_sqnc retail_million_eur_irb.id_expsr_unique
#!link pre_crm.pre_crm_sqnc sme_million_eur_irb.id_expsr_unique
#!link pre_crm.pre_crm_sqnc sme_million_eur_irb.id_expsr_unique
#!link pre_crm.pre_crm_sqnc retail_million_gcc_exempt.id_ultmt_prnt
#!link pre_crm.pre_crm_sqnc sme_million_gcc_exempt.id_ultmt_prnt
#!link pre_crm.entity_pre_crm alloc.entity
#!link pre_crm.entity_pre_crm prep_c.entity
#!link pre_crm.entity_pre_crm prep_r.entity
#!link pre_crm.entity_pre_crm prep_g.entity
#!link pre_crm.entity_pre_crm prep_s.entity
#!link pre_crm.entity_pre_crm retail_million_eur.entity
#!link pre_crm.entity_pre_crm sme_limit_eur.entity
#!link pre_crm.entity_pre_crm retail_million_eur_irb.entity
#!link pre_crm.entity_pre_crm sme_million_eur_irb.entity
#!link pre_crm.entity_pre_crm retail_million_gcc_exempt.entity
#!link pre_crm.entity_pre_crm sme_million_gcc_exempt.entity
#!link pledge.entity alloc.entity
#!link pledge.id_pldg_rcvr alloc.id_expsr_unique
#!link pledge.id_pldg_grntr alloc.id_clltrl_unique
#!link pledge.id_pldg_rcvr prep_c.id_expsr_unique
#!link pledge.id_pldg_grntr prep_c.id_clltrl_unique
#!link pledge.id_pldg_rcvr prep_r.id_expsr_unique
#!link pledge.id_pldg_grntr prep_r.id_clltrl_unique
#!link pledge.id_pldg_rcvr prep_g.id_expsr_unique
#!link pledge.id_pldg_grntr prep_g.id_clltrl_unique
#!link pledge.id_pldg_rcvr prep_s.id_expsr_unique
#!link pledge.id_pldg_grntr prep_s.id_clltrl_unique
#!link pledge.pldg_typ alloc.id_expsr_unique
#!link pledge.pldg_typ alloc.id_clltrl_unique
#!link pledge.pldg_typ prep_c.id_expsr_unique
#!link pledge.pldg_typ prep_c.id_clltrl_unique
#!link pledge.pldg_typ prep_r.id_expsr_unique
#!link pledge.pldg_typ prep_r.id_clltrl_unique
#!link pledge.pldg_typ prep_g.id_expsr_unique
#!link pledge.pldg_typ prep_g.id_clltrl_unique
#!link pledge.pldg_typ prep_s.id_expsr_unique
#!link pledge.pldg_typ prep_s.id_clltrl_unique
#!link pledge.pldg_amnt alloc.clltrl_allctd_prcntg
#!link pledge.pldg_amnt alloc.allctd_clltrl
#!link retail_limit.id_ultmt_prnt retail_million_eur.entity
#!link retail_limit.id_ultmt_prnt retail_million_eur.id_expsr_unique
#!link retail_limit.id_ultmt_prnt retail_million_eur.new_rw_vl
#!link retail_limit.id_ultmt_prnt retail_million_eur.orgnl_rw_vl
#!link retail_limit.id_ultmt_prnt retail_million_eur.new_enm_cntrprty_typ
#!link retail_limit.id_ultmt_prnt retail_million_eur.orgnl_cntrprty_typ
#!link retail_limit.id_ultmt_prnt retail_million_eur.mrtgg_expsr_clss_ind
#!link retail_limit.id_ultmt_prnt retail_million_eur_irb.entity
#!link retail_limit.id_ultmt_prnt retail_million_eur_irb.id_expsr_unique
#!link retail_limit.id_ultmt_prnt retail_million_eur_irb.new_enm_cntrprty_typ
#!link retail_limit.id_ultmt_prnt retail_million_eur_irb.orgnl_cntrprty_typ
#!link retail_limit.id_ultmt_prnt retail_million_eur_irb.new_rw_method
#!link retail_limit.id_ultmt_prnt retail_million_eur_irb.old_rw_method
#!link retail_limit.id_ultmt_prnt retail_million_gcc_exempt.entity
#!link retail_limit.id_ultmt_prnt retail_million_gcc_exempt.id_ultmt_prnt
#!link retail_limit.id_ultmt_prnt retail_million_gcc_exempt.fnl_ttl_expsrs
#!link retail_limit.id_ultmt_prnt retail_million_gcc_exempt.ttl_obs_expsrs_eur
#!link retail_limit.id_ultmt_prnt retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link retail_limit.id_ultmt_prnt retail_million_gcc_exempt.exmptn_amnts_ip
#!link retail_limit.id_ultmt_prnt retail_million_gcc_exempt.ttl_exmptn_amnts
#!link retail_limit.id_ultmt_prnt retail_million_gcc_exempt.ttl_amnt_owd
#!link retail_limit.id_ultmt_prnt retail_million_gcc_exempt.breached_ind
#!link retail_limit.id_prty retail_million_eur.entity
#!link retail_limit.id_prty retail_million_eur.id_expsr_unique
#!link retail_limit.id_prty retail_million_eur.new_rw_vl
#!link retail_limit.id_prty retail_million_eur.orgnl_rw_vl
#!link retail_limit.id_prty retail_million_eur.new_enm_cntrprty_typ
#!link retail_limit.id_prty retail_million_eur.orgnl_cntrprty_typ
#!link retail_limit.id_prty retail_million_eur.mrtgg_expsr_clss_ind
#!link retail_limit.id_prty retail_million_eur_irb.entity
#!link retail_limit.id_prty retail_million_eur_irb.id_expsr_unique
#!link retail_limit.id_prty retail_million_eur_irb.new_enm_cntrprty_typ
#!link retail_limit.id_prty retail_million_eur_irb.orgnl_cntrprty_typ
#!link retail_limit.id_prty retail_million_eur_irb.new_rw_method
#!link retail_limit.id_prty retail_million_eur_irb.old_rw_method
#!link retail_limit.id_prty retail_million_gcc_exempt.entity
#!link retail_limit.id_prty retail_million_gcc_exempt.id_ultmt_prnt
#!link retail_limit.id_prty retail_million_gcc_exempt.fnl_ttl_expsrs
#!link retail_limit.id_prty retail_million_gcc_exempt.ttl_obs_expsrs_eur
#!link retail_limit.id_prty retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link retail_limit.id_prty retail_million_gcc_exempt.exmptn_amnts_ip
#!link retail_limit.id_prty retail_million_gcc_exempt.ttl_exmptn_amnts
#!link retail_limit.id_prty retail_million_gcc_exempt.ttl_amnt_owd
#!link retail_limit.id_prty retail_million_gcc_exempt.breached_ind
#!link retail_limit.fnl_ttl_expsrs retail_million_eur.entity
#!link retail_limit.fnl_ttl_expsrs retail_million_eur.id_expsr_unique
#!link retail_limit.fnl_ttl_expsrs retail_million_eur.new_rw_vl
#!link retail_limit.fnl_ttl_expsrs retail_million_eur.orgnl_rw_vl
#!link retail_limit.fnl_ttl_expsrs retail_million_eur.new_enm_cntrprty_typ
#!link retail_limit.fnl_ttl_expsrs retail_million_eur.orgnl_cntrprty_typ
#!link retail_limit.fnl_ttl_expsrs retail_million_eur.mrtgg_expsr_clss_ind
#!link retail_limit.fnl_ttl_expsrs retail_million_eur_irb.entity
#!link retail_limit.fnl_ttl_expsrs retail_million_eur_irb.id_expsr_unique
#!link retail_limit.fnl_ttl_expsrs retail_million_eur_irb.new_enm_cntrprty_typ
#!link retail_limit.fnl_ttl_expsrs retail_million_eur_irb.orgnl_cntrprty_typ
#!link retail_limit.fnl_ttl_expsrs retail_million_eur_irb.new_rw_method
#!link retail_limit.fnl_ttl_expsrs retail_million_eur_irb.old_rw_method
#!link retail_limit.fnl_ttl_expsrs retail_million_gcc_exempt.entity
#!link retail_limit.fnl_ttl_expsrs retail_million_gcc_exempt.id_ultmt_prnt
#!link retail_limit.fnl_ttl_expsrs retail_million_gcc_exempt.fnl_ttl_expsrs
#!link retail_limit.fnl_ttl_expsrs retail_million_gcc_exempt.ttl_obs_expsrs_eur
#!link retail_limit.fnl_ttl_expsrs retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link retail_limit.fnl_ttl_expsrs retail_million_gcc_exempt.exmptn_amnts_ip
#!link retail_limit.fnl_ttl_expsrs retail_million_gcc_exempt.ttl_exmptn_amnts
#!link retail_limit.fnl_ttl_expsrs retail_million_gcc_exempt.ttl_amnt_owd
#!link retail_limit.fnl_ttl_expsrs retail_million_gcc_exempt.breached_ind
#!link retail_limit.ttl_obs_expsrs_eur retail_million_eur.entity
#!link retail_limit.ttl_obs_expsrs_eur retail_million_eur.id_expsr_unique
#!link retail_limit.ttl_obs_expsrs_eur retail_million_eur.new_rw_vl
#!link retail_limit.ttl_obs_expsrs_eur retail_million_eur.orgnl_rw_vl
#!link retail_limit.ttl_obs_expsrs_eur retail_million_eur.new_enm_cntrprty_typ
#!link retail_limit.ttl_obs_expsrs_eur retail_million_eur.orgnl_cntrprty_typ
#!link retail_limit.ttl_obs_expsrs_eur retail_million_eur.mrtgg_expsr_clss_ind
#!link retail_limit.ttl_obs_expsrs_eur retail_million_eur_irb.entity
#!link retail_limit.ttl_obs_expsrs_eur retail_million_eur_irb.id_expsr_unique
#!link retail_limit.ttl_obs_expsrs_eur retail_million_eur_irb.new_enm_cntrprty_typ
#!link retail_limit.ttl_obs_expsrs_eur retail_million_eur_irb.orgnl_cntrprty_typ
#!link retail_limit.ttl_obs_expsrs_eur retail_million_eur_irb.new_rw_method
#!link retail_limit.ttl_obs_expsrs_eur retail_million_eur_irb.old_rw_method
#!link retail_limit.ttl_obs_expsrs_eur retail_million_gcc_exempt.entity
#!link retail_limit.ttl_obs_expsrs_eur retail_million_gcc_exempt.id_ultmt_prnt
#!link retail_limit.ttl_obs_expsrs_eur retail_million_gcc_exempt.fnl_ttl_expsrs
#!link retail_limit.ttl_obs_expsrs_eur retail_million_gcc_exempt.ttl_obs_expsrs_eur
#!link retail_limit.ttl_obs_expsrs_eur retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link retail_limit.ttl_obs_expsrs_eur retail_million_gcc_exempt.exmptn_amnts_ip
#!link retail_limit.ttl_obs_expsrs_eur retail_million_gcc_exempt.ttl_exmptn_amnts
#!link retail_limit.ttl_obs_expsrs_eur retail_million_gcc_exempt.ttl_amnt_owd
#!link retail_limit.ttl_obs_expsrs_eur retail_million_gcc_exempt.breached_ind
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_eur.entity
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_eur.id_expsr_unique
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_eur.new_rw_vl
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_eur.orgnl_rw_vl
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_eur.new_enm_cntrprty_typ
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_eur.orgnl_cntrprty_typ
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_eur.mrtgg_expsr_clss_ind
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_eur_irb.entity
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_eur_irb.id_expsr_unique
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_eur_irb.new_enm_cntrprty_typ
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_eur_irb.orgnl_cntrprty_typ
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_eur_irb.new_rw_method
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_eur_irb.old_rw_method
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_gcc_exempt.entity
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_gcc_exempt.id_ultmt_prnt
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_gcc_exempt.fnl_ttl_expsrs
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_gcc_exempt.ttl_obs_expsrs_eur
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_gcc_exempt.exmptn_amnts_ip
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_gcc_exempt.ttl_exmptn_amnts
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_gcc_exempt.ttl_amnt_owd
#!link retail_limit.ttl_expsrs_excldng_obs retail_million_gcc_exempt.breached_ind
#!link retail_limit.entity_limit retail_million_eur.entity
#!link retail_limit.entity_limit retail_million_eur.id_expsr_unique
#!link retail_limit.entity_limit retail_million_eur.new_rw_vl
#!link retail_limit.entity_limit retail_million_eur.orgnl_rw_vl
#!link retail_limit.entity_limit retail_million_eur.new_enm_cntrprty_typ
#!link retail_limit.entity_limit retail_million_eur.orgnl_cntrprty_typ
#!link retail_limit.entity_limit retail_million_eur.mrtgg_expsr_clss_ind
#!link retail_limit.entity_limit retail_million_eur_irb.entity
#!link retail_limit.entity_limit retail_million_eur_irb.id_expsr_unique
#!link retail_limit.entity_limit retail_million_eur_irb.new_enm_cntrprty_typ
#!link retail_limit.entity_limit retail_million_eur_irb.orgnl_cntrprty_typ
#!link retail_limit.entity_limit retail_million_eur_irb.new_rw_method
#!link retail_limit.entity_limit retail_million_eur_irb.old_rw_method
#!link retail_limit.entity_limit retail_million_gcc_exempt.entity
#!link retail_limit.entity_limit retail_million_gcc_exempt.id_ultmt_prnt
#!link retail_limit.entity_limit retail_million_gcc_exempt.fnl_ttl_expsrs
#!link retail_limit.entity_limit retail_million_gcc_exempt.ttl_obs_expsrs_eur
#!link retail_limit.entity_limit retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link retail_limit.entity_limit retail_million_gcc_exempt.exmptn_amnts_ip
#!link retail_limit.entity_limit retail_million_gcc_exempt.ttl_exmptn_amnts
#!link retail_limit.entity_limit retail_million_gcc_exempt.ttl_amnt_owd
#!link retail_limit.entity_limit retail_million_gcc_exempt.breached_ind
#!link retail_limit.mxd_rw_mthd_gcc retail_million_eur.entity
#!link retail_limit.mxd_rw_mthd_gcc retail_million_eur.id_expsr_unique
#!link retail_limit.mxd_rw_mthd_gcc retail_million_eur.new_rw_vl
#!link retail_limit.mxd_rw_mthd_gcc retail_million_eur.orgnl_rw_vl
#!link retail_limit.mxd_rw_mthd_gcc retail_million_eur.new_enm_cntrprty_typ
#!link retail_limit.mxd_rw_mthd_gcc retail_million_eur.orgnl_cntrprty_typ
#!link retail_limit.mxd_rw_mthd_gcc retail_million_eur.mrtgg_expsr_clss_ind
#!link retail_limit.mxd_rw_mthd_gcc retail_million_eur_irb.entity
#!link retail_limit.mxd_rw_mthd_gcc retail_million_eur_irb.id_expsr_unique
#!link retail_limit.mxd_rw_mthd_gcc retail_million_eur_irb.new_enm_cntrprty_typ
#!link retail_limit.mxd_rw_mthd_gcc retail_million_eur_irb.orgnl_cntrprty_typ
#!link retail_limit.mxd_rw_mthd_gcc retail_million_eur_irb.new_rw_method
#!link retail_limit.mxd_rw_mthd_gcc retail_million_eur_irb.old_rw_method
#!link retail_limit.mxd_rw_mthd_gcc retail_million_gcc_exempt.entity
#!link retail_limit.mxd_rw_mthd_gcc retail_million_gcc_exempt.id_ultmt_prnt
#!link retail_limit.mxd_rw_mthd_gcc retail_million_gcc_exempt.fnl_ttl_expsrs
#!link retail_limit.mxd_rw_mthd_gcc retail_million_gcc_exempt.ttl_obs_expsrs_eur
#!link retail_limit.mxd_rw_mthd_gcc retail_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link retail_limit.mxd_rw_mthd_gcc retail_million_gcc_exempt.exmptn_amnts_ip
#!link retail_limit.mxd_rw_mthd_gcc retail_million_gcc_exempt.ttl_exmptn_amnts
#!link retail_limit.mxd_rw_mthd_gcc retail_million_gcc_exempt.ttl_amnt_owd
#!link retail_limit.mxd_rw_mthd_gcc retail_million_gcc_exempt.breached_ind
#!link sme_limit.id_ultmt_prnt_sme sme_limit_eur.entity
#!link sme_limit.id_ultmt_prnt_sme sme_limit_eur.id_expsr_unique
#!link sme_limit.id_ultmt_prnt_sme sme_limit_eur.new_sme_fctr
#!link sme_limit.id_ultmt_prnt_sme sme_million_eur_irb.entity
#!link sme_limit.id_ultmt_prnt_sme sme_million_eur_irb.id_expsr_unique
#!link sme_limit.id_ultmt_prnt_sme sme_million_eur_irb.new_sme_fctr
#!link sme_limit.id_ultmt_prnt_sme sme_million_gcc_exempt.entity
#!link sme_limit.id_ultmt_prnt_sme sme_million_gcc_exempt.id_ultmt_prnt
#!link sme_limit.id_ultmt_prnt_sme sme_million_gcc_exempt.fnl_ttl_expsrs
#!link sme_limit.id_ultmt_prnt_sme sme_million_gcc_exempt.ttl_obs_expsrs_eur
#!link sme_limit.id_ultmt_prnt_sme sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link sme_limit.id_ultmt_prnt_sme sme_million_gcc_exempt.exmptn_amnts_ip
#!link sme_limit.id_ultmt_prnt_sme sme_million_gcc_exempt.ttl_exmptn_amnts
#!link sme_limit.id_ultmt_prnt_sme sme_million_gcc_exempt.ttl_amnt_owd
#!link sme_limit.id_ultmt_prnt_sme sme_million_gcc_exempt.new_sme_fctr
#!link sme_limit.id_prty_sme sme_limit_eur.entity
#!link sme_limit.id_prty_sme sme_limit_eur.id_expsr_unique
#!link sme_limit.id_prty_sme sme_limit_eur.new_sme_fctr
#!link sme_limit.id_prty_sme sme_million_eur_irb.entity
#!link sme_limit.id_prty_sme sme_million_eur_irb.id_expsr_unique
#!link sme_limit.id_prty_sme sme_million_eur_irb.new_sme_fctr
#!link sme_limit.id_prty_sme sme_million_gcc_exempt.entity
#!link sme_limit.id_prty_sme sme_million_gcc_exempt.id_ultmt_prnt
#!link sme_limit.id_prty_sme sme_million_gcc_exempt.fnl_ttl_expsrs
#!link sme_limit.id_prty_sme sme_million_gcc_exempt.ttl_obs_expsrs_eur
#!link sme_limit.id_prty_sme sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link sme_limit.id_prty_sme sme_million_gcc_exempt.exmptn_amnts_ip
#!link sme_limit.id_prty_sme sme_million_gcc_exempt.ttl_exmptn_amnts
#!link sme_limit.id_prty_sme sme_million_gcc_exempt.ttl_amnt_owd
#!link sme_limit.id_prty_sme sme_million_gcc_exempt.new_sme_fctr
#!link sme_limit.fnl_ttl_expsrs_sme sme_limit_eur.entity
#!link sme_limit.fnl_ttl_expsrs_sme sme_limit_eur.id_expsr_unique
#!link sme_limit.fnl_ttl_expsrs_sme sme_limit_eur.new_sme_fctr
#!link sme_limit.fnl_ttl_expsrs_sme sme_million_eur_irb.entity
#!link sme_limit.fnl_ttl_expsrs_sme sme_million_eur_irb.id_expsr_unique
#!link sme_limit.fnl_ttl_expsrs_sme sme_million_eur_irb.new_sme_fctr
#!link sme_limit.fnl_ttl_expsrs_sme sme_million_gcc_exempt.entity
#!link sme_limit.fnl_ttl_expsrs_sme sme_million_gcc_exempt.id_ultmt_prnt
#!link sme_limit.fnl_ttl_expsrs_sme sme_million_gcc_exempt.fnl_ttl_expsrs
#!link sme_limit.fnl_ttl_expsrs_sme sme_million_gcc_exempt.ttl_obs_expsrs_eur
#!link sme_limit.fnl_ttl_expsrs_sme sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link sme_limit.fnl_ttl_expsrs_sme sme_million_gcc_exempt.exmptn_amnts_ip
#!link sme_limit.fnl_ttl_expsrs_sme sme_million_gcc_exempt.ttl_exmptn_amnts
#!link sme_limit.fnl_ttl_expsrs_sme sme_million_gcc_exempt.ttl_amnt_owd
#!link sme_limit.fnl_ttl_expsrs_sme sme_million_gcc_exempt.new_sme_fctr
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_limit_eur.entity
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_limit_eur.id_expsr_unique
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_limit_eur.new_sme_fctr
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_million_eur_irb.entity
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_million_eur_irb.id_expsr_unique
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_million_eur_irb.new_sme_fctr
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_million_gcc_exempt.entity
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_million_gcc_exempt.id_ultmt_prnt
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_million_gcc_exempt.fnl_ttl_expsrs
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_million_gcc_exempt.ttl_obs_expsrs_eur
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_million_gcc_exempt.exmptn_amnts_ip
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_million_gcc_exempt.ttl_exmptn_amnts
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_million_gcc_exempt.ttl_amnt_owd
#!link sme_limit.ttl_obs_expsrs_eur_sme sme_million_gcc_exempt.new_sme_fctr
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_limit_eur.entity
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_limit_eur.id_expsr_unique
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_limit_eur.new_sme_fctr
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_million_eur_irb.entity
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_million_eur_irb.id_expsr_unique
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_million_eur_irb.new_sme_fctr
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_million_gcc_exempt.entity
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_million_gcc_exempt.id_ultmt_prnt
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_million_gcc_exempt.fnl_ttl_expsrs
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_million_gcc_exempt.ttl_obs_expsrs_eur
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_million_gcc_exempt.exmptn_amnts_ip
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_million_gcc_exempt.ttl_exmptn_amnts
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_million_gcc_exempt.ttl_amnt_owd
#!link sme_limit.ttl_expsrs_excldng_obs_sme sme_million_gcc_exempt.new_sme_fctr
#!link sme_limit.entity_sme sme_limit_eur.entity
#!link sme_limit.entity_sme sme_limit_eur.id_expsr_unique
#!link sme_limit.entity_sme sme_limit_eur.new_sme_fctr
#!link sme_limit.entity_sme sme_million_eur_irb.entity
#!link sme_limit.entity_sme sme_million_eur_irb.id_expsr_unique
#!link sme_limit.entity_sme sme_million_eur_irb.new_sme_fctr
#!link sme_limit.entity_sme sme_million_gcc_exempt.entity
#!link sme_limit.entity_sme sme_million_gcc_exempt.id_ultmt_prnt
#!link sme_limit.entity_sme sme_million_gcc_exempt.fnl_ttl_expsrs
#!link sme_limit.entity_sme sme_million_gcc_exempt.ttl_obs_expsrs_eur
#!link sme_limit.entity_sme sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link sme_limit.entity_sme sme_million_gcc_exempt.exmptn_amnts_ip
#!link sme_limit.entity_sme sme_million_gcc_exempt.ttl_exmptn_amnts
#!link sme_limit.entity_sme sme_million_gcc_exempt.ttl_amnt_owd
#!link sme_limit.entity_sme sme_million_gcc_exempt.new_sme_fctr
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_limit_eur.entity
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_limit_eur.id_expsr_unique
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_limit_eur.new_sme_fctr
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_million_eur_irb.entity
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_million_eur_irb.id_expsr_unique
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_million_eur_irb.new_sme_fctr
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_million_gcc_exempt.entity
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_million_gcc_exempt.id_ultmt_prnt
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_million_gcc_exempt.fnl_ttl_expsrs
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_million_gcc_exempt.ttl_obs_expsrs_eur
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_million_gcc_exempt.ttl_expsrs_excldng_obs
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_million_gcc_exempt.exmptn_amnts_ip
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_million_gcc_exempt.ttl_exmptn_amnts
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_million_gcc_exempt.ttl_amnt_owd
#!link sme_limit.mxd_rw_mthd_gcc_sme sme_million_gcc_exempt.new_sme_fctr
#!link mixed.clltrl_entity_mxd alloc.expsr_amnt
#!link mixed.clltrl_entity_mxd alloc.clltrl_allctd_prcntg
#!link mixed.clltrl_entity_mxd alloc.allctd_clltrl
#!link mixed.clltrl_entity_mxd alloc.id_expsr_unique
#!link mixed.clltrl_entity_mxd alloc.id_clltrl_unique
#!link mixed.clltrl_entity_mxd alloc.fndd_synthtc_ind
#!link mixed.clltrl_entity_mxd alloc.id_synthtc_expsr_unique
#!link mixed.clltrl_nttng_agrmnt_id_mxd alloc.expsr_amnt
#!link mixed.clltrl_nttng_agrmnt_id_mxd alloc.clltrl_allctd_prcntg
#!link mixed.clltrl_nttng_agrmnt_id_mxd alloc.allctd_clltrl
#!link mixed.clltrl_nttng_agrmnt_id_mxd alloc.id_expsr_unique
#!link mixed.clltrl_nttng_agrmnt_id_mxd alloc.id_clltrl_unique
#!link mixed.clltrl_nttng_agrmnt_id_mxd alloc.fndd_synthtc_ind
#!link mixed.clltrl_nttng_agrmnt_id_mxd alloc.id_synthtc_expsr_unique
#!link mixed.mxd_clltrl_pool_elgblty_ind alloc.expsr_amnt
#!link mixed.mxd_clltrl_pool_elgblty_ind alloc.clltrl_allctd_prcntg
#!link mixed.mxd_clltrl_pool_elgblty_ind alloc.allctd_clltrl
#!link mixed.mxd_clltrl_pool_elgblty_ind alloc.id_expsr_unique
#!link mixed.mxd_clltrl_pool_elgblty_ind alloc.id_clltrl_unique
#!link mixed.mxd_clltrl_pool_elgblty_ind alloc.fndd_synthtc_ind
#!link mixed.mxd_clltrl_pool_elgblty_ind alloc.id_synthtc_expsr_unique
#!link crm_pool.crm_entity alloc.id_expsr_unique
#!link crm_pool.crm_entity alloc.id_clltrl_unique
#!link crm_pool.crm_entity prep_c.id_expsr_unique
#!link crm_pool.crm_entity prep_r.id_expsr_unique
#!link crm_pool.crm_entity prep_g.id_expsr_unique
#!link crm_pool.crm_entity prep_s.id_expsr_unique
#!link crm_pool.crm_entity prep_c.id_clltrl_unique
#!link crm_pool.crm_entity prep_r.id_clltrl_unique
#!link crm_pool.crm_entity prep_g.id_clltrl_unique
#!link crm_pool.crm_entity prep_s.id_clltrl_unique
#!link crm_pool.crm_pool_id alloc.id_expsr_unique
#!link crm_pool.crm_pool_id alloc.id_clltrl_unique
#!link crm_pool.crm_pool_id prep_c.id_expsr_unique
#!link crm_pool.crm_pool_id prep_r.id_expsr_unique
#!link crm_pool.crm_pool_id prep_g.id_expsr_unique
#!link crm_pool.crm_pool_id prep_s.id_expsr_unique
#!link crm_pool.crm_pool_id prep_c.id_clltrl_unique
#!link crm_pool.crm_pool_id prep_r.id_clltrl_unique
#!link crm_pool.crm_pool_id prep_g.id_clltrl_unique
#!link crm_pool.crm_pool_id prep_s.id_clltrl_unique
#!link crm_pool.crm_step alloc.id_expsr_unique
#!link crm_pool.crm_step alloc.id_clltrl_unique
#!link crm_pool.crm_step prep_c.id_expsr_unique
#!link crm_pool.crm_step prep_r.id_expsr_unique
#!link crm_pool.crm_step prep_g.id_expsr_unique
#!link crm_pool.crm_step prep_s.id_expsr_unique
#!link crm_pool.crm_step prep_c.id_clltrl_unique
#!link crm_pool.crm_step prep_r.id_clltrl_unique
#!link crm_pool.crm_step prep_g.id_clltrl_unique
#!link crm_pool.crm_step prep_s.id_clltrl_unique
#!link fcsm.clltrl_entity_fcsm alloc.entity
#!link fcsm.clltrl_entity_fcsm prep_s.entity
#!link fcsm.id_clltrl_unique_fcsm alloc.id_clltrl_unique_fcsm
#!link fcsm.id_clltrl_unique_fcsm alloc.id_clltrl_unique
#!link fcsm.id_clltrl_unique_fcsm prep_s.id_clltrl_unique
#!link fcsm.clltrl_rw_vl_fcsm alloc.id_clltrl_unique
#!link fcsm.clltrl_rw_vl_fcsm alloc.id_expsr_unique
#!link fcsm.clltrl_rw_vl_fcsm prep_s.clltrl_rw_vl
#!link fcsm.clltrl_rw_vl_fcsm prep_s.id_expsr_unique
#!link fcsm.clltrl_rw_vl_fcsm prep_s.id_clltrl_unique
#!link fcsm.clltrl_amnt_fcsm alloc.allctd_clltrl
#!link fcsm.clltrl_amnt_fcsm alloc.expsr_aftr_crm
#!link fcsm.clltrl_amnt_fcsm prep_s.trgt_cfcnts
#!link fcsm.clltrl_amnt_fcsm prep_s.clltrl_amnt
#!link fcsm.clltrl_ccy_fcsm alloc.id_clltrl_unique
#!link fcsm.clltrl_ccy_fcsm alloc.id_expsr_unique
#!link fcsm.clltrl_ccy_fcsm alloc.hrct_amnt
#!link fcsm.clltrl_ccy_fcsm alloc.hrct_10dy_fx_amt
#!link fcsm.clltrl_ccy_fcsm alloc.expsr_aftr_crm
#!link fcsm.clltrl_ccy_fcsm alloc.allctd_clltrl
#!link fcsm.clltrl_ccy_fcsm alloc.clltrl_allctd_prcntg
#!link fcsm.clltrl_ccy_fcsm prep_s.id_expsr_unique
#!link fcsm.clltrl_ccy_fcsm prep_s.id_clltrl_unique
#!link fcsm.clltrl_ccy_fcsm prep_s.sclld_10dy_fx_hrct
#!link fcsm.clltrl_ccy_fcsm prep_s.clltrl_avlbl
#!link fcsm.clltrl_ccy_fcsm prep_s.trgt_cfcnts
#!link fcsm.clltrl_ccy_fcsm prep_s.amnt_lst_to_hrcts
#!link fcsm.id_clltrl_nttng_agrmnt_fcsm alloc.id_clltrl_unique
#!link fcsm.id_clltrl_nttng_agrmnt_fcsm alloc.id_expsr_unique
#!link fcsm.id_clltrl_nttng_agrmnt_fcsm prep_s.id_expsr_unique
#!link fcsm.id_clltrl_nttng_agrmnt_fcsm prep_s.id_clltrl_unique
#!link fcsm.clltrl_id_pldg_fcsm alloc.id_clltrl_unique
#!link fcsm.clltrl_id_pldg_fcsm alloc.id_expsr_unique
#!link fcsm.clltrl_id_pldg_fcsm prep_s.id_expsr_unique
#!link fcsm.clltrl_id_pldg_fcsm prep_s.id_clltrl_unique
#!link fcsm.clltrl_enm_pre_crm_sqnc_fcsm alloc.id_expsr_unique
#!link fcsm.clltrl_enm_pre_crm_sqnc_fcsm alloc.id_clltrl_unique
#!link fcsm.clltrl_enm_pre_crm_sqnc_fcsm prep_s.id_expsr_unique
#!link fcsm.clltrl_enm_pre_crm_sqnc_fcsm prep_s.id_clltrl_unique
#!link fcsm.clltrl_rsdl_mtrty_yrs_fcsm alloc.id_expsr_unique
#!link fcsm.clltrl_rsdl_mtrty_yrs_fcsm alloc.id_clltrl_unique
#!link fcsm.clltrl_rsdl_mtrty_yrs_fcsm prep_s.id_expsr_unique
#!link fcsm.clltrl_rsdl_mtrty_yrs_fcsm prep_s.id_clltrl_unique
#!link mortgage.mrtgg_entity alloc.entity
#!link mortgage.mrtgg_entity prep_r.entity
#!link mortgage.id_mrtgg_unique alloc.id_mrtgg_unique
#!link mortgage.id_mrtgg_unique alloc.id_expsr_unique
#!link mortgage.id_mrtgg_unique alloc.id_synthtc_expsr_unique
#!link mortgage.id_mrtgg_real_estt_pool alloc.id_expsr_unique
#!link mortgage.id_mrtgg_real_estt_pool alloc.id_synthtc_expsr_unique
#!link mortgage.id_mrtgg_real_estt_pool alloc.id_clltrl_unique
#!link mortgage.id_mrtgg_real_estt_pool prep_r.id_expsr_unique
#!link mortgage.id_mrtgg_real_estt_pool prep_r.id_clltrl_unique
#!link mortgage.id_trnch alloc.id_expsr_unique
#!link mortgage.id_trnch alloc.id_synthtc_expsr_unique
#!link mortgage.mrtgg_id_pldg alloc.id_expsr_unique
#!link mortgage.mrtgg_id_pldg alloc.id_synthtc_expsr_unique
#!link mortgage.mrtgg_id_pldg alloc.id_clltrl_unique
#!link mortgage.mrtgg_id_pldg prep_r.id_expsr_unique
#!link mortgage.mrtgg_id_pldg prep_r.id_clltrl_unique
#!link mortgage.mrtgg_enm_pre_crm_sqnc alloc.id_expsr_unique
#!link mortgage.mrtgg_enm_pre_crm_sqnc alloc.id_clltrl_unique
#!link mortgage.mrtgg_enm_pre_crm_sqnc prep_r.id_expsr_unique
#!link mortgage.mrtgg_enm_pre_crm_sqnc prep_r.id_clltrl_unique
#!link mortgage.mrtgg_amnt alloc.allctd_clltrl
#!link mortgage.mrtgg_amnt alloc.expsr_aftr_crm
#!link mortgage.mrtgg_amnt prep_r.trgt_cfcnts
#!link mortgage.mrtgg_amnt prep_r.clltrl_amnt
#!link mortgage.mrtgg_rw_vl alloc.id_expsr_unique
#!link mortgage.mrtgg_rw_vl alloc.expsr_amnt
#!link mortgage.mrtgg_rw_vl alloc.allctd_clltrl
#!link mortgage.mrtgg_rw_vl alloc.expsr_rw_vl
#!link mortgage.mrtgg_rw_vl alloc.expsr_aftr_crm
#!link mortgage.mrtgg_rw_vl prep_r.expsr_rw_vl
#!link mortgage.mrtgg_rw_vl prep_r.trgt_cfcnts
#!link guarantee.grnt_entity alloc.entity
#!link guarantee.grnt_entity prep_g.entity
#!link guarantee.id_grnt_unique alloc.id_grnt_unique
#!link guarantee.id_grnt_unique alloc.id_expsr_unique
#!link guarantee.id_grnt_unique alloc.id_synthtc_expsr_unique
#!link guarantee.id_grnt_unfndd_crm_pool alloc.id_expsr_unique
#!link guarantee.id_grnt_unfndd_crm_pool alloc.id_synthtc_expsr_unique
#!link guarantee.id_grnt_unfndd_crm_pool alloc.id_clltrl_unique
#!link guarantee.id_grnt_unfndd_crm_pool prep_g.id_expsr_unique
#!link guarantee.id_grnt_unfndd_crm_pool prep_g.id_clltrl_unique
#!link guarantee.grnt_id_pldg alloc.id_expsr_unique
#!link guarantee.grnt_id_pldg alloc.id_synthtc_expsr_unique
#!link guarantee.grnt_id_pldg alloc.id_clltrl_unique
#!link guarantee.grnt_id_pldg prep_g.id_expsr_unique
#!link guarantee.grnt_id_pldg prep_g.id_clltrl_unique
#!link guarantee.id_grnt_clltrl_nttng_agrmnt alloc.id_synthtc_expsr_unique
#!link guarantee.id_grnt_clltrl_nttng_agrmnt alloc.id_expsr_unique
#!link guarantee.grnt_enm_pre_crm_sqnc alloc.id_expsr_unique
#!link guarantee.grnt_enm_pre_crm_sqnc alloc.id_clltrl_unique
#!link guarantee.grnt_enm_pre_crm_sqnc prep_g.id_expsr_unique
#!link guarantee.grnt_enm_pre_crm_sqnc prep_g.id_clltrl_unique
#!link guarantee.grnt_ccy alloc.clltrl_allctd_prcntg
#!link guarantee.grnt_ccy alloc.hrct_amnt
#!link guarantee.grnt_ccy alloc.hrct_10dy_fx_amt
#!link guarantee.grnt_ccy alloc.expsr_aftr_crm
#!link guarantee.grnt_ccy alloc.allctd_clltrl
#!link guarantee.grnt_ccy prep_g.sclld_10dy_fx_hrct
#!link guarantee.grnt_ccy prep_g.trgt_cfcnts
#!link guarantee.grnt_ccy prep_g.amnt_lst_to_hrcts
#!link guarantee.grnt_mtrty_yrs alloc.hrct_amnt
#!link guarantee.grnt_mtrty_yrs alloc.expsr_aftr_crm
#!link guarantee.grnt_mtrty_yrs alloc.clltrl_allctd_prcntg
#!link guarantee.grnt_mtrty_yrs alloc.allctd_clltrl
#!link guarantee.grnt_mtrty_yrs prep_g.trgt_cfcnts
#!link guarantee.grnt_mtrty_yrs prep_g.amnt_lst_to_hrcts
#!link guarantee.grnt_mtrty_yrs prep_g.mtrty_msmtch_hrct
#!link guarantee.orgnl_mtrty_mnths alloc.hrct_amnt
#!link guarantee.orgnl_mtrty_mnths alloc.expsr_aftr_crm
#!link guarantee.orgnl_mtrty_mnths alloc.clltrl_allctd_prcntg
#!link guarantee.orgnl_mtrty_mnths alloc.allctd_clltrl
#!link guarantee.orgnl_mtrty_mnths prep_g.trgt_cfcnts
#!link guarantee.orgnl_mtrty_mnths prep_g.amnt_lst_to_hrcts
#!link guarantee.orgnl_mtrty_mnths prep_g.mtrty_msmtch_hrct
#!link guarantee.grnt_rw_vl alloc.id_expsr_unique
#!link guarantee.grnt_rw_vl alloc.expsr_amnt
#!link guarantee.grnt_rw_vl alloc.allctd_clltrl
#!link guarantee.grnt_rw_vl alloc.expsr_rw_vl
#!link guarantee.grnt_rw_vl alloc.expsr_aftr_crm
#!link guarantee.grnt_rw_vl prep_g.expsr_rw_vl
#!link guarantee.grnt_rw_vl prep_g.trgt_cfcnts
#!link guarantee.grnt_sclld_10dy_fx_hrct alloc.id_clltrl_unique
#!link guarantee.grnt_sclld_10dy_fx_hrct alloc.clltrl_allctd_prcntg
#!link guarantee.grnt_sclld_10dy_fx_hrct alloc.allctd_clltrl
#!link guarantee.grnt_sclld_10dy_fx_hrct alloc.hrct_amnt
#!link guarantee.grnt_sclld_10dy_fx_hrct alloc.hrct_10dy_fx_amt
#!link guarantee.grnt_sclld_10dy_fx_hrct alloc.expsr_aftr_crm
#!link guarantee.grnt_sclld_10dy_fx_hrct prep_g.sclld_10dy_fx_hrct
#!link guarantee.grnt_sclld_10dy_fx_hrct prep_g.trgt_cfcnts
#!link guarantee.grnt_sclld_10dy_fx_hrct prep_g.clltrl_avlbl
#!link guarantee.grnt_sclld_10dy_fx_hrct prep_g.amnt_lst_to_hrcts
#!link guarantee.grnt_amnt alloc.allctd_clltrl
#!link guarantee.grnt_amnt alloc.expsr_aftr_crm
#!link guarantee.grnt_amnt prep_g.trgt_cfcnts
#!link guarantee.grnt_amnt prep_g.clltrl_amnt
#!link guarantee.grnt_enm_irb_rcvbls_crm_typ alloc.id_expsr_unique
#!link guarantee.grnt_enm_irb_rcvbls_crm_typ alloc.id_clltrl_unique
#!link guarantee.grnt_enm_irb_rcvbls_crm_typ prep_g.id_expsr_unique
#!link guarantee.grnt_enm_irb_rcvbls_crm_typ prep_g.id_clltrl_unique
#!link fccm.clltrl_entity alloc.entity
#!link fccm.clltrl_entity prep_c.entity
#!link fccm.id_clltrl_unique alloc.id_clltrl_unique
#!link fccm.id_clltrl_unique alloc.id_expsr_unique
#!link fccm.id_clltrl_unique alloc.id_synthtc_expsr_unique
#!link fccm.clltrl_nttng_agrmnt_id alloc.id_expsr_unique
#!link fccm.clltrl_nttng_agrmnt_id alloc.id_synthtc_expsr_unique
#!link fccm.clltrl_nttng_agrmnt_id alloc.id_clltrl_unique
#!link fccm.clltrl_nttng_agrmnt_id prep_c.id_expsr_unique
#!link fccm.clltrl_nttng_agrmnt_id prep_c.id_clltrl_unique
#!link fccm.clltrl_id_pldg alloc.id_expsr_unique
#!link fccm.clltrl_id_pldg alloc.id_synthtc_expsr_unique
#!link fccm.clltrl_id_pldg alloc.id_clltrl_unique
#!link fccm.clltrl_id_pldg prep_c.id_expsr_unique
#!link fccm.clltrl_id_pldg prep_c.id_clltrl_unique
#!link fccm.clltrl_enm_pre_crm_sqnc alloc.id_expsr_unique
#!link fccm.clltrl_enm_pre_crm_sqnc alloc.id_clltrl_unique
#!link fccm.clltrl_enm_pre_crm_sqnc prep_c.id_expsr_unique
#!link fccm.clltrl_enm_pre_crm_sqnc prep_c.id_clltrl_unique
#!link fccm.clltrl_amnt alloc.allctd_clltrl
#!link fccm.clltrl_amnt alloc.expsr_aftr_crm
#!link fccm.clltrl_amnt prep_c.trgt_cfcnts
#!link fccm.clltrl_amnt prep_c.clltrl_amnt
#!link fccm.clltrl_ccy alloc.clltrl_allctd_prcntg
#!link fccm.clltrl_ccy alloc.hrct_amnt
#!link fccm.clltrl_ccy alloc.hrct_10dy_fx_amt
#!link fccm.clltrl_ccy alloc.expsr_aftr_crm
#!link fccm.clltrl_ccy alloc.allctd_clltrl
#!link fccm.clltrl_ccy prep_c.sclld_10dy_fx_hrct
#!link fccm.clltrl_ccy prep_c.trgt_cfcnts
#!link fccm.clltrl_ccy prep_c.amnt_lst_to_hrcts
#!link fccm.sclld_10dy_fx_hrct alloc.id_clltrl_unique
#!link fccm.sclld_10dy_fx_hrct alloc.clltrl_allctd_prcntg
#!link fccm.sclld_10dy_fx_hrct alloc.allctd_clltrl
#!link fccm.sclld_10dy_fx_hrct alloc.hrct_amnt
#!link fccm.sclld_10dy_fx_hrct alloc.hrct_10dy_fx_amt
#!link fccm.sclld_10dy_fx_hrct alloc.expsr_aftr_crm
#!link fccm.sclld_10dy_fx_hrct prep_c.sclld_10dy_fx_hrct
#!link fccm.sclld_10dy_fx_hrct prep_c.trgt_cfcnts
#!link fccm.sclld_10dy_fx_hrct prep_c.clltrl_avlbl
#!link fccm.sclld_10dy_fx_hrct prep_c.amnt_lst_to_hrcts
#!link fccm.sclld_10dy_hrct alloc.id_clltrl_unique
#!link fccm.sclld_10dy_hrct alloc.clltrl_allctd_prcntg
#!link fccm.sclld_10dy_hrct alloc.allctd_clltrl
#!link fccm.sclld_10dy_hrct alloc.hrct_amnt
#!link fccm.sclld_10dy_hrct alloc.hrct_10dy_amt
#!link fccm.sclld_10dy_hrct alloc.expsr_aftr_crm
#!link fccm.sclld_10dy_hrct prep_c.sclld_10dy_hrct
#!link fccm.sclld_10dy_hrct prep_c.trgt_cfcnts
#!link fccm.sclld_10dy_hrct prep_c.clltrl_avlbl
#!link fccm.sclld_10dy_hrct prep_c.amnt_lst_to_hrcts
#!link fccm.clltrl_orgnl_mtrty_mnths alloc.hrct_amnt
#!link fccm.clltrl_orgnl_mtrty_mnths alloc.expsr_aftr_crm
#!link fccm.clltrl_orgnl_mtrty_mnths alloc.clltrl_allctd_prcntg
#!link fccm.clltrl_orgnl_mtrty_mnths alloc.allctd_clltrl
#!link fccm.clltrl_orgnl_mtrty_mnths prep_c.trgt_cfcnts
#!link fccm.clltrl_orgnl_mtrty_mnths prep_c.amnt_lst_to_hrcts
#!link fccm.clltrl_orgnl_mtrty_mnths prep_c.mtrty_msmtch_hrct
#!link fccm.clltrl_rsdl_mtrty_yrs alloc.hrct_amnt
#!link fccm.clltrl_rsdl_mtrty_yrs alloc.expsr_aftr_crm
#!link fccm.clltrl_rsdl_mtrty_yrs alloc.clltrl_allctd_prcntg
#!link fccm.clltrl_rsdl_mtrty_yrs alloc.allctd_clltrl
#!link fccm.clltrl_rsdl_mtrty_yrs prep_c.trgt_cfcnts
#!link fccm.clltrl_rsdl_mtrty_yrs prep_c.amnt_lst_to_hrcts
#!link fccm.clltrl_rsdl_mtrty_yrs prep_c.mtrty_msmtch_hrct
#!link fccm.irb_trgt_cffcnts_prrt alloc.id_expsr_unique
#!link fccm.irb_trgt_cffcnts_prrt alloc.id_clltrl_unique
#!link fccm.irb_trgt_cffcnts_prrt prep_c.trgt_cfcnts
#!link fccm.clltrl_zero_hrct_elgbl_ind alloc.id_clltrl_unique
#!link fccm.clltrl_zero_hrct_elgbl_ind alloc.clltrl_allctd_prcntg
#!link fccm.clltrl_zero_hrct_elgbl_ind alloc.allctd_clltrl
#!link fccm.clltrl_zero_hrct_elgbl_ind alloc.hrct_amnt
#!link fccm.clltrl_zero_hrct_elgbl_ind alloc.hrct_10dy_fx_amt
#!link fccm.clltrl_zero_hrct_elgbl_ind alloc.expsr_aftr_crm
#!link fccm.clltrl_zero_hrct_elgbl_ind prep_c.sclld_10dy_fx_hrct
#!link fccm.clltrl_zero_hrct_elgbl_ind prep_c.trgt_cfcnts
#!link fccm.clltrl_zero_hrct_elgbl_ind prep_c.clltrl_avlbl
#!link fccm.clltrl_zero_hrct_elgbl_ind prep_c.amnt_lst_to_hrcts
#!link fccm.clltrl_zero_hrct_elgbl_ind alloc.hrct_10dy_amt
#!link fccm.clltrl_zero_hrct_elgbl_ind prep_c.sclld_10dy_hrct
#!link fccm.clltrl_zero_hrct_elgbl_ind alloc.expsr_hrct_amnt
#!link fccm.clltrl_zero_hrct_elgbl_ind prep_c.expsr_hrct
#!link fccm.clltrl_zero_hrct_elgbl_ind prep_c.expsr_hrct_amnt
#!link fccm.mnm_thrshld alloc.id_expsr_unique
#!link fccm.mnm_thrshld alloc.id_synthtc_expsr_unique
#!link fccm.mnm_thrshld alloc.id_clltrl_unique
#!link fccm.mnm_thrshld alloc.allctd_clltrl
#!link fccm.mnm_thrshld alloc.clltrl_allctd_prcntg
#!link fccm.mnm_thrshld alloc.expsr_aftr_crm
#!link fccm.mxmm_thrshld alloc.id_expsr_unique
#!link fccm.mxmm_thrshld alloc.id_synthtc_expsr_unique
#!link fccm.mxmm_thrshld alloc.id_clltrl_unique
#!link fccm.mxmm_thrshld alloc.allctd_clltrl
#!link fccm.mxmm_thrshld alloc.clltrl_allctd_prcntg
#!link fccm.mxmm_thrshld alloc.expsr_aftr_crm
#!link fccm.irb_fndd_non_fnncl_ind alloc.id_expsr_unique
#!link fccm.irb_fndd_non_fnncl_ind alloc.id_synthtc_expsr_unique
#!link fccm.irb_fndd_non_fnncl_ind alloc.id_clltrl_unique
#!link fccm.irb_fndd_non_fnncl_ind alloc.fndd_synthtc_ind
#!link fccm.enm_crm_clss alloc.id_expsr_unique
#!link fccm.enm_crm_clss alloc.id_synthtc_expsr_unique
#!link fccm.enm_crm_clss alloc.id_clltrl_unique
#!link fccm.enm_crm_clss alloc.fndd_synthtc_ind
#!link fccm.clltrl_enm_irb_rcvbls_crm_typ alloc.id_expsr_unique
#!link fccm.clltrl_enm_irb_rcvbls_crm_typ alloc.id_synthtc_expsr_unique
#!link fccm.clltrl_enm_irb_rcvbls_crm_typ alloc.id_clltrl_unique
#!link fccm.clltrl_enm_irb_rcvbls_crm_typ alloc.fndd_synthtc_ind
#!link fccm.enm_prprty_typ retail_million_eur.id_expsr_unique
#!link fccm.enm_prprty_typ retail_million_eur.new_rw_vl
#!link fccm.enm_prprty_typ retail_million_eur.orgnl_rw_vl
#!link fccm.enm_prprty_typ retail_million_eur.new_enm_cntrprty_typ
#!link fccm.enm_prprty_typ retail_million_eur.orgnl_cntrprty_typ
#!link fccm.enm_prprty_typ retail_million_eur.mrtgg_expsr_clss_ind
#!link fccm.enm_prprty_typ sme_limit_eur.id_expsr_unique
#!link fccm.enm_prprty_typ sme_limit_eur.new_sme_fctr
#!link fccm.enm_prprty_typ retail_million_eur_irb.id_expsr_unique
#!link fccm.enm_prprty_typ retail_million_eur_irb.new_enm_cntrprty_typ
#!link fccm.enm_prprty_typ retail_million_eur_irb.orgnl_cntrprty_typ
#!link fccm.enm_prprty_typ retail_million_eur_irb.new_rw_method
#!link fccm.enm_prprty_typ retail_million_eur_irb.old_rw_method
#!link fccm.enm_prprty_typ sme_million_eur_irb.id_expsr_unique
#!link fccm.enm_prprty_typ sme_million_eur_irb.new_sme_fctr


installed_packages <- require("clpAPI") & require("data.table") & require("igraph");
parallel_enabled <- require("doParallel") & require("foreach");

if(installed_packages)
{
  
  library("clpAPI");
  library("data.table");
  library("igraph");
  
  print("##########SESSION INFO");
  print(sessionInfo());
  
  ptm <- proc.time();
  
  ## -------------------------------------------------------------------------------------------------
  ## Function: collateral_application
  ## Description: Collateral Allocation
  ## -------------------------------------------------------------------------------------------------
  collateral_application <- function(prob, ncolumns, nrows, rindex, col_index, lhs, column_lower_bound, column_upper_bound, target_coefs, row_lower_bound, row_upper_bound,pos_list,a_pool)
  {
    loadProblemCLP(prob, ncolumns, nrows, rindex, col_index, lhs, column_lower_bound, column_upper_bound, target_coefs, row_lower_bound, row_upper_bound);
    solveInitialPrimalCLP(prob);
    
    #Status != '0' means issue
    if(getSolStatusCLP(prob) != 0)
    {
      print('####STATUS');
      print(getSolStatusCLP(prob));
    }
    
    x <- getColPrimCLP(prob);
    x_num<- c(1:length(x));
    x_frame <- data.frame(pos=x_num,pct=x);
    
    delProbCLP(prob);
    
    return(merge(pos_list,x_frame, by.x = c('pos'), by.y= c('pos')));
  }
  
  ## -------------------------------------------------------------------------------------------------
  ## Function: crm_solver
  ## Description: Preparation of data for Collateral Allocation
  ## -------------------------------------------------------------------------------------------------
  crm_solver <- function(full_link_frame)
  {
    setkeyv(full_link_frame,c('id_ntwrk'));
    full_link_frame[id_lmt_pldg == 'N/A', id_lmt_pldg := NA];
    full_link_frame[,rank_exp := frank(id_expsr_unique,ties.method='dense'),by = c('id_ntwrk')];
    full_link_frame[,rank_col := frank(id_clltrl_unique,ties.method='dense'), by = c('id_ntwrk')];
    full_link_frame[,rank_pledge := frank(id_lmt_pldg,ties.method='dense',na.last="keep"), by = c('id_ntwrk')];
    setkeyv(full_link_frame,c("id_ntwrk","rank_exp","rank_col","rank_pledge"));
    full_link_frame[,c_index := cumsum(clmn_indx), by = c('id_ntwrk')];
    full_link_frame[,pos := sequence(.N), by = c('id_ntwrk')];
    
    unique_pledge <- unique(full_link_frame[,list(full_link_frame$rank_pledge,full_link_frame$lmt,full_link_frame$id_ntwrk)]);
    unique_pledge <- unique_pledge[which(!is.na(V1))];
    unique_pledge[,pledge_rank := sequence(.N), by = c('V3')];
    setnames(unique_pledge,c('V1','V3'),c('rank_pledge','id_ntwrk'));
    setkeyv(unique_pledge,c('id_ntwrk','pledge_rank'));
    
    unique_cols <- unique(full_link_frame[,list(full_link_frame$rank_col,full_link_frame$clltrl_amnt,full_link_frame$id_ntwrk)]);
    unique_cols[,col_rank := sequence(.N), by = c('V3')];
    setnames(unique_cols,c('V1','V3'),c('rank_col','id_ntwrk'));
    setkeyv(unique_cols,c('id_ntwrk','col_rank'));
    
    full_link_frame <- merge(full_link_frame,unique_cols, by.x = c('id_ntwrk','rank_col'), by.y = c('id_ntwrk','rank_col'));
    full_link_frame <- merge(full_link_frame,unique_pledge, by.x = c('id_ntwrk','rank_pledge'), by.y = c('id_ntwrk','rank_pledge'),all.x = TRUE);
    full_link_frame <- full_link_frame[order(id_ntwrk,pos)];
    
    pools <- unique(full_link_frame$id_ntwrk);
    
    exp_m <- full_link_frame[full_link_frame[, .I[which.max(rank_exp)], by=id_ntwrk]$V1,.(id_ntwrk,rank_exp)];
    col_n <- full_link_frame[full_link_frame[, .I[which.max(rank_col)], by=id_ntwrk]$V1,.(id_ntwrk,rank_col)];
    pledge_n <- full_link_frame[,.(id_ntwrk,rank_pledge)];
    pledge_n[is.na(rank_pledge),rank_pledge := 0];
    pledge_n <- pledge_n[pledge_n[, .I[which.max(rank_pledge)], by=id_ntwrk]$V1,.(id_ntwrk,rank_pledge)];
    col_index <- full_link_frame[,.(id_ntwrk,c_index)];
    target_coefs <- full_link_frame[,.(id_ntwrk,trgt_cfcnts)];
    
    rindex_table <- full_link_frame[,.(id_ntwrk,rank_exp,col_rank,pledge_rank)];
    rindex_table <- merge(rindex_table,exp_m,by.x=c('id_ntwrk'),by.y=c('id_ntwrk'));
    rindex_table <- merge(rindex_table,col_n,by.x=c('id_ntwrk'),by.y=c('id_ntwrk'));
    rindex_table[,col_exp := col_rank + rank_exp.y];
    rindex_table[,col_exp_pldg := pledge_rank + rank_col + rank_exp.y];
    
    row_upper_bound <- unique(full_link_frame[,list(full_link_frame$id_ntwrk,full_link_frame$rank_exp,full_link_frame$expsr_amnt)]);
    row_upper_bound[,V2 := NULL];
    setnames(row_upper_bound,c('V1','V3'),c('id_ntwrk','expsr_amnt'));
    
    row_lower_bound <- NULL;
    
    pos_list <- full_link_frame[,.(id_ntwrk,pos)];
    
    setindexv(col_n,c('id_ntwrk'));
    setindexv(exp_m,c('id_ntwrk'));
    setindexv(pledge_n,c('id_ntwrk'));
    setindexv(pos_list,c('id_ntwrk'));
    setindexv(col_index,c('id_ntwrk'));
    setindexv(target_coefs,c('id_ntwrk'));
    setindexv(rindex_table,c('id_ntwrk'));
    setindexv(row_upper_bound,c('id_ntwrk'));
    
    ncolumns <- full_link_frame[,.N,by=.(id_ntwrk)]
    setindexv(ncolumns,c('id_ntwrk'));
    
    max_pos_per_network <- full_link_frame[full_link_frame[, .I[which.max(pos)], by=id_ntwrk]$V1,.(id_ntwrk,pos)];
    setindexv(max_pos_per_network,c('id_ntwrk'));
    
    #Memory Cleanup
    rindex_table <- rindex_table[,.(id_ntwrk,rank_exp.x,col_exp,col_exp_pldg)]
    rindex_table[,rank_exp.x:= rank_exp.x -1];
    rindex_table[,col_exp := col_exp-1];
    rindex_table[,col_exp_pldg := col_exp_pldg-1];
    
    lhs_table <- full_link_frame[,.(id_ntwrk,clltrl_avlbl,clltrl_amnt,clltrl_trnsfrbl)];
    
    
    if(parallel_enabled & threads$nmbr_thrds > 0){
      library("doParallel");
      library("foreach");
      cl <- detectCores();
      
      if(threads$nmbr_thrds > cl){
        registerDoParallel(cl);
      } else{
        registerDoParallel(threads$nmbr_thrds);
      }
      
      print('####PARALLEL THREADS####');
      print(getDoParWorkers());
      print(getDoParName());
      
      final_link_frame <- rbindlist(foreach(a_pool=pools,.packages = c("data.table","clpAPI"),.export = c("rindex_table","lhs_table","row_upper_bound","unique_cols","unique_pledge","exp_m","col_n","pledge_n","max_pos_per_network","ncolumns","col_index","target_coefs","row_lower_bound","pos_list","collateral_application"),.inorder=FALSE) %dopar%{
        
        prob <- initProbCLP();
        setObjDirCLP(prob,-1);
        setLogLevelCLP(prob,0);
        
        rindex_aux <- rindex_table[id_ntwrk == a_pool];
        #rindex <- c(mapply(function(x,y,z) c(x-1,y-1,z-1), rindex_aux$rank_exp.x,rindex_aux$col_exp,rindex_aux$col_exp_pldg));
        #rindex <- rindex[which(!is.na(rindex))];
        rindex <- c(matrix(c(rindex_aux$rank_exp.x, rindex_aux$col_exp,rindex_aux$col_exp_pldg),3,byrow=T));
        rindex_aux <- NULL;
        rindex <-  rindex[which(!is.na(rindex))];
        
        
        lhs_aux <- lhs_table[id_ntwrk == a_pool,.(clltrl_avlbl,clltrl_amnt,clltrl_trnsfrbl)];
        #lhs <- c(mapply(function(x,y,z) c(x,y,z), lhs_aux$clltrl_avlbl,lhs_aux$clltrl_amnt,lhs_aux$clltrl_trnsfrbl));
        #lhs <- lhs[which(lhs > 0)];
        lhs <- c(matrix(c(lhs_aux$clltrl_avlbl,lhs_aux$clltrl_amnt,lhs_aux$clltrl_trnsfrbl),3,byrow=T));
        lhs_aux <- NULL;
        lhs <- lhs[which(lhs > 0)];
        
        row_upper_bound_a <- c(row_upper_bound[id_ntwrk== a_pool,expsr_amnt],unique_cols[id_ntwrk== a_pool,V2],unique_pledge[id_ntwrk== a_pool,V2]);
        nrows <- exp_m[id_ntwrk == a_pool,rank_exp] + col_n[id_ntwrk == a_pool,rank_col] + pledge_n[id_ntwrk == a_pool,rank_pledge];
        column_lower_bound <- rep(0,max_pos_per_network[id_ntwrk==a_pool,pos]);
        column_upper_bound <- rep(1,max_pos_per_network[id_ntwrk==a_pool,pos]);
        
        collateral_application(prob, ncolumns[id_ntwrk==a_pool,N], nrows, rindex,c(0,col_index[id_ntwrk == a_pool,c_index]), lhs, column_lower_bound, column_upper_bound, target_coefs[id_ntwrk == a_pool,trgt_cfcnts], row_lower_bound, row_upper_bound_a,pos_list[id_ntwrk==a_pool]);
      })
      stopImplicitCluster();
    } else {
      print('####SINGLE THREADED####');
      k <- 1;
      for(a_pool in pools) {
        
        prob <- initProbCLP();
        setObjDirCLP(prob,-1);
        setLogLevelCLP(prob,0);
        
        rindex_aux <- rindex_table[id_ntwrk == a_pool];
        #rindex <- c(mapply(function(x,y,z) c(x-1,y-1,z-1), rindex_aux$rank_exp.x,rindex_aux$col_exp,rindex_aux$col_exp_pldg));
        #rindex <- rindex[which(!is.na(rindex))];
        rindex <- c(matrix(c(rindex_aux$rank_exp.x, rindex_aux$col_exp,rindex_aux$col_exp_pldg),3,byrow=T));
        rindex_aux <- NULL;
        rindex <-  rindex[which(!is.na(rindex))];
        
        lhs_aux <- lhs_table[id_ntwrk == a_pool,.(clltrl_avlbl,clltrl_amnt,clltrl_trnsfrbl)];
        #lhs <- c(mapply(function(x,y,z) c(x,y,z), lhs_aux$clltrl_avlbl,lhs_aux$clltrl_amnt,lhs_aux$clltrl_trnsfrbl));
        #lhs <- lhs[which(lhs > 0)];
        lhs <- c(matrix(c(lhs_aux$clltrl_avlbl,lhs_aux$clltrl_amnt,lhs_aux$clltrl_trnsfrbl),3,byrow=T));
        lhs_aux <- NULL;
        lhs <- lhs[which(lhs > 0)];
        
        row_upper_bound_a <- c(row_upper_bound[id_ntwrk== a_pool,expsr_amnt],unique_cols[id_ntwrk== a_pool,V2],unique_pledge[id_ntwrk== a_pool,V2]);
        nrows <- exp_m[id_ntwrk == a_pool,rank_exp] + col_n[id_ntwrk == a_pool,rank_col] + pledge_n[id_ntwrk == a_pool,rank_pledge];
        column_lower_bound <- rep(0,max_pos_per_network[id_ntwrk==a_pool,pos]);
        column_upper_bound <- rep(1,max_pos_per_network[id_ntwrk==a_pool,pos]);
        
        single_thread_p_temp_vector[[k]] <- collateral_application(prob, ncolumns[id_ntwrk==a_pool,N], nrows, rindex,c(0,col_index[id_ntwrk == a_pool,c_index]), lhs, column_lower_bound, column_upper_bound, target_coefs[id_ntwrk == a_pool,trgt_cfcnts], row_lower_bound, row_upper_bound_a,pos_list[id_ntwrk==a_pool],a_pool);
        k <- k + 1;
      }
      final_link_frame <- rbindlist(single_thread_p_temp_vector);
    }
    
    final_link_frame <-final_link_frame[pct > 0,];
    final_link_frame <- merge(final_link_frame,full_link_frame,by.x=c('id_ntwrk','pos'),by.y=c('id_ntwrk','pos'));
    final_link_frame[,allctd := round(pct * clltrl_avlbl,digits=precision)];
    final_link_frame <- final_link_frame[allctd > 0,];
    final_link_frame[,hrct_amt := round(amnt_lst_to_hrcts * pct,digits=precision)];
    final_link_frame[,hrct_10dy_amt := round((allctd + hrct_amt) * sclld_10dy_hrct,digits=precision)];
    final_link_frame[,hrct_10dy_fx_amt := round((allctd + hrct_amt) * sclld_10dy_fx_hrct,digits=precision)];
    final_link_frame[,hrct_hm_amnt := round(hrct_amt-hrct_10dy_amt-hrct_10dy_fx_amt,digits=precision)];
    final_link_frame <- final_link_frame[,.(entity,id_expsr_unique,expsr_amnt,id_clltrl_unique,pct,allctd,hrct_amt,expsr_hrct_amnt,hrct_10dy_amt,hrct_10dy_fx_amt,hrct_hm_amnt,expsr_rw_vl,id_orgnl_expsr_unique,mxd_clltrl_pool_elgblty_ind,mnm_cvrg,enm_prprty_typ,liens_amnt_cvrd,rw_mthd_appld)];
    
    #CLEANUP
    unique_pledge <- NULL;
    unique_cols <- NULL;
    pools <- NULL;
    exp_m <- NULL;
    col_n <- NULL;
    pledge_n <- NULL;
    col_index <- NULL;
    target_coefs <- NULL;
    rindex_aux <- NULL;
    lhs_aux <- NULL;
    rindex_table <- NULL;
    lhs_table <- NULL;
    row_upper_bound <- NULL;
    pos_list <- NULL;
    full_link_frame <- NULL;
    row_upper_bound_a <- NULL;
    column_lower_bound <- NULL;
    column_upper_bound <- NULL;
    
    return(final_link_frame);
    
  }
  
  ## -------------------------------------------------------------------------------------------------
  ## Function: crm_network_finder
  ## Description: Finds pledge networks
  ## -------------------------------------------------------------------------------------------------
  crm_network_finder <- function(pledge_input)
  {
    
    if(nrow(pledge_input) > 0) {
      
      pledge_input[with(pledge_input,order(id_pldg_grntr,id_pldg_rcvr)), ];
      ent_gua <- data.frame(entity=pledge_input$entity,cparty_id=pledge_input$id_pldg_grntr);
      ent_rec <- data.frame(entity=pledge_input$entity,cparty_id=pledge_input$id_pldg_rcvr);
      
      ent_cparty <- unique(rbind(ent_gua,ent_rec));
      colnames(ent_cparty) <- c("entity","cparty_id");
      links <- c(rbind(pledge_input$id_pldg_grntr, pledge_input$id_pldg_rcvr));
      
      g <- graph(edges=links,directed=F);
      nodes <- stack(components(g)$membership);
      colnames(nodes) <- c("network_id","cparty_id");
      
      networks_temp <- merge(ent_cparty,nodes,by="cparty_id");
      setDT(networks_temp);
      setkeyv(networks_temp,c('cparty_id'));
      
      networks_temp <- transform(networks_temp,id_ntwrk=match(network_id,unique(network_id)));
      networks <- networks_temp[,.(cparty_id,entity,id_ntwrk)];
      
      if(debug > 1){
        print("####Pledge Networks Calculated");
        print(proc.time()-ptm);
      }
      return(networks);
      
    }
  }
  
  ## -------------------------------------------------------------------------------------------------
  ## Function: data_prep
  ## Description: Prepares the data
  ## -------------------------------------------------------------------------------------------------
  data_prep <- function(sequence,exposures,collaterals,relationships_1,relationships_2)
  { 
    
    if(sequence == 'O')
    {
      #Link Exposure with Collateral via On Balancer Sheet Netting Agreement ID
      fccm_temp <- fccm[id_on_bs_nttng != -1,]
      
      merged <- merge(exposures[expsr_amnt > 0 & id_on_bs_nttng != -1,],fccm_temp, by = c('entity','id_on_bs_nttng'), allow.cartesian=TRUE);
      merged[,elig := 'Y']
      
      merged[clltrl_elgblty_ind == 'N' & (enm_rw_mthd!='F_IRB' & enm_rw_mthd!='A_IRB') & enm_pstn_clss == 'SFT' & enm_trdng_bnkng != 'T', elig := 'N']
      merged[clltrl_elgblty_ind == 'N' & (enm_rw_mthd!='F_IRB' & enm_rw_mthd!='A_IRB') & enm_pstn_clss != 'SFT' & enm_trdng_bnkng == 'T', elig := 'N']
      merged[clltrl_elgblty_ind == 'N' & (enm_rw_mthd!='F_IRB' & enm_rw_mthd!='A_IRB') & (f_irb_clltrl_elgblty_ind == 'Y' | a_irb_clltrl_elgblty_ind=='Y'), elig:='N']
      merged[f_irb_clltrl_elgblty_ind == 'N' & enm_rw_mthd=='F_IRB', elig :='N']
      merged[a_irb_clltrl_elgblty_ind == 'N' & enm_rw_mthd=='A_IRB', elig :='N']
      
      merged <- merged[elig == 'Y',]
      merged[,nttng_agrmnt := -1]
      fccm_temp <- NULL;
      
      if(nrow(merged) > 0 )
      {
        merged$pldg_amnt <- 0;
        merged[,id_ntwrk := id_on_bs_nttng];        
        merged <- merged[,.(entity,id_expsr_unique,expsr_amnt,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,id_clltrl_unique,clltrl_amnt,clltrl_rsdl_mtrty_yrs,clltrl_orgnl_mtrty_mnths,clltrl_ccy,sclld_10dy_hrct,sclld_10dy_fx_hrct,irb_fndd_non_fnncl_ind,mnm_thrshld,mxmm_thrshld,enm_crm_clss,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_id_pldg,clltrl_id_pldg,pldg_amnt,dltn_rsk_expsr_ind,clltrl_enm_irb_rcvbls_crm_typ,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_trgt_cffcnts_prrt,id_ntwrk,irb_prprty_thrshld,irb_prprty_thrshld_ind,enm_prprty_typ,expsr_ccy,expsr_zero_hrct_elgbl_ind,clltrl_zero_hrct_elgbl_ind,qrre_ind,enm_pstn_clss)];
      }
      
      if(debug > 1){
        print("####Pool links created");
        print(proc.time()-ptm);
      }
      
      
    }
    
    if(sequence == 'C' | sequence == 'PC')
    {
      #Pledged collateral
      #NETWORKS
      networks <- crm_network_finder(rbindlist(list(relationships_1,relationships_2),use.names = TRUE));
      
      if(!is.null(networks))
      {
        relationships_1 <- merge(relationships_1,networks, by.x = c('entity','id_pldg_rcvr'), by.y = c('entity','cparty_id'));
      }
      
      if(sequence == 'C')
      {
        pledge_collaterals <- collaterals[enm_pre_crm_sqnc == 'NA' & enm_crm_clss != 'REAL_ESTATE',];
      } else {
        pledge_collaterals <- collaterals[enm_pre_crm_sqnc != 'NA' & enm_crm_clss != 'REAL_ESTATE',];
      }
      
      pledged_exposures <- exposures[expsr_amnt > 0,];
      
      pledge_merged <- merge(relationships_1,pledged_exposures, by.x = c('entity','id_pldg_rcvr'), by.y = c('entity','expsr_id_pldg'), allow.cartesian=TRUE);
      pledge_merged <- merge(pledge_merged,pledge_collaterals, by.x = c('entity','id_pldg_grntr'), by.y = c('entity','clltrl_id_pldg'), allow.cartesian=TRUE);
      pledge_merged[,elig := 'Y']
      pledge_merged[clltrl_elgblty_ind == 'N' & (enm_rw_mthd!='F_IRB' & enm_rw_mthd!='A_IRB') & enm_pstn_clss == 'SFT' & enm_trdng_bnkng != 'T', elig := 'N']
      pledge_merged[clltrl_elgblty_ind == 'N' & (enm_rw_mthd!='F_IRB' & enm_rw_mthd!='A_IRB') & enm_pstn_clss != 'SFT' & enm_trdng_bnkng == 'T', elig := 'N']
      pledge_merged[clltrl_elgblty_ind == 'N' & (enm_rw_mthd!='F_IRB' & enm_rw_mthd!='A_IRB') & (f_irb_clltrl_elgblty_ind == 'Y' | a_irb_clltrl_elgblty_ind=='Y'), elig:='N']
      pledge_merged[f_irb_clltrl_elgblty_ind == 'N' & enm_rw_mthd=='F_IRB', elig :='N']
      pledge_merged[a_irb_clltrl_elgblty_ind == 'N' & enm_rw_mthd=='A_IRB', elig :='N']
      
      if(nrow(pledge_merged) > 0)
      {
        setnames(pledge_merged,c('nttng_agrmnt.x','id_pldg_rcvr','id_pldg_grntr'),c('nttng_agrmnt','expsr_id_pldg','clltrl_id_pldg'));
        pledge_merged <- pledge_merged[elig == 'Y',.(entity,id_expsr_unique,expsr_amnt,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,id_clltrl_unique,clltrl_amnt,clltrl_rsdl_mtrty_yrs,clltrl_orgnl_mtrty_mnths,clltrl_ccy,sclld_10dy_hrct,sclld_10dy_fx_hrct,irb_fndd_non_fnncl_ind,mnm_thrshld,mxmm_thrshld,enm_crm_clss,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_id_pldg,clltrl_id_pldg,pldg_amnt,dltn_rsk_expsr_ind,clltrl_enm_irb_rcvbls_crm_typ,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_trgt_cffcnts_prrt,id_ntwrk,irb_prprty_thrshld,irb_prprty_thrshld_ind,enm_prprty_typ,expsr_ccy,expsr_zero_hrct_elgbl_ind,clltrl_zero_hrct_elgbl_ind,qrre_ind,enm_pstn_clss)];
      }
      
      #Pledged IRB Real Estate
      #NETWORKS
      pledge_mortgage_fccm <- relationships_2;
      
      if(!is.null(networks))
      {
        pledge_mortgage_fccm <- merge(relationships_2,networks, by.x = c('entity','id_pldg_rcvr'), by.y = c('entity','cparty_id'));
      }
      
      if(sequence == 'C')
      {
        pledge_irb_real_estate <- collaterals[enm_pre_crm_sqnc == 'NA' & enm_crm_clss == 'REAL_ESTATE',];
      } else {
        pledge_irb_real_estate <- collaterals[enm_pre_crm_sqnc != 'NA' & enm_crm_clss == 'REAL_ESTATE',];
      }
      pledge_irb_merged <- merge(pledge_mortgage_fccm,pledged_exposures, by.x = c('entity','id_pldg_rcvr'), by.y = c('entity','expsr_id_pldg'), allow.cartesian=TRUE);
      pledge_irb_merged <- merge(pledge_irb_merged,pledge_irb_real_estate, by.x = c('entity','id_pldg_grntr'), by.y = c('entity','clltrl_id_pldg'), allow.cartesian=TRUE);
      pledge_irb_merged[,elig := 'Y']
      pledge_irb_merged[clltrl_elgblty_ind == 'N' & (enm_rw_mthd!='F_IRB' & enm_rw_mthd!='A_IRB') & enm_pstn_clss == 'SFT' & enm_trdng_bnkng != 'T', elig := 'N']
      pledge_irb_merged[clltrl_elgblty_ind == 'N' & (enm_rw_mthd!='F_IRB' & enm_rw_mthd!='A_IRB') & enm_pstn_clss != 'SFT' & enm_trdng_bnkng == 'T', elig := 'N']
      pledge_irb_merged[clltrl_elgblty_ind == 'N' & (enm_rw_mthd!='F_IRB' & enm_rw_mthd!='A_IRB') & (f_irb_clltrl_elgblty_ind == 'Y'| a_irb_clltrl_elgblty_ind=='Y'), elig:='N']
      pledge_irb_merged[f_irb_clltrl_elgblty_ind == 'N' & enm_rw_mthd=='F_IRB', elig :='N']
      pledge_irb_merged[a_irb_clltrl_elgblty_ind == 'N' & enm_rw_mthd=='A_IRB', elig :='N']
      
      if(nrow(pledge_irb_merged) > 0)
      {
        setnames(pledge_irb_merged,c('nttng_agrmnt.x','id_pldg_rcvr','id_pldg_grntr'),c('nttng_agrmnt','expsr_id_pldg','clltrl_id_pldg'));
        pledge_irb_merged <- pledge_irb_merged[elig == 'Y',.(entity,id_expsr_unique,expsr_amnt,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,id_clltrl_unique,clltrl_amnt,clltrl_rsdl_mtrty_yrs,clltrl_orgnl_mtrty_mnths,clltrl_ccy,sclld_10dy_hrct,sclld_10dy_fx_hrct,irb_fndd_non_fnncl_ind,mnm_thrshld,mxmm_thrshld,enm_crm_clss,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_id_pldg,clltrl_id_pldg,pldg_amnt,dltn_rsk_expsr_ind,clltrl_enm_irb_rcvbls_crm_typ,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_trgt_cffcnts_prrt,id_ntwrk,irb_prprty_thrshld,irb_prprty_thrshld_ind,enm_prprty_typ,expsr_ccy,expsr_zero_hrct_elgbl_ind,clltrl_zero_hrct_elgbl_ind,qrre_ind,enm_pstn_clss)];
      }
      
      #Merge Pledge relationships
      if(nrow(pledge_merged) > 0 & nrow(pledge_irb_merged) > 0)
      {
        pledge_merged <- rbindlist(list(pledge_merged,pledge_irb_merged),use.names = TRUE);
      } else {
        if(nrow(pledge_irb_merged) > 0){
          pledge_merged <- pledge_irb_merged;
        }
      }
      
      if(debug > 1){
        print("####Pledge links created");
        print(proc.time()-ptm);
      }
      
      #Link Exposure with Collateral via Netting Agreement ID
      if(sequence == 'C'){
        fccm_temp <- collaterals[enm_pre_crm_sqnc == 'NA' & nttng_agrmnt != -1,];
      } else {
        fccm_temp <- collaterals[enm_pre_crm_sqnc != 'NA' & nttng_agrmnt != -1,];
      }
      
      pool_merged <- merge(exposures[expsr_amnt > 0,],fccm_temp, by = c('entity','nttng_agrmnt'), allow.cartesian=TRUE);
      pool_merged[,elig := 'Y']
      pool_merged[clltrl_elgblty_ind == 'N' & (enm_rw_mthd!='F_IRB' & enm_rw_mthd!='A_IRB') &  enm_pstn_clss == 'SFT' & enm_trdng_bnkng != 'T', elig := 'N']
      pool_merged[clltrl_elgblty_ind == 'N' & (enm_rw_mthd!='F_IRB' & enm_rw_mthd!='A_IRB') & enm_pstn_clss != 'SFT' & enm_trdng_bnkng == 'T', elig := 'N']
      pool_merged[clltrl_elgblty_ind == 'N' & (enm_rw_mthd!='F_IRB' & enm_rw_mthd!='A_IRB') & (f_irb_clltrl_elgblty_ind == 'Y'| a_irb_clltrl_elgblty_ind=='Y'), elig:='N']
      pool_merged[f_irb_clltrl_elgblty_ind == 'N' & enm_rw_mthd=='F_IRB', elig :='N']
      pool_merged[a_irb_clltrl_elgblty_ind == 'N' & enm_rw_mthd=='A_IRB', elig :='N']
      
      pool_merged <- pool_merged[elig == 'Y',]
      fccm_temp <- NULL;
      
      if(nrow(pool_merged) > 0 )
      {
        pool_merged$pldg_amnt <- 0;
        pool_merged[,id_ntwrk := nttng_agrmnt];
        pool_merged <- pool_merged[,.(entity,id_expsr_unique,expsr_amnt,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,id_clltrl_unique,clltrl_amnt,clltrl_rsdl_mtrty_yrs,clltrl_orgnl_mtrty_mnths,clltrl_ccy,sclld_10dy_hrct,sclld_10dy_fx_hrct,irb_fndd_non_fnncl_ind,mnm_thrshld,mxmm_thrshld,enm_crm_clss,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_id_pldg,clltrl_id_pldg,pldg_amnt,dltn_rsk_expsr_ind,clltrl_enm_irb_rcvbls_crm_typ,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_trgt_cffcnts_prrt,id_ntwrk,irb_prprty_thrshld,irb_prprty_thrshld_ind,enm_prprty_typ,expsr_ccy,expsr_zero_hrct_elgbl_ind,clltrl_zero_hrct_elgbl_ind,qrre_ind,enm_pstn_clss)];
      }
      
      if(debug > 1){
        print("####Pool links created");
        print(proc.time()-ptm);
      }
      
      #Merge Pledge and Netting Agreement Links
      if(nrow(pledge_merged) > 0 & nrow(pool_merged) > 0)
      {
        merged <- rbindlist(list(pledge_merged,pool_merged),use.names = TRUE);
      } else {
        if(nrow(pledge_merged) > 0){
          merged <- pledge_merged;
        } else {
          merged <- pool_merged;
        }
      }
      
      #CLEANUP
      pledged_exposures <- NULL;
      pledge_collaterals <- NULL;
      pledge_merged <- NULL;
      pledge_fccm <- NULL;
      fccm_networks <- NULL;
      pledge_mortgage_networks <- NULL;
      pledge_mortgage_fccm <- NULL;
      pledge_mortgage_networks <- NULL;
      pledge_irb_real_estate <- NULL;
      pledge_irb_merged <- NULL;
      pool_merged <- NULL;
    }
    
    if(sequence == 'G' | sequence == 'PG')
    {
      #Guarantees Pledge Networks
      gua_networks <- crm_network_finder(relationships_1);
      if(!is.null(gua_networks))
      {
        relationships_1 <- merge(relationships_1,gua_networks, by.x = c('entity','id_pldg_rcvr'), by.y = c('entity','cparty_id'));
      }
      
      #Pledged guaranteesv
      if(sequence == 'G')
      {
        pledge_guarantee <- collaterals[enm_pre_crm_sqnc == 'NA',];
      } else {
        pledge_guarantee <- collaterals[enm_pre_crm_sqnc != 'NA',];
      }
      
      pledged_exposures <- exposure[expsr_amnt > 0,];
      pledge_merged <- merge(relationships_1,pledged_exposures, by.x = c('entity','id_pldg_rcvr'), by.y = c('entity','expsr_id_pldg'), allow.cartesian=TRUE);
      pledge_merged <- merge(pledge_merged,pledge_guarantee, by.x = c('entity','id_pldg_grntr'), by.y = c('entity','grnt_id_pldg'), allow.cartesian=TRUE);
      
      if(nrow(pledge_merged) > 0)
      {
        setnames(pledge_merged,c('unfndd_pool.x','id_pldg_rcvr','id_pldg_grntr'),c('unfndd_pool','expsr_id_pldg','grnt_id_pldg'));
        pledge_merged$sclld_10dy_hrct <- 0;
        pledge_merged$expsr_hrct_amnt <- 0;
        pledge_merged <- pledge_merged[,.(entity,id_expsr_unique,expsr_amnt,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,id_clltrl_unique,clltrl_amnt,clltrl_rsdl_mtrty_yrs,clltrl_orgnl_mtrty_mnths,clltrl_ccy,sclld_10dy_hrct,sclld_10dy_fx_hrct,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_id_pldg,grnt_id_pldg,pldg_amnt,dltn_rsk_expsr_ind,grnt_enm_irb_rcvbls_crm_typ,clltrl_rw_vl,expsr_hrct_amnt,sme_sclr_fctr,enm_expsr_clcltn_mthd,id_ntwrk,enm_unfndd_crm_rw_apprch,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
        
      }
      
      if(debug > 1){
        print("####Pledge links created");
        print(proc.time()-ptm);
      }
      
      
      #Link Exposure with Collateral via Unfunded Pool
      if(sequence == 'G')
      {
        guarantee_temp <- collaterals[enm_pre_crm_sqnc == 'NA' & unfndd_pool != -1,];
      } else {
        guarantee_temp <- collaterals[enm_pre_crm_sqnc != 'NA' & unfndd_pool != -1,];
      }
      
      guar_merged <- merge(exposure[expsr_amnt > 0,],guarantee_temp, by = c('entity','unfndd_pool'), allow.cartesian=TRUE);
      guarantee_temp <- NULL;
      
      if(nrow(guar_merged) > 0 )
      {
        guar_merged$pldg_amnt <- 0;
        guar_merged$sclld_10dy_hrct <- 0;
        guar_merged$expsr_hrct_amnt <- 0;
        
        
        
        guar_merged[,id_ntwrk := unfndd_pool];
        
        #IMM Exposure Calculation - Split logic
        guar_merged[enm_imm_expsr_clcltn == 'STRESS_CALIBRATION' & imm_ba_cva_dplct_rcrd_ind == 'N', id_ntwrk := id_ntwrk + current_network_count]
        current_network_count <- max(guar_merged$id_ntwrk);
        guar_merged[enm_imm_expsr_clcltn == 'MARKET_DATA' & imm_ba_cva_dplct_rcrd_ind == 'Y', id_ntwrk := id_ntwrk + current_network_count]
        current_network_count <- max(guar_merged$id_ntwrk);
        guar_merged[enm_imm_expsr_clcltn == 'STRESS_CALIBRATION' & imm_ba_cva_dplct_rcrd_ind == 'Y',id_ntwrk := id_ntwrk + current_network_count]
        
        
        guar_merged <- guar_merged[,.(entity,id_expsr_unique,expsr_amnt,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,id_clltrl_unique,clltrl_amnt,clltrl_rsdl_mtrty_yrs,clltrl_orgnl_mtrty_mnths,clltrl_ccy,sclld_10dy_hrct,sclld_10dy_fx_hrct,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_id_pldg,grnt_id_pldg,pldg_amnt,dltn_rsk_expsr_ind,grnt_enm_irb_rcvbls_crm_typ,clltrl_rw_vl,expsr_hrct_amnt,sme_sclr_fctr,enm_expsr_clcltn_mthd,id_ntwrk,enm_unfndd_crm_rw_apprch,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
      }
      
      if(debug > 1){
        print("####Pool links created");
        print(proc.time()-ptm);
      }
      
      
      if(nrow(pledge_merged) > 0 & nrow(guar_merged) > 0)
      {
        merged <- rbindlist(list(pledge_merged,guar_merged),use.names = TRUE);
        
      } else {
        if(nrow(pledge_merged) > 0){
          merged <- pledge_merged;
        } else {
          merged <- guar_merged;
        }
      }
      
      #CLEANUP
      gua_networks <- NULL;
      pledged_exposures <- NULL;
      pledge_guarantee <- NULL;
      relationships_1 <- NULL;
      guar_merged <- NULL;
      pledge_merged <- NULL;
      
    }
    
    if(sequence == 'R_Pool') {
      
      mortgage_temp <- collaterals[enm_pre_crm_sqnc == 'NA' & real_estate_pool != -1,];
      
      mgt_merged <- merge(exposures[expsr_amnt > 0,],mortgage_temp, by = c('entity','real_estate_pool'), allow.cartesian=TRUE);
      mortgage_temp <- NULL;
      
      if(nrow(mgt_merged) > 0 )
      {
        mgt_merged$pldg_amnt <- 0;
        mgt_merged$expsr_hrct_amnt <- 0;
        mgt_merged$sclld_10dy_hrct <- 0;
        mgt_merged$sclld_10dy_fx_hrct <- 0;
        #mgt_merged[,id_ntwrk :=  paste(real_estate_pool,lien_rnk, sep = '_')];
        mgt_merged[,id_ntwrk :=  real_estate_pool];
        mgt_merged <- mgt_merged[,.(entity,id_expsr_unique,expsr_amnt,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,id_clltrl_unique,clltrl_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_id_pldg,mrtgg_id_pldg,pldg_amnt,dltn_rsk_expsr_ind,clltrl_rw_vl,expsr_hrct_amnt,sclld_10dy_hrct,sclld_10dy_fx_hrct,id_trnch,sme_sclr_fctr,enm_expsr_clcltn_mthd,id_ntwrk,enm_prprty_typ,expsr_ccy,expsr_zero_hrct_elgbl_ind,lien_rnk,pari_passu_extrnl_fctr)];
        
      }
      merged <- mgt_merged;
      if(debug > 1){
        print("####Pool links created");
        print(proc.time()-ptm);
      }
      
      #CLEANUP
      mgt_merged <- NULL;
      
    }
    if(sequence == 'R_Pledge')
    {
      #Real Estate Pledge Networks
      real_est_networks <- crm_network_finder(relationships_1);
      pledge_mortgage_real <- relationships_1;
      if(!is.null(real_est_networks))
      {
        pledge_mortgage_real <- merge(relationships_1,real_est_networks, by.x = c('entity','id_pldg_rcvr'), by.y = c('entity','cparty_id'));
      }
      
      pledge_real_estate <- collaterals[enm_pre_crm_sqnc == 'NA',];
      
      pledged_exposures <- exposures[expsr_amnt > 0 ,];
      pledge_merged <- merge(pledge_mortgage_real,pledged_exposures, by.x = c('entity','id_pldg_rcvr'), by.y = c('entity','expsr_id_pldg'), allow.cartesian=TRUE);
      pledge_merged <- merge(pledge_merged,pledge_real_estate, by.x = c('entity','id_pldg_grntr'), by.y = c('entity','mrtgg_id_pldg'), allow.cartesian=TRUE);
      
      if(nrow(pledge_merged) > 0)
      {
        setnames(pledge_merged,c('real_estate_pool.x','id_pldg_rcvr','id_pldg_grntr'),c('real_estate_pool','expsr_id_pldg','mrtgg_id_pldg'));
        pledge_merged$expsr_hrct_amnt <- 0;
        pledge_merged$sclld_10dy_hrct <- 0;
        pledge_merged$sclld_10dy_fx_hrct <- 0;
        pledge_merged <- pledge_merged[,.(entity,id_expsr_unique,expsr_amnt,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,id_clltrl_unique,clltrl_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_id_pldg,mrtgg_id_pldg,pldg_amnt,dltn_rsk_expsr_ind,clltrl_rw_vl,expsr_hrct_amnt,sclld_10dy_hrct,sclld_10dy_fx_hrct,id_trnch,sme_sclr_fctr,enm_expsr_clcltn_mthd,id_ntwrk,enm_prprty_typ,expsr_ccy,expsr_zero_hrct_elgbl_ind,lien_rnk,mrtgg_cndtns_met_ind,rl_estt_elgbl_prfrentl_rw,enm_real_estt_trmnt,ipre_rw,non_ipre_rw,incm_prdcng_real_estt_ind,pari_passu_extrnl_fctr,entity_cntry,qlfyng_art_124_2a_ii_2,non_prft_hsng_dvlpr_ind,enm_ipre_drgtn_appld,ipre_cntry_drgtn_ind,prmry_rsdnc_ind)];
        
      }
      merged <- pledge_merged;
      if(debug > 1){
        print("####Pledge links created");
        print(proc.time()-ptm);
      }
      
      #CLEANUP
      real_est_networks <- NULL;
      pledge_mortgage_real <- NULL;
      pledged_exposures <- NULL;
      pledge_real_estate <- NULL;
      pledge_merged <- NULL;
      
    }
    
    if(sequence == 'S' | sequence == 'PS')
    {
      #FCSM Pledge Networks
      fcsm_networks <- crm_network_finder(relationships_1);
      if(!is.null(fcsm_networks))
      {
        relationships_1 <- merge(relationships_1,fcsm_networks, by.x = c('entity','id_pldg_rcvr'), by.y = c('entity','cparty_id'));
      }
      
      if(sequence == 'S')
      {
        pledge_col_fcsm <- collaterals[enm_pre_crm_sqnc == 'NA',];
      } else {
        pledge_col_fcsm <- collaterals[enm_pre_crm_sqnc != 'NA',];
      }
      
      pledged_exposures <- exposures[expsr_amnt > 0,];
      pledge_merged <- merge(relationships_1,pledged_exposures, by.x = c('entity','id_pldg_rcvr'), by.y = c('entity','expsr_id_pldg'), allow.cartesian=TRUE);
      pledge_merged <- merge(pledge_merged,pledge_col_fcsm, by.x = c('entity','id_pldg_grntr'), by.y = c('entity','clltrl_id_pldg_fcsm'), allow.cartesian=TRUE);
      
      if(nrow(pledge_merged) > 0)
      {
        setnames(pledge_merged,c('nttng_agrmnt.x','id_pldg_rcvr','id_pldg_grntr'),c('nttng_agrmnt','expsr_id_pldg','clltrl_id_pldg_fcsm'));
        pledge_merged$expsr_hrct_amnt <- 0;
        pledge_merged <- pledge_merged[,.(entity,id_expsr_unique,expsr_amnt,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,id_clltrl_unique,clltrl_amnt,clltrl_rsdl_mtrty_yrs,clltrl_ccy,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_id_pldg,clltrl_id_pldg_fcsm,pldg_amnt,dltn_rsk_expsr_ind,clltrl_rw_vl,expsr_hrct_amnt,sme_sclr_fctr,enm_expsr_clcltn_mthd,id_ntwrk,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
      }
      
      if(debug > 1){
        print("####Pledge links created");
        print(proc.time()-ptm);
      }
      
      #Link Exposure with Collateral via Netting Agreement ID
      if(sequence == 'S')
      {
        fcsm_temp <- collaterals[enm_pre_crm_sqnc == 'NA' & nttng_agrmnt != -1,];
      } else {
        fcsm_temp <- collaterals[enm_pre_crm_sqnc != 'NA' & nttng_agrmnt != -1,];
      }
      
      fcsm_merged <- merge(exposures[expsr_amnt > 0,],fcsm_temp, by = c('entity','nttng_agrmnt'), allow.cartesian=TRUE);
      fcsm_temp <- NULL;
      
      if(nrow(fcsm_merged) > 0 )
      {
        fcsm_merged$pldg_amnt <- 0;
        fcsm_merged$expsr_hrct_amnt <- 0;
        fcsm_merged[,id_ntwrk := nttng_agrmnt];
        fcsm_merged <- fcsm_merged[,.(entity,id_expsr_unique,expsr_amnt,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,id_clltrl_unique,clltrl_amnt,clltrl_rsdl_mtrty_yrs,clltrl_ccy,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_id_pldg,clltrl_id_pldg_fcsm,pldg_amnt,dltn_rsk_expsr_ind,clltrl_rw_vl,expsr_hrct_amnt,sme_sclr_fctr,enm_expsr_clcltn_mthd,id_ntwrk,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
      }
      
      if(debug > 1){
        print("####Pool links created");
        print(proc.time()-ptm);
      }
      
      if(nrow(pledge_merged) > 0 & nrow(fcsm_merged) > 0)
      {
        merged <- rbindlist(list(pledge_merged,fcsm_merged),use.names = TRUE);
        
      } else {
        if(nrow(pledge_merged) > 0){
          merged <- pledge_merged;
        } else {
          merged <- fcsm_merged;
        }
      }
      
      #CLEANUP
      relationships_1 <- NULL;
      fcsm_networks <- NULL;
      pledged_exposures <- NULL;
      pledge_col_fcsm <- NULL;
      pledge_merged <- NULL;
      collaterals <- NULL;
      fcsm_merged <- NULL;
    }
    
    return(unique(merged,by=c('id_expsr_unique','id_clltrl_unique')));
  }
  
  #Initialize Pledge data.table
  setDT(pledge);
  setkeyv(pledge,c('entity','pldg_typ'));
  
  #Pledge For Guarantees
  pledge_guarantees <- pledge[pldg_typ == 'Guarantee',];
  setkeyv(pledge_guarantees,c('entity','id_pldg_grntr','id_pldg_rcvr'));
  
  #Pledge For Real Estate
  pledge_mortgage <- pledge[pldg_typ == 'Real_Estate',];
  setkeyv(pledge_mortgage,c('entity','id_pldg_grntr','id_pldg_rcvr'));
  
  #Pledge For FCCM
  pledge_fccm <- pledge[pldg_typ == 'FCCM',];
  setkeyv(pledge_fccm,c('entity','id_pldg_grntr','id_pldg_rcvr'));
  
  #Pledge For FCSM
  pledge_fcsm <- pledge[pldg_typ == 'FCSM',];
  setkeyv(pledge_fccm,c('entity','id_pldg_grntr','id_pldg_rcvr'));
  
  #Initialize Retail Checks, Mixed vs Non-Mixed
  setDT(retail_limit);
  setnames(retail_limit,c('entity_limit'),c('entity'));
  setkeyv(retail_limit,c('entity','id_ultmt_prnt','id_prty'));
  
  
  #Initialize SME Checks, Mixed vs Non-Mixed
  setDT(sme_limit);
  setnames(sme_limit,c('id_ultmt_prnt_sme','id_prty_sme','fnl_ttl_expsrs_sme','ttl_obs_expsrs_eur_sme','ttl_expsrs_excldng_obs_sme','entity_sme','mxd_rw_mthd_gcc_sme'),c('id_ultmt_prnt','id_prty','fnl_ttl_expsrs','ttl_obs_expsrs_eur','ttl_expsrs_excldng_obs','entity','mxd_rw_mthd_gcc'));
  setkeyv(sme_limit,c('entity','id_ultmt_prnt','id_prty'));
  
  #Initialize Mixed Pools data.table
  setDT(mixed);
  setnames(mixed,c('clltrl_entity_mxd'),c('entity'));
  setkeyv(mixed,c('entity','clltrl_nttng_agrmnt_id_mxd'));
  
  #Initialize Pre CRM sequence data.table
  setDT(pre_crm);
  setnames(pre_crm,c('entity_pre_crm'),c('entity'));
  setkeyv(pre_crm,c('entity','pre_crm_sqnc'));
  
  #Initialize Exposure data.table
  setDT(exposure);
  setnames(exposure,c('expsr_entity','id_expsr_clltrl_nttng_agrmnt','id_expsr_unfndd_crm_pool','id_expsr_real_estt_pool','id_expsr_on_bs_nttng'),c('entity','nttng_agrmnt','unfndd_pool','real_estate_pool','id_on_bs_nttng'));
  setkeyv(exposure,c('entity','id_expsr_unique'));
  setindexv(exposure,c('entity','nttng_agrmnt','unfndd_pool','real_estate_pool','lien_rnk'));
  
  #Initialize Pari Passu data.table
  setDT(pari_passu);
  setnames(pari_passu,c('p_entity','p_id_real_estt_pool','p_lien_rnk'),c('entity','real_estate_pool','lien_rnk'));
  setkeyv(pari_passu,c('entity','real_estate_pool','lien_rnk'));
  
  #Initialize Property Rank Liens data.table
  setDT(prprty_rnk)
  setnames(prprty_rnk,c('entity_prpty','lien_rnk_prpty','pledge_pari_passu_extrnl_fctr'), c('entity','lien_rnk','pari_passu_extrnl_fctr'))
  setkeyv(prprty_rnk,c('entity','id_prprty','lien_rnk'))
  
  #Initialize Mortgage LTV Risk Weight data.table
  setDT(ltv)
  setnames(ltv,c('mltv_prpty_typ','mltv_entity_cntry','mltv_ltv','mltv_interim_rw_1'),c('prpty_typ','entity_cntry','ltv','interim_rw_1'))
  setkeyv(ltv,c('prpty_typ','entity_cntry','ltv'));
  
  #Exposure ID Map
  exposure[,id_number := sequence(.N)];
  exposure_map <- exposure[,.(id_expsr_unique,id_number)];
  setnames(exposure_map,c('id_expsr_unique'),c('original_expsr_id'));
  setkeyv(exposure_map,c('id_number'));
  exposure[,id_expsr_unique := id_number];
  exposure[,id_number := NULL];
  exposure[apply_ccf_bfr_crm_ind == 'Y', ccf := 1];
  exposure[,apply_ccf_bfr_crm_ind := NULL];
  exposure[,sme_sclr_fctr := 1]
  
  #Exposure RW Method (IRB vs SA)
  exposure_irb_sa <- exposure[,.(id_expsr_unique,enm_sa_irb_expsr)];
  exposure[,enm_sa_irb_expsr := NULL];
  setkeyv(exposure_irb_sa,c('id_expsr_unique'));
  
  print('####Exposure Count');
  print(nrow(exposure));
  
  #Initialize Collaterals data.table
  setDT(fccm)
  setnames(fccm,c('clltrl_entity','clltrl_nttng_agrmnt_id','clltrl_enm_pre_crm_sqnc','id_clltrl_on_bs_nttng'),c('entity','nttng_agrmnt','enm_pre_crm_sqnc','id_on_bs_nttng'));
  setkeyv(fccm,c('entity','id_clltrl_unique'));
  setindexv(fccm,c('entity','nttng_agrmnt'));
  
  #Collateral ID Map
  fccm[,id_number := sequence(.N)];
  fccm_map <- fccm[,.(id_clltrl_unique,id_number)];
  setnames(fccm_map,c('id_clltrl_unique'),c('original_clltrl_id'));
  setkeyv(fccm_map,c('id_number'));
  fccm[,id_clltrl_unique := id_number];
  fccm[,id_number := NULL];
  
  print('####FCCM Count');
  print(nrow(fccm));
  
  #Initialize Guarantees data.table
  setDT(guarantee);
  setnames(guarantee,c('grnt_entity','id_grnt_unfndd_crm_pool','id_grnt_unique','grnt_amnt','grnt_mtrty_yrs','orgnl_mtrty_mnths','grnt_rw_vl','grnt_sclld_10dy_fx_hrct','grnt_ccy','grnt_enm_pre_crm_sqnc'),c('entity','unfndd_pool','id_clltrl_unique','clltrl_amnt','clltrl_rsdl_mtrty_yrs','clltrl_orgnl_mtrty_mnths','clltrl_rw_vl','sclld_10dy_fx_hrct','clltrl_ccy','enm_pre_crm_sqnc'));
  setkeyv(guarantee,c('entity','id_clltrl_unique'));
  setindexv(guarantee,c('entity','unfndd_pool'));
  
  #Guarantee ID Map
  guarantee[,id_number := sequence(.N)];
  guarantee_map <- guarantee[,.(id_clltrl_unique,id_number)];
  setnames(guarantee_map,c('id_clltrl_unique'),c('original_clltrl_id'));
  setkeyv(guarantee_map,c('id_number'));
  guarantee[,id_clltrl_unique := id_number];
  guarantee[,id_number := NULL];
  
  print('####Substitution Count');
  print(nrow(guarantee));
  
  #Initialize Mortgages data.table
  setDT(mortgage);
  setnames(mortgage,c('mrtgg_entity','id_mrtgg_real_estt_pool','id_mrtgg_unique','mrtgg_rw_vl','mrtgg_amnt','mrtgg_enm_pre_crm_sqnc','mrtgg_enm_prprty_typ','mrtgg_id_prprty'),c('entity','real_estate_pool','id_clltrl_unique','clltrl_rw_vl','clltrl_amnt','enm_pre_crm_sqnc','enm_prprty_typ','id_prprty'));
  setkeyv(mortgage,c('entity','id_clltrl_unique'));
  setindexv(mortgage,c('entity','real_estate_pool'));
  
  #Mortgage ID Map
  mortgage[,id_number := sequence(.N)];
  mortgage_map <- mortgage[,.(id_clltrl_unique,id_number)];
  setnames(mortgage_map,c('id_clltrl_unique'),c('original_clltrl_id'));
  setkeyv(mortgage_map,c('id_number'));
  mortgage[,id_clltrl_unique := id_number];
  mortgage[,id_number := NULL];
  
  print('####Real Estate Count');
  print(nrow(mortgage));
  
  #Initialize Collaterals data.table
  setDT(fcsm);
  setnames(fcsm,c('clltrl_entity_fcsm','id_clltrl_nttng_agrmnt_fcsm','id_clltrl_unique_fcsm','clltrl_rw_vl_fcsm','clltrl_amnt_fcsm','clltrl_ccy_fcsm','clltrl_rsdl_mtrty_yrs_fcsm','clltrl_enm_pre_crm_sqnc_fcsm'),c('entity','nttng_agrmnt','id_clltrl_unique','clltrl_rw_vl','clltrl_amnt','clltrl_ccy','clltrl_rsdl_mtrty_yrs','enm_pre_crm_sqnc'));
  setkeyv(fcsm,c('entity','id_clltrl_unique'));
  setindexv(fcsm,c('entity','nttng_agrmnt'));
  
  #FCSM ID Map
  fcsm[,id_number := sequence(.N)];
  fcsm_map <- fcsm[,.(id_clltrl_unique,id_number)];
  setnames(fcsm_map,c('id_clltrl_unique'),c('original_clltrl_id'));
  setkeyv(fcsm_map,c('id_number'));
  fcsm[,id_clltrl_unique := id_number];
  fcsm[,id_number := NULL];
  
  print('####FCSM Count');
  print(nrow(fcsm));
  
  #Initialize AIRB Exposures for SME_SF data.table
  setDT(airb_sme_sf)
  setnames(airb_sme_sf,c('expsr_entity_airb','id_expsr_unique_airb','expsr_amnt_airb','fx_rate_airb'),c('entity','id_expsr_unique','allctd','fx_rate'));
  setkeyv(airb_sme_sf,c('entity','id_expsr_unique'));
  
  
  #Initilize CRM Pools
  setDT(crm_pools);
  setnames(crm_pools,c('crm_entity'),c('entity'));
  setkeyv(crm_pools,c('entity','crm_step','crm_pool_id'));
  
  #Replace Pools with IDs
  crm_pools[,crm_pool_number := sequence(.N)];
  crm_pools[crm_pool_id == 'N/A',crm_pool_number := -1];
  
  current_network_count <- max(crm_pools$crm_pool_number);
  
  fccm_crm_pools <- crm_pools[crm_step == 'C',];
  fccm_crm_pools[,crm_step := NULL];
  fcsm_crm_pools <- crm_pools[crm_step == 'S',];
  fcsm_crm_pools[,crm_step := NULL];
  gua_crm_pools <- crm_pools[crm_step == 'G',];
  gua_crm_pools[,crm_step := NULL];
  mgt_crm_pools <- crm_pools[crm_step == 'R',];
  mgt_crm_pools[,crm_step := NULL];
  on_bs_netting_pools <- crm_pools[crm_step == 'O',];
  on_bs_netting_pools[,crm_step := NULL];
  
  mixed <- merge(mixed,fccm_crm_pools, by.x = c('entity','clltrl_nttng_agrmnt_id_mxd'), by.y = c('entity','crm_pool_id'), all.x = TRUE,allow.cartesian=TRUE);
  mixed[,clltrl_nttng_agrmnt_id_mxd := crm_pool_number];
  mixed[,crm_pool_number := NULL];
  
  fccm <- merge(fccm,fccm_crm_pools, by.x = c('entity','nttng_agrmnt'), by.y = c('entity','crm_pool_id'),all.x = TRUE,allow.cartesian=TRUE);
  fccm[,nttng_agrmnt := crm_pool_number];
  fccm[,crm_pool_number := NULL];
  
  fccm <- merge(fccm,on_bs_netting_pools, by.x = c('entity','id_on_bs_nttng'), by.y = c('entity','crm_pool_id'),all.x = TRUE,allow.cartesian=TRUE);
  fccm[,id_on_bs_nttng := crm_pool_number];
  fccm[,crm_pool_number := NULL];
  
  fcsm <- merge(fcsm,fcsm_crm_pools, by.x = c('entity','nttng_agrmnt'), by.y = c('entity','crm_pool_id'),all.x = TRUE,allow.cartesian=TRUE);
  fcsm[,nttng_agrmnt := crm_pool_number];
  fcsm[,crm_pool_number := NULL];
  
  mortgage <- merge(mortgage,mgt_crm_pools, by.x = c('entity','real_estate_pool'), by.y = c('entity','crm_pool_id'),all.x = TRUE,allow.cartesian=TRUE);
  mortgage[,real_estate_pool := crm_pool_number];
  mortgage[,crm_pool_number := NULL];
  
  pari_passu <- merge(pari_passu,mgt_crm_pools, by.x = c('entity','real_estate_pool'), by.y = c('entity','crm_pool_id'),all.x = TRUE,allow.cartesian=TRUE);
  pari_passu[,real_estate_pool := crm_pool_number];
  pari_passu[,crm_pool_number := NULL];
  
  guarantee <- merge(guarantee,gua_crm_pools, by.x = c('entity','unfndd_pool'), by.y = c('entity','crm_pool_id'),all.x = TRUE,allow.cartesian=TRUE);
  guarantee[,unfndd_pool := crm_pool_number];
  guarantee[,crm_pool_number := NULL];
  guarantee <- merge(guarantee,fccm_crm_pools, by.x = c('entity','id_grnt_clltrl_nttng_agrmnt'), by.y = c('entity','crm_pool_id'),all.x = TRUE,allow.cartesian=TRUE);
  guarantee[,id_grnt_clltrl_nttng_agrmnt := crm_pool_number];
  guarantee[,crm_pool_number := NULL];
  
  fccm_crm_pools <- rbindlist(list(fccm_crm_pools,fcsm_crm_pools),use.names = TRUE);
  
  exposure <- merge(exposure,fccm_crm_pools[crm_pool_number != -1,], by.x = c('entity','nttng_agrmnt'), by.y = c('entity','crm_pool_id'),all.x = TRUE,allow.cartesian=TRUE);
  exposure[,nttng_agrmnt := crm_pool_number];
  exposure[,crm_pool_number := NULL];
  exposure <- merge(exposure,mgt_crm_pools[crm_pool_number != -1,], by.x = c('entity','real_estate_pool'), by.y = c('entity','crm_pool_id'),all.x = TRUE,allow.cartesian=TRUE);
  exposure[,real_estate_pool := crm_pool_number];
  exposure[,crm_pool_number := NULL];
  exposure <- merge(exposure,gua_crm_pools[crm_pool_number != -1,], by.x = c('entity','unfndd_pool'), by.y = c('entity','crm_pool_id'),all.x = TRUE,allow.cartesian=TRUE);
  exposure[,unfndd_pool := crm_pool_number];
  exposure[,crm_pool_number := NULL];
  exposure <- merge(exposure,on_bs_netting_pools[crm_pool_number != -1,], by.x = c('entity','id_on_bs_nttng'), by.y = c('entity','crm_pool_id'),all.x = TRUE,allow.cartesian=TRUE);
  exposure[,id_on_bs_nttng := crm_pool_number];
  exposure[,crm_pool_number := NULL];
  
  
  exposure_imm_map <- exposure[enm_imm_expsr_clcltn != 'NA',.(id_expsr_unique,enm_imm_expsr_clcltn)]
  
  #Cleanup
  crm_pools <- NULL;
  fccm_crm_pools <- NULL;
  fcsm_crm_pools <- NULL;
  gua_crm_pools <- NULL;
  mgt_crm_pools <- NULL;
  pledge <- NULL;
  
  
  #Alloc Temp
  p_temp <- NULL;
  p_temp_pledge <- NULL;
  alloc_vector = list();
  p_temp_vector = list();
  prep_r_vector = list();
  single_thread_p_temp_vector = list();
  retail_million_gcc <- NULL;
  sme_million_gcc <- NULL;
  retail_million_euro_irb <- NULL;
  retail_million_euro <- NULL;
  sme_limit_euro <- NULL;
  sme_million_euro_irb <- NULL;
  alloc_imm_calc_res <- NULL;
  i <- 1;
  r <- 1;
  
  #SA(R) Retail/SME Checks
  r_retail_exempt_amnts_mixed <- NULL;
  r_sme_exempt_amnts_mixed <- NULL;
  gcc_retail_sa_check <- NULL;
  gcc_sme_sa_check <- NULL;
  exposures_retail_gcc_sa <- NULL;
  exposures_sme_gcc_sa <- NULL;
  
  #IRB(C) Retail/SME Checks
  c_retail_exempt_amnts_mixed <- NULL;
  c_sme_exempt_amnts_mixed <- NULL;
  gcc_retail_irb_check <- NULL;
  gcc_sme_irb_check <- NULL;
  exposures_retail_gcc_irb <- NULL;
  exposures_sme_gcc_irb <- NULL;
  
  if(nrow(exposure) > 0)
  {
    #Fetch CRM Sequence
    crm_sequence <- exposure[!is.na(enm_crm_sqnc), .(max = max(enm_crm_sqnc)), keyby = ''];
    crm_seq <- substring(crm_sequence, seq(1,nchar(crm_sequence),1), seq(1,nchar(crm_sequence),1));
    
    if(nrow(crm_sequence) == 0){
      crm_seq = c('G','C','R');
    }
    
    #Fetch Pre-CRM Sequence
    if(nrow(pre_crm) > 0)
    {
      pre_crm_sequence <- pre_crm[1,.(pre_crm_sqnc)];
      pre_crm_seq <- substring(pre_crm_sequence, seq(1,nchar(pre_crm_sequence),1), seq(1,nchar(pre_crm_sequence),1));
      pre_counter <- 1;
      while(pre_counter <= length(pre_crm_seq)){
        pre_crm_seq[pre_counter] <- paste('P',pre_crm_seq[pre_counter],sep = '');
        pre_counter <- pre_counter +1;
      }
      crm_seq <- c(pre_crm_seq,crm_seq);
    }
    
    crm_seq <- c('O',crm_seq);
    
    #Retail SME Limit Check
    thrshld_limit_val <- max(exposure$thrshld_limit);
    exposure[,thrshld_limit := NULL]
    
    print('####SEQUENCE');
    print(crm_seq);
    crm_sequence <- NULL;
    breached_checks <- NULL;
    
    #Create Original Exposure
    exposure[,id_orgnl_expsr_unique := id_expsr_unique];
    exposure[,enm_crm_sqnc := NULL];
    
    #Securitisation treated as Standardised
    exposure[enm_rw_mthd == 'SEC_ERBA',enm_rw_mthd := 'STANDARDISED'];
    exposure[enm_rw_mthd == 'SEC_1250',enm_rw_mthd := 'STANDARDISED'];
    exposure[enm_rw_mthd == 'SEC_SA', enm_rw_mthd := 'STANDARDISED'];
    exposure[enm_rw_mthd == 'SEC_IAA', enm_rw_mthd := 'STANDARDISED'];
    #Loop through Sequence
    for(a_seq in crm_seq)
    {
      print('####SEQ');
      print(a_seq);
      
      if(a_seq == 'O')
      {
        exposure <- exposure[,id_expsr_unique := as.integer(id_expsr_unique)];
        
        merged <- data_prep(a_seq,exposure,fccm,pledge_fccm,pledge_mortgage);
        merged[,mxd_clltrl_pool_elgblty_ind := 'N'];
        
        #Maturity Checks
        merged$elig <- 'N';
        #merged[enm_rw_mthd =='A_IRB', clltrl_rsdl_mtrty_yrs := 999999999999];
        merged[clltrl_rsdl_mtrty_yrs >= expsr_rsdl_mtrty_yrs, elig := 'Y'];
        merged[clltrl_rsdl_mtrty_yrs >= 0.25 & clltrl_orgnl_mtrty_mnths >= 12 , elig := 'Y'];
        merged <- merged[elig == 'Y',];
        
        if(nrow(merged) > 0)
        {
          print("####Number of links");
          print(nrow(merged));
          print(proc.time()-ptm);
          
          #Generic Calcs
          merged$id_lmt_pldg <- 'N/A';
          merged$clmn_indx <- 2;
          merged$clltrl_trnsfrbl <- 0;
          merged$lmt <- 0;
          merged$id_trnch <- 0;
          
          #Collateral Maturity Haircut
          hm <- mapply(function(x,y) (min(1,(x - 0.25) / (min(y, 5) - 0.25 ))),merged$clltrl_rsdl_mtrty_yrs, merged$expsr_rsdl_mtrty_yrs);
          merged$mtrty_msmtch_hrct <- hm;
          merged[clltrl_rsdl_mtrty_yrs >= expsr_rsdl_mtrty_yrs, mtrty_msmtch_hrct := 1];
          
          merged <- merged[mtrty_msmtch_hrct >= 0,];
          
          #Collateral HFX
          merged[hfx_expsr_ccy == clltrl_ccy, sclld_10dy_fx_hrct := 0];
          #merged[enm_rw_mthd == 'A_IRB', sclld_10dy_fx_hrct := 0];
          
          #Zero Haircut checks
          merged[expsr_zero_hrct_elgbl_ind == 'Y' & clltrl_zero_hrct_elgbl_ind == 'Y' & clltrl_ccy == expsr_ccy, c('sclld_10dy_fx_hrct','sclld_10dy_hrct','expsr_hrct') := list(0,0,0)];
          
          #Exposure haircut
          merged[,expsr_hrct_amnt := expsr_amnt * expsr_hrct];
          merged[,expsr_amnt := expsr_amnt * (1 + expsr_hrct)];
          
          #Collateral Volatility and FX Haircut
          merged[,clltrl_avlbl :=  (clltrl_amnt * (1- sclld_10dy_hrct - sclld_10dy_fx_hrct)) * mtrty_msmtch_hrct];
          
          merged <- merged[clltrl_avlbl > 0,];
          merged[,amnt_lst_to_hrcts :=  clltrl_amnt - clltrl_avlbl];
          
          #CLEANUP
          hm <- NULL;
          
          
          
          p_temp <- NULL;
          
          #Target Coeficients
          merged[expsr_hrct_amnt < clltrl_avlbl, clltrl_coverage := clltrl_avlbl - expsr_hrct_amnt]
          merged[expsr_hrct_amnt >= clltrl_avlbl, clltrl_coverage := 1]
          merged[ccf == 0,trgt_cfcnts := (clltrl_coverage * ((expsr_rw_vl + 1)/100) * 100 * (100/(sclld_10dy_fx_hrct + 1)) * (ccf + 0.000001) * sme_sclr_fctr)/100000 ];
          merged[ccf != 0,trgt_cfcnts := (clltrl_coverage * ((expsr_rw_vl + 1)/100) * 100 * (100/(sclld_10dy_fx_hrct + 1)) * ccf * sme_sclr_fctr)/100000 ];
          
          #IRB QRRE for last
          merged[qrre_ind == 'Y' & (enm_rw_mthd == 'A_IRB' | enm_rw_mthd == 'F_IRB'),trgt_cfcnts := trgt_cfcnts/1000000];
          
          merged[,mnm_cvrg := 0];
          #Generic Calcs
          merged$id_lmt_pldg <- 'N/A';
          merged$clmn_indx <- 2;
          merged$clltrl_trnsfrbl <- 0;
          merged$lmt <- 0;
          merged$liens_amnt_cvrd <- 0;
          
          if(debug > 2)
          {
            prep_o <- merged[,.(entity,id_expsr_unique,id_clltrl_unique,expsr_amnt,expsr_hrct, expsr_hrct_amnt,ccf, clltrl_amnt,sclld_10dy_hrct, sclld_10dy_fx_hrct,mtrty_msmtch_hrct,liens_amnt_cvrd,expsr_rw_vl,0,clltrl_avlbl,trgt_cfcnts,amnt_lst_to_hrcts,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
            prep_o <- merge(prep_o,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
            prep_o[,id_expsr_unique := original_expsr_id];
            prep_o <- merge(prep_o,fccm_map,by.x = c('id_clltrl_unique'),by.y = c('id_number'));
            prep_o[,id_clltrl_unique := original_clltrl_id];
            prep_o <- prep_o[,.(entity,id_expsr_unique,id_clltrl_unique,expsr_amnt,expsr_hrct, expsr_hrct_amnt,ccf, clltrl_amnt,sclld_10dy_hrct, sclld_10dy_fx_hrct,mtrty_msmtch_hrct,liens_amnt_cvrd,expsr_rw_vl,0,clltrl_avlbl,trgt_cfcnts,amnt_lst_to_hrcts,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
          }
          
          merged$enm_pstn_clss <- NULL
          
          if(nrow(merged)>0)
          {
            if(debug > 1){
              print("####SA CRM");
              print(proc.time()-ptm);
            }
            merged <- merged[,.(entity,id_clltrl_unique,id_expsr_unique,expsr_amnt,clltrl_avlbl,clltrl_amnt,clltrl_trnsfrbl,nttng_agrmnt,trgt_cfcnts,amnt_lst_to_hrcts,lmt,id_lmt_pldg,clmn_indx,id_orgnl_expsr_unique,sclld_10dy_hrct,sclld_10dy_fx_hrct,expsr_rw_vl,expsr_hrct_amnt,mxd_clltrl_pool_elgblty_ind,enm_rw_mthd,irb_fndd_non_fnncl_ind,mnm_cvrg,enm_prprty_typ,id_ntwrk,liens_amnt_cvrd)];
            merged[,rw_mthd_appld := '']
            p_temp <- crm_solver(merged);
            
            if(debug > 1){
              print("####After CRM");
              print(proc.time()-ptm);
            }
            
            #Update Exposure Values
            exposure_coverage <- p_temp[, sum(allctd), by=list(entity,id_expsr_unique)];
            exposure_coverage[,V1 := round(V1,digits=precision)]
            exposure <- merge(exposure,exposure_coverage, by = c('entity','id_expsr_unique'), all.x=TRUE);
            exposure[is.na(V1), V1 := 0];
            exposure[,expsr_amnt := expsr_amnt - V1];
            exposure <- exposure[,.(entity,id_expsr_unique,expsr_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,expsr_id_pldg,dltn_rsk_expsr_ind,id_cntrprty,enm_cntrprty_typ,expsr_rw_vl_lmt,enm_rw_mthd_aftr_lmt_chck,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_prprty_thrshld,irb_prprty_thrshld_ind,sme_sf_chck_ind,fx_rate,expsr_ccy,expsr_zero_hrct_elgbl_ind,pfe_exemption_ind,pfe_with_mlplctn_fctr,rc_with_mlplctn_fctr,enm_imm_expsr_clcltn,enm_pstn_clss,lien_rnk,entity_cntry,ntrl_prsn_ind,whl_ln_apprch_sme_sf_ind,imm_ba_cva_dplct_rcrd_ind,qrre_ind,a_irb_rsdntl_prprty_amnt,real_estt_rw_cnddt_ind,fll_prcnt_rw_flr_appld_ind,enm_cqs_st,orgnl_sa_expsr_clss_rw,mrtgg_cndtns_met_ind,enm_real_estt_trmnt,prprty_exempt_amnt,qlfyng_art_124_2a_ii_2,non_prft_hsng_dvlpr_ind,enm_ipre_drgtn_appld,fnl_expsr_clssfctn,prfntl_rw_ind,id_on_bs_nttng,adc_clssfctn,sme_or_prsn_ind,mrtgg_cp_rw_vl_rtl_lmt,interim_rw,uk_mrtgg_cp_rw_apprch )];
            
            
            p_temp[order(id_expsr_unique,id_clltrl_unique), allctd_clltrl:=cumsum(allctd), by=list(id_expsr_unique)];
            p_temp[,expsr_aftr_crm := expsr_amnt - allctd_clltrl];
            p_temp[,expsr_aftr_crm := round(expsr_aftr_crm,digits=precision)];
            p_temp <- merge(p_temp,exposure_map, by.x = c('id_expsr_unique'), by.y = c('id_number'));
            p_temp[,c('id_synthtc_expsr_unique','fndd_synthtc_ind') := list(original_expsr_id, 'N')];
            p_temp[,original_expsr_id := NULL];
            p_temp$ca_step <- 'O';
            
            if(!is.null(p_temp))
            {
              
              p_temp <- merge(p_temp,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
              p_temp[,id_expsr_unique := original_expsr_id];
              p_temp <- merge(p_temp,fccm_map,by.x = c('id_clltrl_unique'),by.y = c('id_number'));
              p_temp[,id_clltrl_unique := original_clltrl_id];
              p_temp[,original_expsr_id := NULL];
              p_temp[,original_clltrl_id := NULL];
              p_temp <- merge(p_temp,exposure_map,by.x = c('id_orgnl_expsr_unique'),by.y = c('id_number'));
              p_temp[,id_orgnl_expsr_unique := original_expsr_id];
              p_temp[,original_expsr_id := NULL];
              
              alloc_vector[[i]] <- p_temp[,.(entity,id_expsr_unique,expsr_amnt,id_clltrl_unique,pct,allctd,hrct_amt,expsr_hrct_amnt,hrct_10dy_amt,hrct_10dy_fx_amt,hrct_hm_amnt,liens_amnt_cvrd,expsr_rw_vl,id_orgnl_expsr_unique,expsr_aftr_crm,id_synthtc_expsr_unique,mxd_clltrl_pool_elgblty_ind,fndd_synthtc_ind,rw_mthd_appld,ca_step)];
              i <- i+1;
            } 
          }
        }
      }
      
      if(a_seq == 'C' | a_seq == 'PC')
      {
        exposure <- exposure[,id_expsr_unique := as.integer(id_expsr_unique)];
        
        #P_Temp extra data
        enm_rw_mthd_map <- exposure[,.(entity,id_expsr_unique,enm_rw_mthd)];
        irb_fndd_non_fnncl_ind_map <- fccm[,.(entity,id_clltrl_unique,irb_fndd_non_fnncl_ind)];
        setkeyv(enm_rw_mthd_map,c('entity','id_expsr_unique'));
        setkeyv(irb_fndd_non_fnncl_ind_map,c('entity','id_clltrl_unique'));
        merged <- data_prep(a_seq,exposure,fccm,pledge_fccm,pledge_mortgage);
        #Mixed pools indicator
        merged <- merge(merged,mixed, by.x = c('entity','nttng_agrmnt'), by.y = c('entity','clltrl_nttng_agrmnt_id_mxd'),all.x=TRUE,allow.cartesian=TRUE);
        merged[is.na(mxd_clltrl_pool_elgblty_ind),mxd_clltrl_pool_elgblty_ind := 'N'];
        
        #Maturity Checks
        merged$elig <- 'N';
        #merged[enm_rw_mthd =='A_IRB', clltrl_rsdl_mtrty_yrs := 999999999999];
        merged[clltrl_rsdl_mtrty_yrs >= expsr_rsdl_mtrty_yrs, elig := 'Y'];
        merged[clltrl_rsdl_mtrty_yrs >= 0.25 & clltrl_orgnl_mtrty_mnths >= 12 , elig := 'Y'];
        
        #Dilution Risk
        merged[dltn_rsk_expsr_ind == 'Y' & clltrl_enm_irb_rcvbls_crm_typ == 'DEFAULT_RISK', elig := 'N'];
        merged[dltn_rsk_expsr_ind == 'N' & clltrl_enm_irb_rcvbls_crm_typ == 'DILUTION_RISK', elig := 'N'];
        merged <- merged[elig == 'Y',];
        
        merged_dl_both <- merged[dltn_rsk_expsr_ind == 'Y' & clltrl_enm_irb_rcvbls_crm_typ == 'BOTH',];
        merged_dl_both[,clltrl_enm_irb_rcvbls_crm_typ := 'DILUTION_RISK'];
        
        #Update guarantee map table
        current_fccm_count <- max(fccm_map$id_number);
        
        merged_dl_both <- merge(merged_dl_both,fccm_map, by.x = c('id_clltrl_unique'), by.y = c('id_number'))
        merged_dl_both[,id_number := sequence(.N) + current_fccm_count];
        merged_dl_both[,parsed_id := paste(original_clltrl_id,'DR', sep = '_')];
        fccm_map <- rbindlist(list(fccm_map,merged_dl_both[,.(parsed_id,id_number)]),use.names=FALSE,fill=FALSE);
        merged_dl_both[,id_clltrl_unique := id_number];
        merged_dl_both[,id_number := NULL]
        merged_dl_both[,parsed_id := NULL]
        merged_dl_both[,original_clltrl_id := NULL]
        
        merged_df_both <- merged[dltn_rsk_expsr_ind == 'N' & clltrl_enm_irb_rcvbls_crm_typ == 'BOTH',];
        merged_df_both[,clltrl_enm_irb_rcvbls_crm_typ := 'DEFAULT_RISK'];
        
        merged <- merged[clltrl_enm_irb_rcvbls_crm_typ != 'BOTH',];
        
        if(nrow(merged_dl_both) > 0){
          merged <- rbindlist(list(merged,merged_dl_both),use.names = TRUE);
        }
        if(nrow(merged_df_both) > 0){
          merged <- rbindlist(list(merged,merged_df_both),use.names = TRUE);
        }
        
        #CLEANUP
        merged_dl_both <- NULL;
        merged_df_both <- NULL;
        #mixed <- NULL;
        
        if(nrow(merged) > 0 )
        {
          
          print("####Number of links before Mismatch Maturity");
          print(nrow(merged));
          print(proc.time()-ptm);
          
          #Generic Calcs
          merged$id_lmt_pldg <- 'N/A';
          merged$clmn_indx <- 2;
          merged$clltrl_trnsfrbl <- 0;
          merged$lmt <- 0;
          merged$id_trnch <- 0;
          
          #Collateral Maturity Haircut
          hm <- mapply(function(x,y) (min(1,(x - 0.25) / (min(y, 5) - 0.25 ))),merged$clltrl_rsdl_mtrty_yrs, merged$expsr_rsdl_mtrty_yrs);
          merged$mtrty_msmtch_hrct <- hm;
          merged[clltrl_rsdl_mtrty_yrs >= expsr_rsdl_mtrty_yrs, mtrty_msmtch_hrct := 1];
          
          merged <- merged[mtrty_msmtch_hrct >= 0,];
          
          #Collateral HFX
          merged[hfx_expsr_ccy == clltrl_ccy, sclld_10dy_fx_hrct := 0];
          #merged[enm_rw_mthd == 'A_IRB', sclld_10dy_fx_hrct := 0];
          
          #Zero Haircut checks
          merged[expsr_zero_hrct_elgbl_ind == 'Y' & clltrl_zero_hrct_elgbl_ind == 'Y' & clltrl_ccy == expsr_ccy, c('sclld_10dy_fx_hrct','sclld_10dy_hrct','expsr_hrct') := list(0,0,0)];
          
          #Exposure haircut
          merged[,expsr_hrct_amnt := expsr_amnt * expsr_hrct];
          merged[,expsr_amnt := expsr_amnt * (1 + expsr_hrct)];
          
          #Collateral Volatility and FX Haircut
          merged[,clltrl_adj :=  (clltrl_amnt * (1- sclld_10dy_hrct - sclld_10dy_fx_hrct)) * mtrty_msmtch_hrct ];
          
          #Minimum Threshold Check
          merged[mxd_clltrl_pool_elgblty_ind == 'Y', mnm_thrshld := 0];
          
          merged[,clltrl_avlbl :=  clltrl_adj/mxmm_thrshld ];
          merged[,clltrl_cvrg := clltrl_adj];
          merged <- merged[clltrl_avlbl > 0,];
          merged[,amnt_lst_to_hrcts :=  clltrl_amnt - clltrl_avlbl];
          
          #CLEANUP
          hm <- NULL;
          
          if(nrow(merged) > 0)
          {
            print("####Number of links");
            print(nrow(merged));
            print(proc.time()-ptm);
            
            p_temp <- NULL;
            
            #Target Coeficients
            merged[expsr_hrct_amnt < clltrl_avlbl, clltrl_coverage := clltrl_avlbl - expsr_hrct_amnt]
            merged[expsr_hrct_amnt >= clltrl_avlbl, clltrl_coverage := 1]
            merged[ccf == 0,trgt_cfcnts := (clltrl_coverage * ((expsr_rw_vl + 1)/100) * 100 * (100/(sclld_10dy_fx_hrct + 1)) * (ccf + 0.000001) * sme_sclr_fctr)/100000 ];
            merged[ccf != 0,trgt_cfcnts := (clltrl_coverage * ((expsr_rw_vl + 1)/100) * 100 * (100/(sclld_10dy_fx_hrct + 1)) * ccf * sme_sclr_fctr)/100000 ];
            
            #IRB QRRE for last
            merged[qrre_ind == 'Y' & (enm_rw_mthd == 'A_IRB' | enm_rw_mthd == 'F_IRB'),trgt_cfcnts := trgt_cfcnts/1000000];
            
            merged[,mnm_cvrg := 0];
            #Generic Calcs
            merged$id_lmt_pldg <- 'N/A';
            merged$clmn_indx <- 2;
            merged$clltrl_trnsfrbl <- 0;
            merged$lmt <- 0;
            
            merged[pldg_amnt != 0, c('id_lmt_pldg','clmn_indx','clltrl_trnsfrbl','lmt') := list(paste(expsr_id_pldg,clltrl_id_pldg,sep='_'),3, clltrl_amnt,pldg_amnt)];
            merged$liens_amnt_cvrd <- 0;
            
            clltrl_list <- unique(merged[,.(entity,id_clltrl_unique,enm_pstn_clss,enm_expsr_clcltn_mthd)]);
            clltrl_list[,enm_clltrl_trnstcn_typ := 'OTHER']
            clltrl_list[enm_pstn_clss == 'SFT',enm_clltrl_trnstcn_typ := 'SFT']
            clltrl_list[enm_expsr_clcltn_mthd == 'MARK_TO_MARKET',enm_clltrl_trnstcn_typ := 'DERIVATIVE']
            clltrl_list <- clltrl_list[,.(enm_clltrl_trnstcn_typ = max(enm_clltrl_trnstcn_typ)), by =.(entity,id_clltrl_unique)];
            
            if(debug > 2)
            {
              prep_c <- merged[,.(entity,id_expsr_unique,id_clltrl_unique,expsr_amnt,expsr_hrct, expsr_hrct_amnt,ccf, clltrl_amnt,sclld_10dy_hrct, sclld_10dy_fx_hrct,mtrty_msmtch_hrct,liens_amnt_cvrd,expsr_rw_vl,0,clltrl_avlbl,trgt_cfcnts,amnt_lst_to_hrcts,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
              prep_c <- merge(prep_c,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
              prep_c[,id_expsr_unique := original_expsr_id];
              prep_c <- merge(prep_c,fccm_map,by.x = c('id_clltrl_unique'),by.y = c('id_number'));
              prep_c[,id_clltrl_unique := original_clltrl_id];
              prep_c <- prep_c[,.(entity,id_expsr_unique,id_clltrl_unique,expsr_amnt,expsr_hrct, expsr_hrct_amnt,ccf, clltrl_amnt,sclld_10dy_hrct, sclld_10dy_fx_hrct,mtrty_msmtch_hrct,liens_amnt_cvrd,expsr_rw_vl,0,clltrl_avlbl,trgt_cfcnts,amnt_lst_to_hrcts,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
            }
            
            if(a_seq == 'C'){
              #irb_funded_sequence <- 'FRP';
              irb_funded_sequence <- 'FPRO';
              irb_funded_seq <- substring(irb_funded_sequence, seq(1,nchar(irb_funded_sequence),1), seq(1,nchar(irb_funded_sequence),1));
            } else {
              irb_funded_seq <- c();
            }
            merged$enm_pstn_clss <- NULL
            merged_sa <- merged[enm_rw_mthd == 'STANDARDISED',];
            merged_irb <- merged[enm_rw_mthd != 'STANDARDISED',];
            
            #CLEANUP
            merged <- NULL;
            
            synthetic_exp_created <- 0;
            synthetic_exp_cons <- NULL;
            
            for(irb_seq in irb_funded_seq)
            {
              print('####IRB Sequence');
              print(irb_seq);
              if(irb_seq == 'F')
              {
                merged_irb_step <- merged_irb[irb_fndd_non_fnncl_ind == 'N',];
                real_estate_fccm_col <- merged_irb_step[enm_crm_clss == 'REAL_ESTATE',];
                real_estate_fccm_col <- unique(real_estate_fccm_col[,c('entity','id_clltrl_unique')]);
              }
              
              if(irb_seq == 'P')
              {
                merged_irb_step <- merged_irb[enm_crm_clss == 'RECEIVABLES',];
                merged_irb_step$expsr_hrct <- 0;
              }
              
              if(irb_seq == 'O')
              {
                merged_irb_step <- merged_irb[enm_crm_clss == 'OTHER_ELIGIBLE_IRB',];
                merged_irb_step[irb_prprty_thrshld_ind == 'Y',clltrl_cvrg := -1];
              }
              if(irb_seq == 'R')
              {
                merged_irb_step <- merged_irb[enm_crm_clss == 'REAL_ESTATE',];
                merged_irb_step[apply_rtl_lmt_chck_ind =='Y',clltrl_avlbl := clltrl_adj ];
                merged_irb_step[,amnt_lst_to_hrcts :=  clltrl_amnt - clltrl_avlbl];
                
                merged_irb_step[enm_prprty_typ == 'COMMERCIAL',trgt_cfcnts := trgt_cfcnts/1000];
                
                #tc_ranking <- merged_irb_step[,c('id_ntwrk','id_expsr_unique','id_clltrl_unique','trgt_cfcnts','expsr_amnt')];
                #setnames(tc_ranking,c('expsr_amnt','trgt_cfcnts'),c('ranked_expsr_amnt','ranked_trgt_cfcnts'));
                #tc_ranking$row_id <- frankv(tc_ranking,cols=c('id_ntwrk','ranked_trgt_cfcnts'),order = c(1L,1L),ties.method='dense');
                #tc_ranking[order(ranked_expsr_amnt),new_tc_add := seq_len(.N)/1000000, by=list(row_id)];
                
                #merged_irb_step <- merge(merged_irb_step,tc_ranking, by.x =c('id_ntwrk','id_expsr_unique','id_clltrl_unique'),by.y =c('id_ntwrk','id_expsr_unique','id_clltrl_unique'));
                #merged_irb_step[,trgt_cfcnts := trgt_cfcnts + new_tc_add];
                #merged_irb_step$row_id <- NULL;
                #merged_irb_step$new_tc_add <- NULL;
                #merged_irb_step$ranked_expsr_amnt <- NULL;
                #merged_irb_step$ranked_trgt_cfcnts <- NULL;
                #tc_ranking <- NULL;
                
                merged_irb_step[enm_rw_mthd == 'A_IRB', mnm_cvrg:= expsr_amnt * irb_prprty_thrshld/100];
                merged_irb_step[enm_rw_mthd == 'F_IRB' & apply_rtl_lmt_chck_ind == 'Y', mnm_cvrg := expsr_amnt * irb_prprty_thrshld/100];
                merged_irb_step[enm_rw_mthd == 'F_IRB' & apply_rtl_lmt_chck_ind == 'N', mnm_cvrg := expsr_amnt * mnm_thrshld];
                merged_irb_step[enm_rw_mthd == 'A_IRB',clltrl_avlbl := clltrl_adj ];
                merged_irb_step$expsr_hrct <- 0;
                
                merged_irb_step_col_elig <- merged_irb_step[clltrl_cvrg != -1,.(summed = round(sum(clltrl_cvrg),digits=precision),thres = round(max(mnm_cvrg),digits=precision)),by=list(entity,id_expsr_unique)];
                merged_irb_step_col_elig <- merged_irb_step_col_elig[summed >= thres,];
                merged_irb_step <- merge(merged_irb_step,merged_irb_step_col_elig, by=c('entity','id_expsr_unique'));
                
                merged_irb_step$summed <- NULL;
                merged_irb_step$thres <- NULL;
                
                #CLEANUP
                merged_irb_step_col_elig <- NULL;
              }
              
              if(nrow(merged_irb_step) > 0)
              {
                p_temp_irb <- NULL;
                
                if(irb_seq != 'R')
                {
                  merged_irb_step <- merged_irb_step[,.(entity,id_clltrl_unique,id_expsr_unique,expsr_amnt,clltrl_avlbl,clltrl_amnt,clltrl_trnsfrbl,nttng_agrmnt,trgt_cfcnts,amnt_lst_to_hrcts,lmt,id_lmt_pldg,clmn_indx,id_orgnl_expsr_unique,sclld_10dy_hrct,sclld_10dy_fx_hrct,expsr_rw_vl,expsr_hrct_amnt,mxd_clltrl_pool_elgblty_ind,enm_rw_mthd,irb_fndd_non_fnncl_ind,mnm_cvrg,enm_prprty_typ,id_ntwrk,liens_amnt_cvrd)];
                  merged_irb_step[,rw_mthd_appld := '']
                  p_temp_irb <- crm_solver(merged_irb_step);
                  
                  if(debug > 1){
                    print("####After CRM");
                    print(proc.time()-ptm);
                  }
                  
                } else{
                  
                  merged_irb_step <- merged_irb_step[,.(entity,id_clltrl_unique,id_expsr_unique,expsr_amnt,clltrl_avlbl,clltrl_amnt,clltrl_trnsfrbl,nttng_agrmnt,trgt_cfcnts,amnt_lst_to_hrcts,lmt,id_lmt_pldg,clmn_indx,id_orgnl_expsr_unique,sclld_10dy_hrct,sclld_10dy_fx_hrct,expsr_rw_vl,expsr_hrct_amnt,mxd_clltrl_pool_elgblty_ind,enm_rw_mthd,irb_fndd_non_fnncl_ind,mnm_cvrg,clltrl_cvrg,enm_prprty_typ,id_ntwrk,liens_amnt_cvrd)];
                  merged_irb_step[,rw_mthd_appld := '']
                  p_temp_irb <- crm_solver(merged_irb_step);
                  
                  if(debug > 1){
                    print("####After CRM");
                    print(proc.time()-ptm);
                  }
                  
                }
                
                if(irb_seq == 'R')
                {
                  #exposure_coverage_threshold <- p_temp_irb[,.(allocated = round(sum(allctd + hrct_amt),digits=precision), re_threshold =round(max(mnm_cvrg), digits=precision)), by=list(entity,id_expsr_unique)];
                  exposure_coverage_threshold <- p_temp_irb[,.(allocated = round(sum(allctd),digits=precision), re_threshold =round(max(mnm_cvrg), digits=precision)), by=list(entity,id_expsr_unique)];
                  exposure_coverage_keep <- exposure_coverage_threshold[allocated >= re_threshold,];
                  exposure_coverage_recalc <- exposure_coverage_threshold[allocated < re_threshold,];
                  p_temp_irb <- merge(p_temp_irb,exposure_coverage_keep , by = c('entity','id_expsr_unique'));
                  p_temp_irb$allocated <- NULL;
                  p_temp_irb$re_threshold <- NULL;
                  exposure_coverage_threshold <- NULL;
                  exposure_coverage_keep <- NULL;
                  
                  if(nrow(exposure_coverage_recalc) > 0)
                  {
                    if(debug > 1){
                      print("####Starting Recal for not satisfied min threshold");
                      print(proc.time()-ptm);
                    }
                    #collateral_used <- p_temp_irb[,.(col_allocated = sum(allctd + hrct_amt)), by=list(entity,id_clltrl_unique)];
                    collateral_used <- p_temp_irb[,.(col_allocated = round(sum(allctd),digits=precision)), by=list(entity,id_clltrl_unique)];
                    exposure_covered <- p_temp_irb[,.(exposure_covered = round(sum(allctd),digits=precision)), by=list(entity,id_expsr_unique)];
                    
                    original_collateral_value <- merged_irb_step[,.(original_clltrl_amnt = max(clltrl_amnt)), by =.(entity,id_clltrl_unique)];
                    merged_irb_step <- merge(merged_irb_step,exposure_covered, by.x =c('entity','id_expsr_unique'), by.y = c('entity','id_expsr_unique'), all.x = TRUE);
                    merged_irb_step <- merge(merged_irb_step,collateral_used, by.x = c('entity','id_clltrl_unique'), by.y= c('entity','id_clltrl_unique'), all.x = TRUE);
                    merged_irb_step[is.na(col_allocated), col_allocated := 0 ];
                    merged_irb_step[is.na(exposure_covered), exposure_covered := 0 ];
                    merged_irb_step[,expsr_amnt := round(expsr_amnt- exposure_covered,digits=precision)];
                    merged_irb_step[,clltrl_amnt := round(clltrl_amnt - col_allocated,digits=precision)];
                    merged_irb_step[,clltrl_avlbl := round(clltrl_avlbl - col_allocated,digits=precision)];
                    merged_irb_step[clltrl_trnsfrbl > 0,clltrl_trnsfrbl := round(clltrl_trnsfrbl - col_allocated,digits=precision)];
                    merged_irb_step <- merged_irb_step[clltrl_avlbl > 0,];
                    
                    merged_irb_step$col_allocated <- NULL;
                    merged_irb_step$exposure_covered <- NULL;
                    
                    if(nrow(merged_irb_step) > 0)
                    {
                      if(debug > 1){
                        print("####Reapply allocations that don't meet minimum threshold");
                        print(proc.time()-ptm);
                      }
                      merged_irb_step <- merged_irb_step[,.(entity,id_clltrl_unique,id_expsr_unique,expsr_amnt,clltrl_avlbl,clltrl_amnt,clltrl_trnsfrbl,nttng_agrmnt,trgt_cfcnts,amnt_lst_to_hrcts,lmt,id_lmt_pldg,clmn_indx,id_orgnl_expsr_unique,sclld_10dy_hrct,sclld_10dy_fx_hrct,expsr_rw_vl,expsr_hrct_amnt,mxd_clltrl_pool_elgblty_ind,enm_rw_mthd,irb_fndd_non_fnncl_ind,mnm_cvrg,enm_prprty_typ,id_ntwrk,liens_amnt_cvrd)];
                      merged_irb_step[,rw_mthd_appld := '']
                      p_temp_irb_leftover <- crm_solver(merged_irb_step);
                      
                      if(debug > 1){
                        print("####After CRM");
                        print(proc.time()-ptm);
                      }
                      
                      p_temp_irb <- rbindlist(list(p_temp_irb,p_temp_irb_leftover),use.names = TRUE);
                      #p_temp_irb <- p_temp_irb[,.(expsr_amnt = max(expsr_amnt),pct = min(pct),allctd = sum(allctd),hrct_amt = sum(hrct_amt),expsr_hrct_amnt = sum(expsr_hrct_amnt),hrct_10dy_amt = sum(hrct_10dy_amt),hrct_10dy_fx_amt = sum(hrct_10dy_fx_amt),expsr_rw_vl = max(expsr_rw_vl),id_orgnl_expsr_unique = max(id_orgnl_expsr_unique),mxd_clltrl_pool_elgblty_ind = max(mxd_clltrl_pool_elgblty_ind),enm_rw_mthd = max(enm_rw_mthd),irb_fndd_non_fnncl_ind = max(irb_fndd_non_fnncl_ind),enm_prprty_typ= max(enm_prprty_typ), mnm_cvrg = max(mnm_cvrg)), by =.(entity,id_expsr_unique,id_clltrl_unique)];
                      p_temp_irb <- p_temp_irb[,.(expsr_amnt = max(expsr_amnt),pct = min(pct),allctd = round(sum(allctd),digits=precision),hrct_amt = round(sum(hrct_amt),digits=precision),expsr_hrct_amnt = round(sum(expsr_hrct_amnt),digits=precision),hrct_10dy_amt = round(sum(hrct_10dy_amt),digits=precision),hrct_10dy_fx_amt = round(sum(hrct_10dy_fx_amt),digits=precision),hrct_hm_amnt = round(sum(hrct_hm_amnt),digits=precision), expsr_rw_vl = max(expsr_rw_vl),id_orgnl_expsr_unique = max(id_orgnl_expsr_unique),mxd_clltrl_pool_elgblty_ind = max(mxd_clltrl_pool_elgblty_ind),enm_prprty_typ= max(enm_prprty_typ), mnm_cvrg = max(mnm_cvrg),liens_amnt_cvrd = max(liens_amnt_cvrd)), by =.(entity,id_expsr_unique,id_clltrl_unique)];
                      
                      exp_original_value <- p_temp_irb[,.(original_expsr_amnt = max(expsr_amnt)), by =.(entity,id_expsr_unique)];
                      p_temp_irb <- merge(p_temp_irb, exp_original_value, by=c('entity','id_expsr_unique'));
                      p_temp_irb <- merge(p_temp_irb,original_collateral_value, by=c('entity','id_clltrl_unique'));
                      p_temp_irb[,expsr_amnt := original_expsr_amnt];
                      p_temp_irb[,pct := allctd/original_clltrl_amnt];
                      p_temp_irb$original_clltrl_amnt <- NULL;
                      p_temp_irb$original_expsr_amnt <- NULL;
                      exp_original_value <- NULL;
                      p_temp_irb_leftover <- NULL;
                    }
                    
                    original_collateral_value <- NULL;
                  }
                  
                }
                
                p_temp_irb_rm_found <- 0
                
                if(irb_seq == 'F' & nrow(real_estate_fccm_col) > 0){
                  
                  p_temp_irb_rm <- merge(p_temp_irb,real_estate_fccm_col, by.x = c('entity','id_clltrl_unique'), by.y = c('entity','id_clltrl_unique'));
                  
                  if(nrow(p_temp_irb_rm) >0)
                  {
                    p_temp_irb_rm_found <- 1;
                  }
                }
                if(irb_seq == 'R'){
                  p_temp_irb_rm <- p_temp_irb;
                  if(nrow(p_temp_irb_rm) >0)
                  {
                    p_temp_irb_rm_found <- 1;
                  }
                }
                
                breached_checks <- NULL;
                
                #Million Euro Check
                if(nrow(retail_limit) > 0 & p_temp_irb_rm_found==1)
                {
                  if(debug > 1){
                    print("####Retail Limit Starting");
                    print(proc.time()-ptm);
                  }
                  p_temp_irb_residential <- p_temp_irb_rm[enm_prprty_typ=='RESIDENTIAL',];
                  if(nrow(airb_sme_sf) > 0){
                    airb_sme_sf_retail <- merge(airb_sme_sf,exposure_map,by.x = c('id_expsr_unique'),by.y = c('original_expsr_id'));
                    airb_sme_sf_retail[,id_expsr_unique := id_number];
                    airb_sme_sf_retail[,id_number := NULL]
                    
                    airb_sme_sf_retail[,allctd := allctd * fx_rate]
                    airb_sme_sf_retail[,fx_rate := NULL]
                    p_temp_irb_residential <- rbindlist(list(p_temp_irb_residential,airb_sme_sf_retail),use.names = TRUE,fill = TRUE);
                  }
                  exposure_coverage <- p_temp_irb_residential[, sum(allctd), by=list(entity,id_expsr_unique)];
                  exposure_coverage[,V1 := round(V1,digits=precision)]
                  
                  #counterparties_covered <- merge(exposure_coverage, exposure, by.x = c('entity','id_expsr_unique'), by.y = c('entity','id_expsr_unique'));
                  #counterparties_covered <- unique(counterparties_covered[,.(entity,id_cntrprty)]);
                  #counterparties_covered <- merge(counterparties_covered,party_networks,by.x = c('id_cntrprty'), by.y = c('cparty_id'), all = FALSE,allow.cartesian=TRUE);
                  #counterparties_covered <- unique(counterparties_covered[,.(id_ntwrk)]);
                  #counterparties_covered <- merge(counterparties_covered,party_networks,by.x = c('id_ntwrk'), by.y = c('id_ntwrk'), all = FALSE,allow.cartesian=TRUE);
                  #counterparties_covered <- counterparties_covered[,.(cparty_id)];
                  #setnames(counterparties_covered,c('cparty_id'),c('id_prty'));
                  
                  
                  #alloc_checks <- merge(counterparties_covered,exposure, by.x = c('id_prty'), by.y = c('id_cntrprty'));
                  #alloc_checks <- merge(alloc_checks, exposure_coverage, by.x = c('entity','id_expsr_unique'), by.y = c('entity','id_expsr_unique'), all.x = TRUE);
                  alloc_checks <- merge(exposure_coverage, exposure, by.x = c('entity','id_expsr_unique'), by.y = c('entity','id_expsr_unique'));
                  alloc_checks <- merge(alloc_checks,retail_limit,by.x = c('entity','id_cntrprty'), by.y = c('entity','id_prty'), all = FALSE, allow.cartesian = TRUE);
                  alloc_checks <- merge(alloc_checks,exposure_irb_sa, by.x = c('id_expsr_unique'), by.y = c('id_expsr_unique'));
                  alloc_checks <- alloc_checks[enm_sa_irb_expsr == 'IRB',];
                  alloc_checks[!is.na(V1) & entity_cntry != 'GB' & pfe_exemption_ind == 'N' & enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET" & enm_rw_mthd == 'F_IRB',exmptn_amnts := V1 * fx_rate];
                  alloc_checks[!is.na(V1) & entity_cntry != 'GB' & enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET" & enm_rw_mthd == 'A_IRB',exmptn_amnts := a_irb_rsdntl_prprty_amnt * fx_rate];
                  alloc_checks[!is.na(V1) & entity_cntry == 'GB' & pfe_exemption_ind == 'N' & enm_rw_mthd == 'F_IRB',exmptn_amnts := V1 * fx_rate];
                  alloc_checks[entity_cntry == 'GB' & pfe_exemption_ind == 'N' & enm_rw_mthd == 'A_IRB',exmptn_amnts := expsr_amnt * fx_rate];
                  alloc_checks[entity_cntry == 'GB' & pfe_exemption_ind == 'Y',exmptn_amnts := 0];
                  alloc_checks[entity_cntry != 'GB' & pfe_exemption_ind == 'Y',exmptn_amnts := pfe_with_mlplctn_fctr * fx_rate];
                  
                  #alloc_checks[enm_expsr_clcltn_mthd == "OFF_BALANCE_SHEET",exmptn_amnts := expsr_amnt * fx_rate];
                  
                  #Split between SA only and Mixed GCCs. Mixed cannot be checked at this stage
                  c_retail_exempt_amnts_mixed <- unique(alloc_checks[mxd_rw_mthd_gcc == 'Y',.(entity,id_expsr_unique,exmptn_amnts)]);
                  
                  alloc_checks <- alloc_checks[mxd_rw_mthd_gcc == 'N',];
                  alloc_checks <- alloc_checks[,list(sum(exmptn_amnts),max(ttl_expsrs_excldng_obs),max(ttl_obs_expsrs_eur),max(fnl_ttl_expsrs),max(entity_cntry),max(whl_ln_prprty_exmpt_amnt)) , by=list(entity,id_ultmt_prnt)];
                  alloc_checks[is.na(V1), V1 := 0];
                  alloc_checks[,V1:= round(V1,digits=precision)]
                  alloc_checks[,breached_ind := 'N'];
                  alloc_checks[V2 - V1 > thrshld_limit_val, breached_ind := 'Y'];
                  
                  setnames(alloc_checks,c('V2','V1','V3','V4','V6'),c('ttl_expsrs_excldng_obs','exmptn_amnts','ttl_obs_expsrs_eur','fnl_ttl_expsrs','whl_ln_prprty_exmpt_amnt'));
                  
                  if(debug > 0){
                    retail_million_gcc <- rbindlist(list(retail_million_gcc,alloc_checks[,.(entity,id_ultmt_prnt,fnl_ttl_expsrs,ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs,exmptn_amnts,exmptn_amnts + ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs - exmptn_amnts,whl_ln_prprty_exmpt_amnt,breached_ind)]));
                  }
                  
                  #GCCs processed for the Retail check
                  gcc_retail_irb_check <- alloc_checks[,.(entity,id_ultmt_prnt,breached_ind)];
                  #Exposures already checked
                  exposures_retail_gcc_irb <- merge(gcc_retail_irb_check,retail_limit,by.x = c('entity','id_ultmt_prnt'), by.y = c('entity','id_ultmt_prnt'), allow.cartesian = TRUE);
                  exposures_retail_gcc_irb <- merge(exposures_retail_gcc_irb,exposure, by.x = c('entity','id_prty'), by.y = c('entity','id_cntrprty'), allow.cartesian = TRUE);
                  exposures_retail_gcc_irb <- unique(exposures_retail_gcc_irb[,.(entity,id_expsr_unique,expsr_amnt)]);
                  setnames(exposures_retail_gcc_irb,c('expsr_amnt'),c('dummy_field'));
                  
                  
                  breached_checks <- merge(retail_limit,exposure,by.x = c('entity','id_prty'), by.y = c('entity','id_cntrprty'), all = FALSE, allow.cartesian = TRUE);
                  breached_checks <- merge(breached_checks,alloc_checks, by.x = c('entity','id_ultmt_prnt'), by.y = c('entity','id_ultmt_prnt'), allow.cartesian = TRUE);
                  breached_checks <- breached_checks[apply_rtl_lmt_chck_ind == 'Y',];
                  breached_checks[,rcount := 1];
                  breached_checks[order(-breached_ind),ult_cparty_count := cumsum(rcount), by=list(id_expsr_unique)];
                  breached_checks <- breached_checks[ult_cparty_count == 1,];
                  breached_checks$changed <- 'N';
                  
                  if(debug > 1){
                    print("####Swaping Exposures counterparty and risk weight method");
                    print(proc.time()-ptm);
                  }
                  
                  breached_checks[enm_cntrprty_typ == 'CORP' & breached_ind == 'N',c('new_enm_cntrprty_typ','orgnl_cntrprty_typ','new_rw_method','old_rw_method','changed','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind') := list('RETAIL','CORP','A_IRB',enm_rw_mthd,'Y','Y','Y')];
                  breached_checks[enm_cntrprty_typ == 'RETAIL' & breached_ind == 'N',c('new_enm_cntrprty_typ','orgnl_cntrprty_typ','new_rw_method','old_rw_method','changed','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind') := list('RETAIL','RETAIL','A_IRB','A_IRB','Y','N','N')];
                  breached_checks[enm_cntrprty_typ == 'CORP' & breached_ind == 'Y',c('new_enm_cntrprty_typ','orgnl_cntrprty_typ','new_rw_method','old_rw_method','changed','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind') := list('CORP','CORP',enm_rw_mthd,enm_rw_mthd,'Y','N','N')];
                  breached_checks[enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y' & ntrl_prsn_ind != 'Y',c('new_enm_cntrprty_typ','orgnl_cntrprty_typ','new_rw_method','old_rw_method','changed','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind') := list('CORP','RETAIL',enm_rw_mthd_aftr_lmt_chck,'A_IRB','Y','Y','Y')];
                  breached_checks[enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y' & ntrl_prsn_ind == 'Y',c('new_enm_cntrprty_typ','orgnl_cntrprty_typ','new_rw_method','old_rw_method','changed','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind') := list('RETAIL','RETAIL','A_IRB','A_IRB','Y','N','N')];
                  
                  
                  breached_checks <- breached_checks[changed == 'Y',.(entity,id_expsr_unique,new_enm_cntrprty_typ,orgnl_cntrprty_typ,new_rw_method,old_rw_method,rtl_lmt_chck_cntrprt_chngd_ind,rtl_lmt_chck_rw_chngd_ind)];
                  setkeyv(breached_checks,c('entity','id_expsr_unique','new_enm_cntrprty_typ','orgnl_cntrprty_typ','new_rw_method','old_rw_method','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind'));
                  breached_checks <- unique(breached_checks);
                  
                  retail_million_euro_irb <- rbindlist(list(retail_million_euro_irb,breached_checks),use.names = TRUE);
                  #Get original exposure IDs
                  retail_million_euro_irb[,id_expsr_unique := as.integer(id_expsr_unique)];
                  retail_million_euro_irb <- merge(retail_million_euro_irb,exposure_map,by.x = c('id_expsr_unique'), by.y = c('id_number'));
                  retail_million_euro_irb[,id_expsr_unique := original_expsr_id];
                  retail_million_euro_irb[,original_expsr_id := NULL];
                  
                  if(debug > 1){
                    print("####Retail Limit Finished");
                    print(proc.time()-ptm);
                  }
                  
                }
                breached_checks_sme <- NULL;
                #SME Limit Check
                if(nrow(sme_limit) > 0 & p_temp_irb_rm_found==1)
                {
                  if(debug > 1){
                    print("####SME Limit Starting");
                    print(proc.time()-ptm);
                  }
                  p_temp_irb_residential <- p_temp_irb_rm[enm_prprty_typ=='RESIDENTIAL',];
                  if(nrow(airb_sme_sf) > 0){
                    airb_sme_sf_sme <- merge(airb_sme_sf,exposure_map,by.x = c('id_expsr_unique'),by.y = c('original_expsr_id'));
                    airb_sme_sf_sme[,id_expsr_unique := id_number];
                    airb_sme_sf_sme[,id_number := NULL]
                    airb_sme_sf_sme[,allctd := allctd * fx_rate]
                    airb_sme_sf_sme[,fx_rate := NULL]
                    p_temp_irb_residential <- rbindlist(list(p_temp_irb_residential,airb_sme_sf_sme),use.names = TRUE,fill = TRUE);
                  }
                  
                  exposure_coverage <- p_temp_irb_residential[, sum(allctd), by=list(entity,id_expsr_unique)];
                  exposure_coverage[,V1 := round(V1,digits=precision)]
                  
                  #counterparties_covered <- merge(exposure_coverage, exposure, by.x = c('entity','id_expsr_unique'), by.y = c('entity','id_expsr_unique'));
                  #counterparties_covered <- unique(counterparties_covered[,.(entity,id_cntrprty)]);
                  #counterparties_covered <- merge(counterparties_covered,party_networks,by.x = c('id_cntrprty'), by.y = c('cparty_id'), all = FALSE,allow.cartesian=TRUE);
                  #counterparties_covered <- unique(counterparties_covered[,.(id_ntwrk)]);
                  #counterparties_covered <- merge(counterparties_covered,party_networks,by.x = c('id_ntwrk'), by.y = c('id_ntwrk'), all = FALSE,allow.cartesian=TRUE);
                  #counterparties_covered <- counterparties_covered[,.(cparty_id)];
                  #setnames(counterparties_covered,c('cparty_id'),c('id_prty'));
                  
                  #alloc_checks <- merge(counterparties_covered,exposure, by.x = c('id_prty'), by.y = c('id_cntrprty'));
                  #alloc_checks <- merge(alloc_checks, exposure_coverage, by.x = c('entity','id_expsr_unique'), by.y = c('entity','id_expsr_unique'), all.x = TRUE);
                  alloc_checks <- merge(exposure_coverage, exposure, by.x = c('entity','id_expsr_unique'), by.y = c('entity','id_expsr_unique'));
                  alloc_checks <- merge(alloc_checks,sme_limit,by.x = c('entity','id_cntrprty'), by.y = c('entity','id_prty'), all = FALSE, allow.cartesian = TRUE);
                  alloc_checks <- merge(alloc_checks,exposure_irb_sa, by.x = c('id_expsr_unique'), by.y = c('id_expsr_unique'));
                  alloc_checks <- alloc_checks[enm_sa_irb_expsr == 'IRB',];
                  
                  alloc_checks[,enm_sa_irb_expsr := NULL];
                  alloc_checks[pfe_exemption_ind == 'N',exmptn_amnts := 0];
                  alloc_checks[pfe_exemption_ind == 'Y',exmptn_amnts := pfe_with_mlplctn_fctr * fx_rate];
                  alloc_checks[!is.na(V1) & enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET" & enm_rw_mthd == 'A_IRB',exmptn_amnts := expsr_amnt * fx_rate];
                  alloc_checks[!is.na(V1) & pfe_exemption_ind == 'N' & enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET" & enm_rw_mthd == 'F_IRB',exmptn_amnts := V1 * fx_rate];
                  alloc_checks[!is.na(V1) & pfe_exemption_ind == 'Y' & enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET" & enm_rw_mthd == 'F_IRB',exmptn_amnts := (pmin(V1,rc_with_mlplctn_fctr) + pfe_with_mlplctn_fctr) * fx_rate];
                  
                  #alloc_checks[enm_expsr_clcltn_mthd == "OFF_BALANCE_SHEET",exmptn_amnts := expsr_amnt * fx_rate];
                  
                  #Split between SA only and Mixed GCCs. Mixed cannot be checked at this stage
                  c_sme_exempt_amnts_mixed <- unique(alloc_checks[mxd_rw_mthd_gcc == 'Y',.(entity,id_expsr_unique,exmptn_amnts)]);
                  alloc_checks <- alloc_checks[mxd_rw_mthd_gcc == 'N',];
                  alloc_checks <- alloc_checks[,list(sum(exmptn_amnts),max(ttl_expsrs_excldng_obs),max(ttl_obs_expsrs_eur),max(fnl_ttl_expsrs)) , by=list(entity,id_ultmt_prnt)];
                  alloc_checks[is.na(V1), V1 := 0];
                  alloc_checks[,V1 := round(V1,digits=precision)]
                  alloc_checks[V2-V1 > 0,new_sme_fctr := ((pmin(V2 - V1,2500000) * 0.7619) + (pmax(V2 - V1 - 2500000,0) * 0.85))/(V2-V1)];
                  alloc_checks[V2-V1 <= 0,new_sme_fctr := 0.7619];
                  setnames(alloc_checks,c('V2','V1','V3','V4'),c('ttl_expsrs_excldng_obs','exmptn_amnts','ttl_obs_expsrs_eur','fnl_ttl_expsrs'));
                  
                  if(debug > 0){
                    sme_million_gcc <- rbindlist(list(sme_million_gcc,alloc_checks[,.(entity,id_ultmt_prnt,fnl_ttl_expsrs,ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs,exmptn_amnts,exmptn_amnts + ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs - exmptn_amnts,new_sme_fctr)]));
                  }
                  
                  #GCCs processed for the Retail check
                  gcc_sme_irb_check <- alloc_checks[,.(entity,id_ultmt_prnt,new_sme_fctr)];
                  #Exposures already checked
                  exposures_sme_gcc_irb <- merge(gcc_sme_irb_check,sme_limit,by.x = c('entity','id_ultmt_prnt'), by.y = c('entity','id_ultmt_prnt'), allow.cartesian = TRUE);
                  exposures_sme_gcc_irb <- merge(exposures_sme_gcc_irb,exposure, by.x = c('entity','id_prty'), by.y = c('entity','id_cntrprty'), allow.cartesian = TRUE);
                  exposures_sme_gcc_irb <- unique(exposures_sme_gcc_irb[,.(entity,id_expsr_unique,expsr_amnt)]);
                  setnames(exposures_sme_gcc_irb,c('expsr_amnt'),c('dummy_field'));
                  
                  breached_checks_sme <- merge(sme_limit,exposure,by.x = c('entity','id_prty'), by.y = c('entity','id_cntrprty'), all = FALSE, allow.cartesian = TRUE);
                  breached_checks_sme <- merge(breached_checks_sme,alloc_checks, by.x = c('entity','id_ultmt_prnt'), by.y = c('entity','id_ultmt_prnt'), allow.cartesian = TRUE);
                  breached_checks_sme <- breached_checks_sme[sme_sf_chck_ind == 'Y',];
                  breached_checks_sme[,rcount := 1];
                  breached_checks_sme[order(-new_sme_fctr),ult_cparty_count := cumsum(rcount), by=list(id_expsr_unique)];
                  breached_checks_sme <- breached_checks_sme[ult_cparty_count == 1,];
                  
                  
                  if(debug > 1){
                    print("####Swaping Exposures SME Factor");
                    print(proc.time()-ptm);
                  }
                  
                  breached_checks_sme <- breached_checks_sme[,.(entity,id_expsr_unique,new_sme_fctr)];
                  setkeyv(breached_checks_sme,c('entity','id_expsr_unique','new_sme_fctr'));
                  breached_checks_sme <- unique(breached_checks_sme);
                  
                  sme_million_euro_irb <- rbindlist(list(sme_million_euro_irb,breached_checks_sme),use.names = TRUE);
                  #Get original exposure ids
                  sme_million_euro_irb[,id_expsr_unique := as.integer(id_expsr_unique)];
                  sme_million_euro_irb <- merge(sme_million_euro_irb,exposure_map,by.x = c('id_expsr_unique'), by.y = c('id_number'));
                  sme_million_euro_irb[,id_expsr_unique := original_expsr_id];
                  sme_million_euro_irb[,original_expsr_id := NULL];
                  
                  #Update exposure SME scalar factor
                  exposure <- merge(exposure,breached_checks_sme, by.x=c('entity','id_expsr_unique'), by.y=c('entity','id_expsr_unique'), all.x = TRUE);
                  exposure[!is.na(new_sme_fctr), sme_sclr_fctr := new_sme_fctr];
                  
                  if(debug > 1){
                    print("####SME Limit Finished");
                    print(proc.time()-ptm);
                  }
                }
                
                p_temp_irb[order(id_expsr_unique,id_clltrl_unique), allctd_clltrl:=cumsum(allctd), by=list(id_expsr_unique)];
                p_temp_irb[,expsr_aftr_crm := expsr_amnt - allctd_clltrl];
                p_temp_irb[,expsr_aftr_crm := round(expsr_aftr_crm,digits=precision)];
                
                p_temp_irb <- merge(p_temp_irb,enm_rw_mthd_map,by.x = c('entity','id_expsr_unique'), by.y = c('entity','id_expsr_unique'));
                
                #Retail update
                if(!is.null(breached_checks))
                {
                  p_temp_irb <- merge(p_temp_irb,breached_checks, by.x = c('entity','id_expsr_unique'),by.y = c('entity','id_expsr_unique'), all.x = TRUE);
                  p_temp_irb[!is.na(new_rw_method), enm_rw_mthd := new_rw_method];
                  p_temp_irb$new_enm_cntrprty_typ <- NULL;
                  p_temp_irb$orgnl_cntrprty_typ <- NULL;
                  p_temp_irb$new_rw_method <- NULL;
                  p_temp_irb$old_rw_method <- NULL;
                  p_temp_irb$rtl_lmt_chck_cntrprt_chngd_ind <- NULL;
                  p_temp_irb$rtl_lmt_chck_rw_chngd_ind <- NULL;
                }
                
                #SME update
                if(!is.null(breached_checks_sme))
                {
                  p_temp_irb <- merge(p_temp_irb,breached_checks_sme, by.x = c('entity','id_expsr_unique'),by.y = c('entity','id_expsr_unique'), all.x = TRUE);
                  p_temp_irb[!is.na(new_sme_fctr), sme_sclr_fctr := new_sme_fctr];
                  p_temp_irb$new_sme_fctr <- NULL;
                  p_temp_irb$breached_ind <- NULL;
                }
                
                
                p_temp_irb <- merge(p_temp_irb,irb_fndd_non_fnncl_ind_map,by.x = c('entity','id_clltrl_unique'), by.y = c('entity','id_clltrl_unique'));
                p_temp_irb <- merge(p_temp_irb,exposure_map, by.x = c('id_expsr_unique'), by.y = c('id_number'));
                p_temp_irb <- merge(p_temp_irb,fccm_map, by.x = c('id_clltrl_unique'), by.y = c('id_number'));
                p_temp_irb <- merge(p_temp_irb,exposure_irb_sa, by.x = c('id_expsr_unique'), by.y = c('id_expsr_unique'));
                
                p_temp_irb[,fndd_synthtc_ind := 'N'];
                #p_temp_irb[mxd_clltrl_pool_elgblty_ind == 'Y', fndd_synthtc_ind := 'Y'];
                #p_temp_irb[mxd_clltrl_pool_elgblty_ind == 'N' & enm_rw_mthd != 'A_IRB' & enm_clltrl_allctn_mthd != 'FCCM',fndd_synthtc_ind := 'Y']
                p_temp_irb[irb_fndd_non_fnncl_ind == 'Y', fndd_synthtc_ind := 'Y'];
                
                current_exposure_count <- max(exposure_map$id_number);
                p_temp_irb[,id_number := sequence(.N) + current_exposure_count];
                p_temp_irb[fndd_synthtc_ind == 'Y',id_synthtc_expsr_unique := paste(original_expsr_id,original_clltrl_id, sep = '_C_')];
                p_temp_irb[fndd_synthtc_ind == 'N',id_synthtc_expsr_unique := original_expsr_id];
                p_temp_irb[,original_expsr_id := NULL];
                p_temp_irb[,original_clltrl_id := NULL];
                p_temp_irb[,irb_fndd_non_fnncl_ind := NULL];
                p_temp_irb[,enm_rw_mthd := NULL];
                
                exposure_irb_sa <- rbindlist(list(exposure_irb_sa,p_temp_irb[fndd_synthtc_ind == 'Y',.(id_number,enm_sa_irb_expsr)]),use.names=FALSE);
                exposure_map <- rbindlist(list(exposure_map,p_temp_irb[,.(id_synthtc_expsr_unique,id_number)]),use.names=FALSE,fill=FALSE);
                
                #p_temp_irb[,id_number := NULL];
                p_temp_irb[,enm_sa_irb_expsr := NULL];
                p_temp_irb$ca_step <- a_seq;
                
                
                #Update Prep Table for next steps
                exposure_coverage_irb <- p_temp_irb[, sum(allctd), by=list(entity,id_expsr_unique)];
                exposure_coverage_irb[,V1 := round(V1,digits=precision)]
                merged_irb <- merge(merged_irb,exposure_coverage_irb, by = c('entity','id_expsr_unique'), all.x=TRUE, allow.cartesian=TRUE);
                merged_irb[is.na(V1), V1 := 0];
                merged_irb[,expsr_amnt := expsr_amnt - V1];
                merged_irb[,expsr_hrct := 0];
                merged_irb[ccf == 0,trgt_cfcnts := (clltrl_avlbl * ((expsr_rw_vl + 1)/100) * 100 * (100/(sclld_10dy_fx_hrct + 1)) * (ccf + 0.000001) * sme_sclr_fctr)/100000 ];
                merged_irb[ccf != 0,trgt_cfcnts := (clltrl_avlbl * ((expsr_rw_vl + 1)/100) * 100 * (100/(sclld_10dy_fx_hrct + 1)) * ccf * sme_sclr_fctr)/100000 ];
                merged_irb[,V1 := NULL];
                
                exposure <- merge(exposure,exposure_coverage_irb, by = c('entity','id_expsr_unique'), all.x=TRUE);
                exposure[is.na(V1), V1 := 0];
                exposure[,expsr_amnt := expsr_amnt - V1];
                exposure <- exposure[,.(entity,id_expsr_unique,expsr_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,expsr_id_pldg,dltn_rsk_expsr_ind,id_cntrprty,enm_cntrprty_typ,expsr_rw_vl_lmt,enm_rw_mthd_aftr_lmt_chck,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_prprty_thrshld,irb_prprty_thrshld_ind,sme_sf_chck_ind,fx_rate,expsr_ccy,expsr_zero_hrct_elgbl_ind,pfe_exemption_ind,pfe_with_mlplctn_fctr,rc_with_mlplctn_fctr,enm_imm_expsr_clcltn,enm_pstn_clss,lien_rnk,entity_cntry,ntrl_prsn_ind,whl_ln_apprch_sme_sf_ind,imm_ba_cva_dplct_rcrd_ind,qrre_ind,a_irb_rsdntl_prprty_amnt,real_estt_rw_cnddt_ind,fll_prcnt_rw_flr_appld_ind,enm_cqs_st,orgnl_sa_expsr_clss_rw,mrtgg_cndtns_met_ind,enm_real_estt_trmnt,prprty_exempt_amnt,qlfyng_art_124_2a_ii_2,non_prft_hsng_dvlpr_ind,enm_ipre_drgtn_appld,fnl_expsr_clssfctn,prfntl_rw_ind,id_on_bs_nttng,adc_clssfctn,sme_or_prsn_ind,mrtgg_cp_rw_vl_rtl_lmt,interim_rw,uk_mrtgg_cp_rw_apprch )];
                #Add covered portion as new synthetic exposure
                ptemp_synth <- p_temp_irb[fndd_synthtc_ind == 'Y'];
                synthetic_exp <- merge(ptemp_synth,exposure,by = c('entity','id_expsr_unique'), all = FALSE);
                synthetic_exp <- merge(synthetic_exp,fccm, by = c('entity','id_clltrl_unique'), all = FALSE);
                synthetic_exp[,id_expsr_unique := id_number];
                
                p_temp_irb[,sme_sclr_fctr := NULL];
                p_temp_irb[,id_number := NULL];
                p_temp <- rbindlist(list(p_temp, p_temp_irb),use.names = TRUE);
                
                if(nrow(synthetic_exp) > 0)
                {
                  if('enm_rw_mthd.x' %in% colnames(synthetic_exp)){
                    setnames(synthetic_exp,c('enm_rw_mthd.x'),c('enm_rw_mthd'));
                  }
                  if('id_synthtc_expsr_unique.x' %in% colnames(synthetic_exp)){
                    setnames(synthetic_exp,c('id_synthtc_expsr_unique.x'),c('id_synthtc_expsr_unique'));
                  }
                  if('sme_sclr_fctr.x' %in% colnames(synthetic_exp)){
                    setnames(synthetic_exp,c('sme_sclr_fctr.x'),c('sme_sclr_fctr'));
                    synthetic_exp[,sme_sclr_fctr.y := NULL];
                  }
                  setnames(synthetic_exp,c('expsr_rw_vl.x','id_orgnl_expsr_unique.x','nttng_agrmnt.x','id_on_bs_nttng.x'),c('orig_expsr_rw_vl','id_orgnl_expsr_unique','nttng_agrmnt','id_on_bs_nttng'));
                  setnames(synthetic_exp,c('entity','id_expsr_unique','allctd','real_estate_pool','expsr_hrct','expsr_rsdl_mtrty_yrs','expsr_rw_vl.y'),c('entity','id_expsr_unique','expsr_amnt','real_estate_pool','expsr_hrct','expsr_rsdl_mtrty_yrs','expsr_rw_vl'));
                  
                  synthetic_exp$expsr_hrct <- 0;
                  synthetic_exp$unfndd_pool <- -1;
                  synthetic_exp$real_estate_pool <- -1;
                  synthetic_exp_created <- 1;
                  synthetic_exp_cons <- rbindlist(list(synthetic_exp_cons,synthetic_exp),use.names = TRUE);
                }
                
                #CLEANUP
                exposure_coverage_irb <- NULL
                ptemp_synth <- NULL;
              }
            }
            
            if(nrow(merged_sa)>0)
            {
              if(debug > 1){
                print("####SA CRM");
                print(proc.time()-ptm);
              }
              merged_sa <- merged_sa[,.(entity,id_clltrl_unique,id_expsr_unique,expsr_amnt,clltrl_avlbl,clltrl_amnt,clltrl_trnsfrbl,nttng_agrmnt,trgt_cfcnts,amnt_lst_to_hrcts,lmt,id_lmt_pldg,clmn_indx,id_orgnl_expsr_unique,sclld_10dy_hrct,sclld_10dy_fx_hrct,expsr_rw_vl,expsr_hrct_amnt,mxd_clltrl_pool_elgblty_ind,enm_rw_mthd,irb_fndd_non_fnncl_ind,mnm_cvrg,enm_prprty_typ,id_ntwrk,liens_amnt_cvrd)];
              merged_sa[,rw_mthd_appld := '']
              p_temp_sa <- crm_solver(merged_sa);
              
              if(debug > 1){
                print("####After CRM");
                print(proc.time()-ptm);
              }
              
              #Update Exposure Values
              exposure_coverage <- p_temp_sa[, sum(allctd), by=list(entity,id_expsr_unique)];
              exposure_coverage[,V1 := round(V1,digits=precision)]
              exposure <- merge(exposure,exposure_coverage, by = c('entity','id_expsr_unique'), all.x=TRUE);
              exposure[is.na(V1), V1 := 0];
              exposure[,expsr_amnt := expsr_amnt - V1];
              exposure <- exposure[,.(entity,id_expsr_unique,expsr_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,expsr_id_pldg,dltn_rsk_expsr_ind,id_cntrprty,enm_cntrprty_typ,expsr_rw_vl_lmt,enm_rw_mthd_aftr_lmt_chck,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_prprty_thrshld,irb_prprty_thrshld_ind,sme_sf_chck_ind,fx_rate,expsr_ccy,expsr_zero_hrct_elgbl_ind,pfe_exemption_ind,pfe_with_mlplctn_fctr,rc_with_mlplctn_fctr,enm_imm_expsr_clcltn,enm_pstn_clss,lien_rnk,entity_cntry,ntrl_prsn_ind,whl_ln_apprch_sme_sf_ind,imm_ba_cva_dplct_rcrd_ind,qrre_ind,a_irb_rsdntl_prprty_amnt,real_estt_rw_cnddt_ind,fll_prcnt_rw_flr_appld_ind,enm_cqs_st,orgnl_sa_expsr_clss_rw,mrtgg_cndtns_met_ind,enm_real_estt_trmnt,prprty_exempt_amnt,qlfyng_art_124_2a_ii_2,non_prft_hsng_dvlpr_ind,enm_ipre_drgtn_appld,fnl_expsr_clssfctn,prfntl_rw_ind,id_on_bs_nttng,adc_clssfctn,sme_or_prsn_ind,mrtgg_cp_rw_vl_rtl_lmt,interim_rw,uk_mrtgg_cp_rw_apprch )];
              
              
              p_temp_sa[order(id_expsr_unique,id_clltrl_unique), allctd_clltrl:=cumsum(allctd), by=list(id_expsr_unique)];
              p_temp_sa[,expsr_aftr_crm := expsr_amnt - allctd_clltrl];
              p_temp_sa[,expsr_aftr_crm := round(expsr_aftr_crm,digits=precision)];
              p_temp_sa <- merge(p_temp_sa,exposure_map, by.x = c('id_expsr_unique'), by.y = c('id_number'));
              p_temp_sa[,c('id_synthtc_expsr_unique','fndd_synthtc_ind') := list(original_expsr_id, 'N')];
              p_temp_sa[,original_expsr_id := NULL];
              p_temp_sa$ca_step <- 'C';
              
              p_temp <- rbindlist(list(p_temp,p_temp_sa), use.names = TRUE);
              p_temp_sa <- NULL;
            }
            
            if(!is.null(p_temp))
            {
              
              fccm_clltrl_not_used <- merge(clltrl_list,unique(p_temp[,.(entity,ca_step,id_clltrl_unique)]), by.x = c('entity','id_clltrl_unique'), by.y = c('entity','id_clltrl_unique'), all.x=TRUE)
              fccm_clltrl_not_used <- fccm_clltrl_not_used[is.na(ca_step),.(entity,id_clltrl_unique,enm_clltrl_trnstcn_typ)]
              fccm_clltrl_not_used <- merge(fccm_clltrl_not_used,fccm_map,by.x = c('id_clltrl_unique'),by.y = c('id_number'));
              fccm_clltrl_not_used[,id_clltrl_unique := original_clltrl_id];
              fccm_clltrl_not_used <- fccm_clltrl_not_used[,.(entity,id_clltrl_unique,enm_clltrl_trnstcn_typ)]
              
              p_temp <- merge(p_temp,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
              p_temp[,id_expsr_unique := original_expsr_id];
              p_temp <- merge(p_temp,fccm_map,by.x = c('id_clltrl_unique'),by.y = c('id_number'));
              p_temp[,id_clltrl_unique := original_clltrl_id];
              p_temp[,original_expsr_id := NULL];
              p_temp[,original_clltrl_id := NULL];
              p_temp <- merge(p_temp,exposure_map,by.x = c('id_orgnl_expsr_unique'),by.y = c('id_number'));
              p_temp[,id_orgnl_expsr_unique := original_expsr_id];
              p_temp[,original_expsr_id := NULL];
              
              alloc_vector[[i]] <- p_temp[,.(entity,id_expsr_unique,expsr_amnt,id_clltrl_unique,pct,allctd,hrct_amt,expsr_hrct_amnt,hrct_10dy_amt,hrct_10dy_fx_amt,hrct_hm_amnt,liens_amnt_cvrd,expsr_rw_vl,id_orgnl_expsr_unique,expsr_aftr_crm,id_synthtc_expsr_unique,mxd_clltrl_pool_elgblty_ind,fndd_synthtc_ind,rw_mthd_appld,ca_step)];
              i <- i+1;
            }
            
            if(synthetic_exp_created == 1)
            {
              exposure <- rbindlist(list(exposure,synthetic_exp_cons[,.(entity,id_expsr_unique,expsr_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,expsr_id_pldg,dltn_rsk_expsr_ind,id_cntrprty,enm_cntrprty_typ,expsr_rw_vl_lmt,enm_rw_mthd_aftr_lmt_chck,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_prprty_thrshld,irb_prprty_thrshld_ind,sme_sf_chck_ind,fx_rate,expsr_ccy,expsr_zero_hrct_elgbl_ind,pfe_exemption_ind,pfe_with_mlplctn_fctr,rc_with_mlplctn_fctr,enm_imm_expsr_clcltn,enm_pstn_clss,lien_rnk,entity_cntry,ntrl_prsn_ind,whl_ln_apprch_sme_sf_ind,imm_ba_cva_dplct_rcrd_ind,qrre_ind,a_irb_rsdntl_prprty_amnt,real_estt_rw_cnddt_ind,fll_prcnt_rw_flr_appld_ind,enm_cqs_st,orgnl_sa_expsr_clss_rw,mrtgg_cndtns_met_ind,enm_real_estt_trmnt,prprty_exempt_amnt,qlfyng_art_124_2a_ii_2,non_prft_hsng_dvlpr_ind,enm_ipre_drgtn_appld,fnl_expsr_clssfctn,prfntl_rw_ind,id_on_bs_nttng,adc_clssfctn,sme_or_prsn_ind,mrtgg_cp_rw_vl_rtl_lmt,interim_rw,uk_mrtgg_cp_rw_apprch )]),use.names = TRUE);
            }
            #exposure <- exposure[expsr_amnt > 0,];
          }
        }
        
        #CLEANUP
        #fccm <- NULL;
        #fccm_map <- NULL;
        merged_irb <- NULL;
        merged_sa <- NULL;
        p_temp_irb <- NULL;
        unchecked_retail_limit <- NULL;
        breached_checks <- NULL;
        breached_checks_sme <- NULL;
        alloc_checks <- NULL;
        p_temp_irb_residential <- NULL;
        exposure_coverage <- NULL;
        exposure_coverage_recalc <- NULL;
        synthetic_exp_cons <- NULL;
        p_temp <- NULL;
        exposure_checks <- NULL;
        remaining_alloc_checks <- NULL;
        enm_rw_mthd_map <- NULL;
        irb_fndd_non_fnncl_ind_map <- NULL;
        
      }
      
      if(a_seq == 'G' | a_seq == 'PG')
      {
        print("ASEQ")
        print(a_seq)
        exposure <- exposure[,id_expsr_unique := as.integer(id_expsr_unique)];
        
        merged <- data_prep(a_seq,exposure,guarantee,pledge_guarantees,NULL);
        
        #Maturity Checks
        merged$elig <- 'N';
        merged[enm_rw_mthd =='A_IRB', clltrl_rsdl_mtrty_yrs := 999999999999];
        merged[clltrl_rsdl_mtrty_yrs >= expsr_rsdl_mtrty_yrs, elig := 'Y'];
        merged[clltrl_rsdl_mtrty_yrs >= 0.25 & clltrl_orgnl_mtrty_mnths >= 12 , elig := 'Y'];
        merged <- merged[elig == 'Y',];
        
        #Risk Weight checks
        merged[round(clltrl_rw_vl,digits=precision) >= round(expsr_rw_vl,digits=precision) & enm_unfndd_crm_rw_apprch == 'UFCRMRW_LT_EXPSRRW' , elig := 'N'];
        merged[round(clltrl_rw_vl,digits=precision) > round(expsr_rw_vl,digits=precision) & enm_unfndd_crm_rw_apprch == 'UFCRMRW_LTE_EXPSRRW' , elig := 'N'];
        
        #Dilution Risk
        merged[dltn_rsk_expsr_ind == 'Y' & grnt_enm_irb_rcvbls_crm_typ == 'DEFAULT_RISK', elig := 'N'];
        merged[dltn_rsk_expsr_ind == 'N' & grnt_enm_irb_rcvbls_crm_typ == 'DILUTION_RISK', elig := 'N'];
        merged <- merged[elig == 'Y',];
        
        merged_dl_both <- merged[dltn_rsk_expsr_ind == 'Y' & grnt_enm_irb_rcvbls_crm_typ == 'BOTH',];
        merged_dl_both[,grnt_enm_irb_rcvbls_crm_typ := 'DILUTION_RISK'];
        
        #Update guarantee map table
        current_guarantee_count <- max(guarantee_map$id_number);
        merged_dl_both <- merge(merged_dl_both,guarantee_map, by.x = c('id_clltrl_unique'), by.y = c('id_number'))
        merged_dl_both[,id_number := sequence(.N) + current_guarantee_count];
        merged_dl_both[,parsed_id := paste(original_clltrl_id,'DR', sep = '_')];
        guarantee_map <- rbindlist(list(guarantee_map,merged_dl_both[,.(parsed_id,id_number)]),use.names=FALSE,fill=FALSE);
        merged_dl_both[,id_clltrl_unique := id_number];
        merged_dl_both[,id_number := NULL]
        merged_dl_both[,parsed_id := NULL]
        merged_dl_both[,original_clltrl_id := NULL]
        
        merged_df_both <- merged[dltn_rsk_expsr_ind == 'N' & grnt_enm_irb_rcvbls_crm_typ == 'BOTH',];
        merged_df_both[,grnt_enm_irb_rcvbls_crm_typ := 'DEFAULT_RISK'];
        
        merged <- merged[grnt_enm_irb_rcvbls_crm_typ != 'BOTH',];
        
        if(nrow(merged_dl_both) > 0){
          merged <- rbindlist(list(merged,merged_dl_both),use.names = TRUE);
        }
        if(nrow(merged_df_both) > 0){
          merged <- rbindlist(list(merged,merged_df_both),use.names = TRUE);
        }
        #CLEANUP
        merged_dl_both <- NULL;
        merged_df_both <- NULL;
        
        if(nrow(merged) > 0 )
        {
          print("####Number of links before Mismatch Maturity");
          print(nrow(merged));
          print(proc.time()-ptm);
          
          #Collateral Maturity Haircut
          hm <- mapply(function(x,y) (min(1,(x - 0.25) / (min(y, 5) - 0.25 ))),merged$clltrl_rsdl_mtrty_yrs, merged$expsr_rsdl_mtrty_yrs);
          merged$mtrty_msmtch_hrct <- hm;
          merged[clltrl_rsdl_mtrty_yrs >= expsr_rsdl_mtrty_yrs, mtrty_msmtch_hrct := 1];
          merged <- merged[mtrty_msmtch_hrct >= 0,];
          
          #Collateral HFX
          merged[hfx_expsr_ccy == clltrl_ccy, sclld_10dy_fx_hrct := 0];
          merged[enm_rw_mthd == 'A_IRB', sclld_10dy_fx_hrct := 0];
          
          #Collateral Volatility and FX Haircut
          merged[,clltrl_avlbl :=  (clltrl_amnt * (1- sclld_10dy_fx_hrct)) * mtrty_msmtch_hrct];
          merged <- merged[clltrl_avlbl > 0,];
          merged[,amnt_lst_to_hrcts :=  clltrl_amnt - clltrl_avlbl];
          
          #CLEANUP
          hm <- NULL;
          
          if(nrow(merged) > 0)
          {
            print("####Number of links");
            print(nrow(merged));
            print(proc.time()-ptm);
            
            #Target Coeficients
            merged[expsr_hrct_amnt < clltrl_avlbl, clltrl_coverage := clltrl_avlbl - expsr_hrct_amnt]
            merged[expsr_hrct_amnt >= clltrl_avlbl, clltrl_coverage := 1]
            merged[ccf == 0 ,trgt_cfcnts := (clltrl_coverage * ((expsr_rw_vl + 1)/100) * (100/(clltrl_rw_vl+1)) * (100/(sclld_10dy_fx_hrct + 1)) * (ccf + 0.000001) * sme_sclr_fctr)/100000];
            merged[ccf != 0,trgt_cfcnts := (clltrl_coverage * ((expsr_rw_vl + 1)/100) * (100/(clltrl_rw_vl+1)) * (100/(sclld_10dy_fx_hrct + 1)) * ccf * sme_sclr_fctr)/100000];
            
            #Generic Calcs
            merged$id_lmt_pldg <- 'N/A';
            merged$clmn_indx <- 2;
            merged$clltrl_trnsfrbl <- 0;
            merged$lmt <- 0;
            merged$mxd_clltrl_pool_elgblty_ind <- 'N';
            merged$mnm_cvrg <- 0;
            merged$enm_prprty_typ <- '';
            merged$id_trnch <- 0;
            merged$liens_amnt_cvrd <- 0;
            
            if(debug > 2)
            {
              prep_g <- merged[,.(entity,id_expsr_unique,id_clltrl_unique,expsr_amnt,0, 0,ccf, clltrl_amnt,0, sclld_10dy_fx_hrct,mtrty_msmtch_hrct,liens_amnt_cvrd,expsr_rw_vl,clltrl_rw_vl,clltrl_avlbl,trgt_cfcnts,amnt_lst_to_hrcts,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
              prep_g <- merge(prep_g,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
              prep_g[,id_expsr_unique := original_expsr_id];
              prep_g <- merge(prep_g,guarantee_map,by.x = c('id_clltrl_unique'),by.y = c('id_number'));
              prep_g[,id_clltrl_unique := original_clltrl_id];
              prep_g <- prep_g[,.(entity,id_expsr_unique,id_clltrl_unique,expsr_amnt,0, 0,ccf, clltrl_amnt,0, sclld_10dy_fx_hrct,mtrty_msmtch_hrct,liens_amnt_cvrd,expsr_rw_vl,clltrl_rw_vl,clltrl_avlbl,trgt_cfcnts,amnt_lst_to_hrcts,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
              
            }
            
            merged <- merged[,.(entity,id_clltrl_unique,id_expsr_unique,expsr_amnt,clltrl_avlbl,clltrl_amnt,clltrl_trnsfrbl,trgt_cfcnts,amnt_lst_to_hrcts,lmt,id_lmt_pldg,clmn_indx,id_orgnl_expsr_unique,sclld_10dy_hrct,sclld_10dy_fx_hrct,expsr_rw_vl,expsr_hrct_amnt,mxd_clltrl_pool_elgblty_ind,mnm_cvrg,id_ntwrk,enm_prprty_typ,liens_amnt_cvrd)]
            merged[,rw_mthd_appld := '']
            p_temp <- crm_solver(merged);
            
            if(debug > 1){
              print("####After CRM");
              print(proc.time()-ptm);
            }
            
            
            #CLEANUP
            merged <- NULL;
            
            p_temp[order(id_expsr_unique,id_clltrl_unique), allctd_clltrl:=cumsum(allctd), by=list(id_expsr_unique)];
            p_temp[,expsr_aftr_crm := expsr_amnt - allctd_clltrl];
            p_temp[,expsr_aftr_crm := round(expsr_aftr_crm,digits=precision)];
            
            #Add covered portion as new synthetic exposure
            synthetic_exp <- merge(p_temp,exposure,by = c('entity','id_expsr_unique'), all = FALSE);
            synthetic_exp <- merge(synthetic_exp,guarantee, by = c('entity','id_clltrl_unique'), all = FALSE);
            
            #Synthetic Exposure Treatment
            if(nrow(synthetic_exp) > 0)
            {
              if(debug > 1){
                print("####Updating synthetic exposures");
                print(proc.time()-ptm);
              }
              
              setnames(synthetic_exp,c('expsr_rw_vl.x','nttng_agrmnt','id_orgnl_expsr_unique.x'),c('orig_expsr_rw_vl','orig_nttng_agrmnt','id_orgnl_expsr_unique'));
              setnames(synthetic_exp,c('allctd','id_grnt_clltrl_nttng_agrmnt','unfndd_pool.x','clltrl_rw_vl'),c('expsr_amnt','nttng_agrmnt','unfndd_pool','expsr_rw_vl'));
              
              synthetic_exp[,expsr_hrct := 0];
              synthetic_exp[,unfndd_pool := -1];
              synthetic_exp[,real_estate_pool := -1];
              synthetic_exp[,expsr_id_pldg := grnt_id_pldg];
              
              #Create new sequence number for synthetic exposure id
              synthetic_exp <- merge(synthetic_exp,exposure_map, by.x = c('id_expsr_unique'), by.y = c('id_number'));
              synthetic_exp <- merge(synthetic_exp,guarantee_map, by.x = c('id_clltrl_unique'), by.y = c('id_number'));
              synthetic_exp <- merge(synthetic_exp,exposure_irb_sa, by.x = c('id_expsr_unique'), by.y = c('id_expsr_unique'));
              
              current_exposure_count <- max(exposure_map$id_number);
              synthetic_exp[,id_number := sequence(.N) + current_exposure_count];
              synthetic_exp[,parsed_id := paste(original_expsr_id,original_clltrl_id, sep = '_G_')];
              exposure_irb_sa <- rbindlist(list(exposure_irb_sa,synthetic_exp[,.(id_number,enm_sa_irb_expsr)]),use.names=FALSE);
              exposure_map <- rbindlist(list(exposure_map,synthetic_exp[,.(parsed_id,id_number)]),use.names=FALSE,fill=FALSE);
              synthetic_exp[,id_expsr_unique := id_number];
              
              synthetic_exp[,parsed_id := NULL];
              synthetic_exp[,id_number := NULL];
              setkeyv(synthetic_exp,c('id_expsr_unique'));
              
              exposure <- rbindlist(list(exposure,synthetic_exp[,.(entity,id_expsr_unique,expsr_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,expsr_id_pldg,dltn_rsk_expsr_ind,id_cntrprty,enm_cntrprty_typ,expsr_rw_vl_lmt,enm_rw_mthd_aftr_lmt_chck,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_prprty_thrshld,irb_prprty_thrshld_ind,sme_sf_chck_ind,fx_rate,expsr_ccy,expsr_zero_hrct_elgbl_ind,pfe_exemption_ind,pfe_with_mlplctn_fctr,rc_with_mlplctn_fctr,enm_imm_expsr_clcltn,enm_pstn_clss,lien_rnk,entity_cntry,ntrl_prsn_ind,whl_ln_apprch_sme_sf_ind,imm_ba_cva_dplct_rcrd_ind,qrre_ind,a_irb_rsdntl_prprty_amnt,real_estt_rw_cnddt_ind,fll_prcnt_rw_flr_appld_ind,enm_cqs_st,orgnl_sa_expsr_clss_rw,mrtgg_cndtns_met_ind,enm_real_estt_trmnt,prprty_exempt_amnt,qlfyng_art_124_2a_ii_2,non_prft_hsng_dvlpr_ind,enm_ipre_drgtn_appld,fnl_expsr_clssfctn,prfntl_rw_ind,id_on_bs_nttng,adc_clssfctn,sme_or_prsn_ind,mrtgg_cp_rw_vl_rtl_lmt,interim_rw,uk_mrtgg_cp_rw_apprch )]),use.names=TRUE);
              
              if(debug > 1){
                print("####Updated synthetic exposures");
                print(proc.time()-ptm);
              }
              
            }
            
            #Update Exposure Values
            exposure_coverage <- p_temp[, sum(allctd), by=list(entity,id_expsr_unique)];
            exposure_coverage[,V1 := round(V1,digits=precision)]
            exposure <- merge(exposure,exposure_coverage, by = c('entity','id_expsr_unique'), all.x=TRUE);
            exposure[is.na(V1), V1 := 0];
            exposure[,expsr_amnt := expsr_amnt - V1];
            exposure <- exposure[,.(entity,id_expsr_unique,expsr_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,expsr_id_pldg,dltn_rsk_expsr_ind,id_cntrprty,enm_cntrprty_typ,expsr_rw_vl_lmt,enm_rw_mthd_aftr_lmt_chck,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_prprty_thrshld,irb_prprty_thrshld_ind,sme_sf_chck_ind,fx_rate,expsr_ccy,expsr_zero_hrct_elgbl_ind,pfe_exemption_ind,pfe_with_mlplctn_fctr,rc_with_mlplctn_fctr,enm_imm_expsr_clcltn,enm_pstn_clss,lien_rnk,entity_cntry,ntrl_prsn_ind,whl_ln_apprch_sme_sf_ind,imm_ba_cva_dplct_rcrd_ind,qrre_ind,a_irb_rsdntl_prprty_amnt,real_estt_rw_cnddt_ind,fll_prcnt_rw_flr_appld_ind,enm_cqs_st,orgnl_sa_expsr_clss_rw,mrtgg_cndtns_met_ind,enm_real_estt_trmnt,prprty_exempt_amnt,qlfyng_art_124_2a_ii_2,non_prft_hsng_dvlpr_ind,enm_ipre_drgtn_appld,fnl_expsr_clssfctn,prfntl_rw_ind,id_on_bs_nttng,adc_clssfctn,sme_or_prsn_ind,mrtgg_cp_rw_vl_rtl_lmt,interim_rw,uk_mrtgg_cp_rw_apprch )];
            #exposure <- exposure[expsr_amnt > 0,];
            
            #IMM Exposure Calculation
            p_temp <- merge(p_temp,exposure_imm_map, by.x = c('id_expsr_unique'), by.y = c('id_expsr_unique'),all.x = TRUE);
            
            
            #Reset to original IDs
            p_temp <- merge(p_temp,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
            p_temp[,id_expsr_unique := original_expsr_id];
            p_temp <- merge(p_temp,guarantee_map,by.x = c('id_clltrl_unique'),by.y = c('id_number'));
            p_temp[,id_clltrl_unique := original_clltrl_id];
            
            p_temp[,id_synthtc_expsr_unique := paste(id_expsr_unique, id_clltrl_unique, sep="_G_")];
            p_temp[,original_clltrl_id := NULL];
            p_temp[,original_expsr_id := NULL];
            p_temp <- merge(p_temp,exposure_map,by.x = c('id_orgnl_expsr_unique'),by.y = c('id_number'));
            p_temp[,id_orgnl_expsr_unique := original_expsr_id];
            p_temp[,original_expsr_id := NULL];
            p_temp$fndd_synthtc_ind <- 'N';
            p_temp$ca_step <- 'G';
            
            alloc_vector[[i]] <- p_temp[is.na(enm_imm_expsr_clcltn),.(entity,id_expsr_unique,expsr_amnt,id_clltrl_unique,pct,allctd,hrct_amt,expsr_hrct_amnt,hrct_10dy_amt,hrct_10dy_fx_amt,hrct_hm_amnt,liens_amnt_cvrd,expsr_rw_vl,id_orgnl_expsr_unique,expsr_aftr_crm,id_synthtc_expsr_unique,mxd_clltrl_pool_elgblty_ind,fndd_synthtc_ind,rw_mthd_appld,ca_step)];
            i <- i +1;
            alloc_imm_calc_res <- p_temp[!is.na(enm_imm_expsr_clcltn),.(entity,id_expsr_unique,expsr_amnt,id_clltrl_unique,pct,allctd,hrct_amt,expsr_hrct_amnt,hrct_10dy_amt,hrct_10dy_fx_amt,hrct_hm_amnt,liens_amnt_cvrd,expsr_rw_vl,id_orgnl_expsr_unique,expsr_aftr_crm,id_synthtc_expsr_unique,ca_step)];
            #CLEANUP
            p_temp <- NULL;
            synthetic_exp <- NULL;
            #guarantee_map <- NULL;
            #guarantee <- NULL;
            exposure_coverage <- NULL;
            
            if(debug > 1){
              print("####Step finished");
              print(proc.time()-ptm);
            }
            
          }
        }
      }
      
      if(a_seq == 'R')
      {   
        
        p_temp_found <- 0;
        p_temp_pledge_found <- 0;
        p_temp_pool_found <- 0;
        
        exposure <- exposure[,id_expsr_unique := as.integer(id_expsr_unique)];
        
        check_pledge_exposure <- exposure[,.(entity,id_expsr_unique,expsr_id_pldg)];
        check_pledge_exposure[,exists_re_pledge := 1];
        check_pledge_exposure <- merge(pledge_mortgage,check_pledge_exposure,by.x=c('entity','id_pldg_rcvr'),by.y=c('entity','expsr_id_pldg'),allow.cartesian=TRUE);
        check_pledge_exposure <- check_pledge_exposure[, max(exists_re_pledge), by=list(entity,id_expsr_unique)];
        setnames(check_pledge_exposure,c('V1'),c('exists_re_pledge'));
        
        
        exposure <- merge(exposure,check_pledge_exposure,by.x=c('entity','id_expsr_unique'),by.y=c('entity','id_expsr_unique'),all.x=TRUE);
        
        check_pledge_exposure <- NULL
        
        remaining_exposures <- exposure[(real_estate_pool == -1 | is.na(real_estate_pool)) & is.na(exists_re_pledge),];
        remaining_exposures[,id_trnch := 0];
        remaining_exposures[,enm_prprty_typ := '']
        remaining_exposures[,orig_expsr_rw_vl := expsr_rw_vl];
        remaining_exposures[,exists_re_pledge := NULL]
        
        
        
        #Pledge Exposures
        exposure_pledge <- exposure[exists_re_pledge == 1,];
        exposure_pledge[,exists_re_pledge := NULL]
        exposure[,exists_re_pledge := NULL]
        mortgage_pledge <- mortgage[mrtgg_id_pldg != 'NA',];
        mortgage_pledge <- merge(mortgage_pledge,prprty_rnk,by.x=c('entity','id_prprty','mrtgg_lien_rnk'),by.y=c('entity','id_prprty','lien_rnk'),all.x = TRUE);
        mortgage_pledge[,pari_passu_othr_snr := NULL]
        
        exposure_pledge[,orig_expsr_rw_vl := expsr_rw_vl];
        
        merged_pledge <- data_prep('R_Pledge',exposure_pledge,mortgage_pledge,pledge_mortgage,NULL);
        
        #mortgage_pledge[,non_ipre_pref_rw := NULL]
        
        merged_pledge[,clltrl_avlbl :=  clltrl_amnt];
        
        #Risk Weight and Settings
        
        merged_pledge[,drgnt_special_case1 := 'N']
        merged_pledge[,drgnt_special_case2 := 'N']
        merged_pledge[entity_cntry != 'GB' & ipre_cntry_drgtn_ind != 'Y' & (enm_prprty_typ != 'RESIDENTIAL' | (prmry_rsdnc_ind != 'Y' & qlfyng_art_124_2a_ii_2 != 'Y' & non_prft_hsng_dvlpr_ind != 'Y')),drgnt_special_case1 := 'Y']
        merged_pledge[(enm_real_estt_trmnt == 'IPRE' | (enm_real_estt_trmnt == 'NA' | incm_prdcng_real_estt_ind == 'Y')) & entity_cntry != 'GB' & (ipre_cntry_drgtn_ind == 'Y' | (enm_prprty_typ == 'RESIDENTIAL' & (prmry_rsdnc_ind == 'Y' | qlfyng_art_124_2a_ii_2 == 'Y' | non_prft_hsng_dvlpr_ind == 'Y')) ),drgnt_special_case2 := 'Y']
        
        
        merged_pledge[mrtgg_cndtns_met_ind == 'Y' & rl_estt_elgbl_prfrentl_rw == 'Y' & (enm_real_estt_trmnt == 'IPRE'|(enm_real_estt_trmnt == 'NA' & incm_prdcng_real_estt_ind == 'Y')) & (entity_cntry == 'GB' | drgnt_special_case1 == 'Y' ) ,c('rw_mthd_appld','prfrntl_rw','clltrl_rw_vl') := list('IPRE','Y',ipre_rw)];
        merged_pledge[mrtgg_cndtns_met_ind == 'Y' & rl_estt_elgbl_prfrentl_rw == 'Y' & (enm_real_estt_trmnt == 'NON_IPRE'|(enm_real_estt_trmnt == 'NA' & incm_prdcng_real_estt_ind != 'Y') | drgnt_special_case2 == 'Y' ),c('rw_mthd_appld','prfrntl_rw','clltrl_avlbl') := list('NON_IPRE','Y',clltrl_amnt * pari_passu_extrnl_fctr)];
        merged_pledge[rw_mthd_appld == 'NON_IPRE' & prfrntl_rw == 'Y' & id_trnch == 1,clltrl_rw_vl := non_ipre_rw]
        merged_pledge[rw_mthd_appld == 'NON_IPRE' & prfrntl_rw == 'Y' & id_trnch == 2,clltrl_rw_vl := expsr_rw_vl]
        merged_pledge[(mrtgg_cndtns_met_ind != 'Y' | rl_estt_elgbl_prfrentl_rw != 'Y') & (enm_real_estt_trmnt == 'IPRE'|(enm_real_estt_trmnt == 'NA' & incm_prdcng_real_estt_ind == 'Y')),c('rw_mthd_appld','prfrntl_rw','clltrl_rw_vl') := list('IPRE','N',150)];
        merged_pledge[(mrtgg_cndtns_met_ind != 'Y' | rl_estt_elgbl_prfrentl_rw != 'Y') & (enm_real_estt_trmnt == 'NON_IPRE'|(enm_real_estt_trmnt == 'NA' & incm_prdcng_real_estt_ind != 'Y')),c('rw_mthd_appld','prfrntl_rw','clltrl_rw_vl') := list('NON_IPRE','N',expsr_rw_vl)];
        merged_pledge[rw_mthd_appld == 'NON_IPRE' & prfrntl_rw == 'N' & entity_cntry == 'GB' & enm_prprty_typ == 'COMMERCIAL', clltrl_rw_vl := pmax(100,expsr_rw_vl)];
        
        exposure_prfrntl_rw <- merged_pledge[prfrntl_rw %in% c('Y','N'),.(entity,id_expsr_unique,id_clltrl_unique,prfrntl_rw)]
        
        
        exposure_ipre_drgtn <- merged_pledge[(enm_real_estt_trmnt == 'IPRE' | (enm_real_estt_trmnt == 'NA' & incm_prdcng_real_estt_ind == 'Y')) & entity_cntry != 'GB' & prfrntl_rw == 'Y' & rw_mthd_appld == 'NON_IPRE',.(entity,id_expsr_unique,id_clltrl_unique,ipre_cntry_drgtn_ind)];
        exposure_ipre_drgtn[ipre_cntry_drgtn_ind == 'Y',enm_ipre_drgtn_appld  := 'ART_125_126']
        exposure_ipre_drgtn[ipre_cntry_drgtn_ind != 'Y',enm_ipre_drgtn_appld  := 'ART_124']
        
        exposure_ipre_drgtn_appld_methd <- unique(exposure_ipre_drgtn[,.(entity,id_expsr_unique,enm_ipre_drgtn_appld)])
        exposure_ipre_drgtn_appld_methd <- merge(exposure_ipre_drgtn_appld_methd,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
        exposure_ipre_drgtn_appld_methd[,id_expsr_unique := original_expsr_id];
        exposure_ipre_drgtn_appld_methd <- unique(exposure_ipre_drgtn_appld_methd[,.(entity,id_expsr_unique,enm_ipre_drgtn_appld)])
        
        if(debug > 2){
          re_pledge_rw_used <- merged_pledge[rw_mthd_appld %in% c('IPRE','NON_IPRE'),.(entity,id_expsr_unique,id_clltrl_unique,mrtgg_cndtns_met_ind,rl_estt_elgbl_prfrentl_rw,enm_real_estt_trmnt,incm_prdcng_real_estt_ind,rw_mthd_appld,prfrntl_rw,expsr_rw_vl,clltrl_rw_vl)]
          re_pledge_rw_used <- merge(re_pledge_rw_used,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
          re_pledge_rw_used[,id_expsr_unique := original_expsr_id];
          re_pledge_rw_used <- merge(re_pledge_rw_used,mortgage_map,by.x = c('id_clltrl_unique'),by.y = c('id_number'));
          re_pledge_rw_used[,id_clltrl_unique := original_clltrl_id];
          re_pledge_rw_used <- re_pledge_rw_used[,.(entity,id_expsr_unique,id_clltrl_unique,mrtgg_cndtns_met_ind,rl_estt_elgbl_prfrentl_rw,enm_real_estt_trmnt,incm_prdcng_real_estt_ind,rw_mthd_appld,prfrntl_rw,expsr_rw_vl,clltrl_rw_vl)]
          
        }
        
        mortgage_non_pref_elig <- merged_pledge[prfrntl_rw == 'N', max(clltrl_rw_vl), by=list(entity,id_clltrl_unique)];
        setnames(mortgage_non_pref_elig,c('V1'),c('fnl_rw_vl'))
        mortgage_non_pref_elig <- merge(mortgage_non_pref_elig,mortgage_map, by.x=c('id_clltrl_unique'), by.y = c('id_number'));
        mortgage_non_pref_elig[,id_clltrl_unique := original_clltrl_id];
        mortgage_non_pref_elig <- mortgage_non_pref_elig[,.(entity,id_clltrl_unique,fnl_rw_vl)]
        
        synthetic_ipre_pref <- merged_pledge[rw_mthd_appld == 'IPRE'  & prfrntl_rw == 'Y',.(entity,id_expsr_unique,id_clltrl_unique)];
        synthetic_all_rw_mthd_appled <- merged_pledge[rw_mthd_appld %in% c('IPRE','NON_IPRE'),.(entity,id_expsr_unique,id_clltrl_unique,rw_mthd_appld)];
        
        #Link not picked yet, will be updated after collateral allocation
        synthetic_all_rw_mthd_appled[,clltrl_appld_ind := 'N']
        
        exposure_ipre_pref <- merged_pledge[rw_mthd_appld == 'IPRE' & prfrntl_rw == 'Y', max(expsr_rw_vl), by=list(entity,id_expsr_unique)];
        setnames(exposure_ipre_pref,c('V1'),c('dummy'))
        
        exposure_ipre <- merged_pledge[entity_cntry != 'GB' & rw_mthd_appld == 'IPRE', max(expsr_rw_vl), by=list(entity,id_expsr_unique)];
        setnames(exposure_ipre,c('V1'),c('dummy'))
        
        merged_pledge[,entity_cntry := NULL]
        
        #Collateral Volatility and FX Haircut
        merged_pledge[,liens_amnt_cvrd := round(clltrl_amnt - clltrl_avlbl,digits=precision)]
        merged_pledge <- merged_pledge[clltrl_avlbl > 0,];
        merged_pledge[,amnt_lst_to_hrcts :=  liens_amnt_cvrd];
        
        if(nrow(merged_pledge) > 0 )
        {
          print('####R Pledge');
          print("####Number of links");
          print(nrow(merged_pledge));
          print(proc.time()-ptm);
          
          
          #Target Coeficients
          merged_pledge[expsr_hrct_amnt < clltrl_avlbl, clltrl_coverage := clltrl_avlbl - expsr_hrct_amnt]
          merged_pledge[expsr_hrct_amnt >= clltrl_avlbl, clltrl_coverage := 1]
          merged_pledge[ccf == 0 ,trgt_cfcnts := (clltrl_coverage/1000 * ((expsr_rw_vl +1) /100) * (100/(clltrl_rw_vl+1)) * 100 * (ccf + 0.000001) * sme_sclr_fctr)/100000 ];
          merged_pledge[ccf != 0,trgt_cfcnts := (clltrl_coverage/1000 * ((expsr_rw_vl +1) /100) * (100/(clltrl_rw_vl+1)) * 100 * ccf * sme_sclr_fctr)/100000 ];
          
          #Generic Calcs
          merged_pledge$id_lmt_pldg <- 'N/A';
          merged_pledge$clmn_indx <- 2;
          merged_pledge$clltrl_trnsfrbl <- 0;
          merged_pledge$lmt <- 0;
          merged_pledge$mxd_clltrl_pool_elgblty_ind <- 'N';
          merged_pledge$mnm_cvrg <- 0;
          
          if(debug > 2)
          {
            prep_r_pledge <- merged_pledge[,.(entity,id_expsr_unique,id_clltrl_unique,expsr_amnt,0, 0,ccf, clltrl_amnt,0, 0,0,liens_amnt_cvrd,expsr_rw_vl,clltrl_rw_vl,clltrl_avlbl,trgt_cfcnts,amnt_lst_to_hrcts,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
            prep_r_pledge <- merge(prep_r_pledge,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
            prep_r_pledge[,id_expsr_unique := original_expsr_id];
            prep_r_pledge <- merge(prep_r_pledge,mortgage_map,by.x = c('id_clltrl_unique'),by.y = c('id_number'));
            prep_r_pledge[,id_clltrl_unique := original_clltrl_id];
            prep_r_pledge <- prep_r_pledge[,.(entity,id_expsr_unique,id_clltrl_unique,expsr_amnt,0, 0,ccf, clltrl_amnt,0, 0,0,liens_amnt_cvrd,expsr_rw_vl,clltrl_rw_vl,clltrl_avlbl,trgt_cfcnts,amnt_lst_to_hrcts,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
          }
          
          merged_pledge <- merged_pledge[,.(entity,id_clltrl_unique,id_expsr_unique,expsr_amnt,clltrl_avlbl,clltrl_amnt,clltrl_trnsfrbl,trgt_cfcnts,amnt_lst_to_hrcts,lmt,id_lmt_pldg,clmn_indx,id_orgnl_expsr_unique,sclld_10dy_hrct,sclld_10dy_fx_hrct,expsr_rw_vl,expsr_hrct_amnt,mxd_clltrl_pool_elgblty_ind,mnm_cvrg,id_ntwrk,enm_prprty_typ,liens_amnt_cvrd,rw_mthd_appld)]
          p_temp_pledge <- crm_solver(merged_pledge);
          
          if(nrow(p_temp_pledge) >0){
            p_temp_pledge_found <- 1;
          }
          
          if(debug > 1){
            print("####After CRM");
            print(proc.time()-ptm);
          }
          
          #CLEANUP
          merged_pledge <- NULL;
          
          p_temp_pledge[order(id_expsr_unique,id_clltrl_unique), allctd_clltrl:=cumsum(allctd), by=list(id_expsr_unique)];
          p_temp_pledge[,expsr_aftr_crm := expsr_amnt - allctd_clltrl];
          p_temp_pledge[,expsr_aftr_crm := round(expsr_aftr_crm,digits=precision)];
          
          p_temp_pledge <- merge(p_temp_pledge,exposure_ipre_drgtn,by.x=c('entity','id_expsr_unique','id_clltrl_unique'),by.y=c('entity','id_expsr_unique','id_clltrl_unique'),all.x = TRUE);
          exposure_non_ipre_drgnt <- p_temp_pledge[!is.na(enm_ipre_drgtn_appld ),.(entity,id_expsr_unique)];
          exposure_non_ipre_drgnt <- unique(exposure_non_ipre_drgnt);
          exposure_non_ipre_drgnt[,dummy := 'Y']
          p_temp_pledge[,enm_ipre_drgtn_appld := NULL];
          p_temp_pledge[,ipre_cntry_drgtn_ind := NULL];
          
          exposure_prfrntl_rw <- merge(p_temp_pledge[,.(entity,id_expsr_unique,id_clltrl_unique)],exposure_prfrntl_rw,by=c('entity','id_expsr_unique','id_clltrl_unique'))
          exposure_prfrntl_rw <- merge(exposure_prfrntl_rw,exposure_map, by.x = c('id_expsr_unique'), by.y = c('id_number'));
          exposure_prfrntl_rw <- merge(exposure_prfrntl_rw,mortgage_map, by.x = c('id_clltrl_unique'), by.y = c('id_number'));
          exposure_prfrntl_rw[,id_expsr_unique := original_expsr_id];
          exposure_prfrntl_rw[,id_clltrl_unique := original_clltrl_id];
          exposure_prfrntl_rw <- exposure_prfrntl_rw[,.(entity,id_expsr_unique,id_clltrl_unique,prfrntl_rw)]
          
          
          setnames(mortgage_pledge,c('mrtgg_lien_rnk','mrtgg_entity_cntry'),c('lien_rnk','entity_cntry'));
          #Pari Passu, LTV Recalc
          mortgage_covered <- p_temp_pledge[, sum(allctd), by=list(entity,id_clltrl_unique)];
          mortgage_covered[,ttl_expsr_cvrd := round(V1,digits=precision)]
          mortgage_covered <- merge(mortgage_covered,mortgage_pledge,by.x=c('entity','id_clltrl_unique'),by.y=c('entity','id_clltrl_unique'))
          mortgage_covered <- mortgage_covered[,.(entity,id_clltrl_unique,lien_rnk,id_prprty,ttl_expsr_cvrd,rl_estt_elgbl_prfrentl_rw,prdntl_prprty_vl,entity_cntry,enm_prprty_typ)];
          
          re_pledge_pari_passu <- merge(prprty_rnk,mortgage_covered,by.x=c('entity','lien_rnk','id_prprty'),by.y=c('entity','lien_rnk','id_prprty'),allow.cartesian=TRUE,all.x= TRUE)
          re_pledge_pari_passu[is.na(ttl_expsr_cvrd), ttl_expsr_cvrd := 0]
          re_pledge_pari_passu[is.na(pari_passu_othr_snr), pari_passu_othr_snr := 0]
          re_pledge_pari_passu <- re_pledge_pari_passu[,sum(pari_passu_othr_snr +ttl_expsr_cvrd), by=list(entity,lien_rnk,id_prprty)];
          setnames(re_pledge_pari_passu,c('V1'),c('fnl_pari_passu_ttl'));
          
          mortgage_covered <- mortgage_covered[rl_estt_elgbl_prfrentl_rw == 'Y',];
          mortgage_covered_more_snr_lien <- merge(mortgage_covered,re_pledge_pari_passu,by.x=c('entity','id_prprty'),by.y=c('entity','id_prprty'),allow.cartesian=TRUE)
          mortgage_covered_more_snr_lien <- mortgage_covered_more_snr_lien[lien_rnk.x > lien_rnk.y,];
          mortgage_covered_more_snr_lien <- mortgage_covered_more_snr_lien[,sum(fnl_pari_passu_ttl), by=list(entity,id_clltrl_unique)];
          setnames(mortgage_covered_more_snr_lien,c('V1'),c('fnl_ttl_more_snr_lien_vl'));
          
          mortgage_covered[,next_lien_rank := lien_rnk + 1];
          mortgage_covered <- merge(mortgage_covered,re_pledge_pari_passu,by.x=c('entity','lien_rnk','id_prprty'),by.y=c('entity','lien_rnk','id_prprty'),all.x=TRUE)
          mortgage_covered[is.na(fnl_pari_passu_ttl),fnl_pari_passu_ttl := 0];
          setnames(mortgage_covered,c('fnl_pari_passu_ttl'),c('fnl_pari_passu_ttl_rnk'))
          
          mortgage_covered <- merge(mortgage_covered,mortgage_covered_more_snr_lien,by.x=c('entity','id_clltrl_unique'),by.y=c('entity','id_clltrl_unique'),all.x=TRUE)
          mortgage_covered[is.na(fnl_ttl_more_snr_lien_vl),fnl_ttl_more_snr_lien_vl := 0];
          
          mortgage_covered <- merge(mortgage_covered,re_pledge_pari_passu,by.x=c('entity','next_lien_rank','id_prprty'),by.y=c('entity','lien_rnk','id_prprty'),all.x=TRUE)
          mortgage_covered[is.na(fnl_pari_passu_ttl),fnl_pari_passu_ttl := 0];
          setnames(mortgage_covered,c('fnl_pari_passu_ttl'),c('fnl_pari_passu_ttl_rnk_plus'))
          
          mortgage_covered[,fnl_ltv := ((fnl_ttl_more_snr_lien_vl +fnl_pari_passu_ttl_rnk + fnl_pari_passu_ttl_rnk_plus)*100)/prdntl_prprty_vl];
          mortgage_covered[,rw_code := 'NA'];
          
          mortgage_covered_res_gb <- mortgage_covered[entity_cntry == 'GB' & enm_prprty_typ == 'RESIDENTIAL' ,]
          mortgage_covered_res_non_gb <- mortgage_covered[entity_cntry != 'GB'& enm_prprty_typ == 'RESIDENTIAL' ,]
          mortgage_covered_com_gb <- mortgage_covered[entity_cntry == 'GB' & enm_prprty_typ == 'COMMERCIAL' ,]
          mortgage_covered_com_non_gb <- mortgage_covered[entity_cntry != 'GB'& enm_prprty_typ == 'COMMERCIAL' ,]
          
          mortgage_covered_res_gb[fnl_ltv <= 50,rw_code := 'RESIDENTIAL_GB_ETV_LE_50']
          mortgage_covered_res_gb[fnl_ltv <= 60 & fnl_ltv > 50,rw_code := 'RESIDENTIAL_GB_ETV_GT_50_LE_60']
          mortgage_covered_res_gb[fnl_ltv <= 80 & fnl_ltv > 60,rw_code := 'RESIDENTIAL_GB_ETV_GT_60_LE_80']
          mortgage_covered_res_gb[fnl_ltv <= 90 & fnl_ltv > 80,rw_code := 'RESIDENTIAL_GB_ETV_GT_80_LE_90']
          mortgage_covered_res_gb[fnl_ltv <= 100 & fnl_ltv > 90,rw_code := 'RESIDENTIAL_GB_ETV_GT_90_LE_100']
          mortgage_covered_res_gb[fnl_ltv > 100,rw_code := 'RESIDENTIAL_GB_ETV_GT_100']
          
          mortgage_covered_res_non_gb[fnl_ltv <= 50,rw_code := 'RESIDENTIAL_NA_ETV_LE_50']
          mortgage_covered_res_non_gb[fnl_ltv <= 60 & fnl_ltv > 50,rw_code := 'RESIDENTIAL_NA_ETV_GT_50_LE_60']
          mortgage_covered_res_non_gb[fnl_ltv <= 80 & fnl_ltv > 60,rw_code := 'RESIDENTIAL_NA_ETV_GT_60_LE_80']
          mortgage_covered_res_non_gb[fnl_ltv <= 90 & fnl_ltv > 80,rw_code := 'RESIDENTIAL_NA_ETV_GT_80_LE_90']
          mortgage_covered_res_non_gb[fnl_ltv <= 100 & fnl_ltv > 90,rw_code := 'RESIDENTIAL_NA_ETV_GT_90_LE_100']
          mortgage_covered_res_non_gb[fnl_ltv > 100,rw_code := 'RESIDENTIAL_NA_ETV_GT_100']
          
          mortgage_covered_com_gb[fnl_ltv <= 60,rw_code := 'COMMERCIAL_GB_ETV_LE_60']
          mortgage_covered_com_gb[fnl_ltv <= 80 & fnl_ltv > 60,rw_code := 'COMMERCIAL_GB_ETV_GT_60_LE_80']
          mortgage_covered_com_gb[fnl_ltv > 80,rw_code := 'COMMERCIAL_GB_ETV_GT_80']
          
          mortgage_covered_com_non_gb[fnl_ltv <= 60,rw_code := 'COMMERCIAL_NA_ETV_LE_60']
          mortgage_covered_com_non_gb[fnl_ltv <= 80 & fnl_ltv > 60,rw_code := 'COMMERCIAL_NA_ETV_GT_60_LE_80']
          mortgage_covered_com_non_gb[fnl_ltv > 80,rw_code := 'COMMERCIAL_NA_ETV_GT_80']
          
          
          mortgage_fnl_ipre_rw <- rbindlist(list(mortgage_covered_res_gb,mortgage_covered_res_non_gb,mortgage_covered_com_gb,mortgage_covered_com_non_gb),use.names=TRUE)
          mortgage_fnl_ipre_rw <- merge(mortgage_fnl_ipre_rw,ltv,by.x=c('rw_code'),by.y=c('ltv'));
          mortgage_fnl_ipre_rw <- mortgage_fnl_ipre_rw[,.(entity,id_clltrl_unique,interim_rw_1,fnl_ltv)]
          setnames(mortgage_fnl_ipre_rw,c('interim_rw_1'),c('fnl_ipre_rw'))
          
          mortgage_fnl_ipre_rw <- merge(synthetic_ipre_pref,mortgage_fnl_ipre_rw, by.x=c('entity','id_clltrl_unique'), by.y=c('entity','id_clltrl_unique'));
          mortgage_fnl_ipre_rw <- mortgage_fnl_ipre_rw[,.(entity,id_expsr_unique,id_clltrl_unique,fnl_ipre_rw,fnl_ltv)];
          
          synthetic_ipre_pref <- NULL;
          
          exposure_pledge[,id_trnch := 0];
          exposure_pledge[,enm_prprty_typ := '']
          
          mortgage_pledge[,enm_prprty_typ := NULL];
          
          #Add covered portion as new synthetic exposure
          synthetic_exp <- merge(p_temp_pledge,exposure_pledge,by = c('entity','id_expsr_unique'), all = FALSE);
          synthetic_exp <- merge(synthetic_exp,mortgage_pledge, by = c('entity','id_clltrl_unique'), all = FALSE);
          
          #Synthetic Exposure Treatment
          if(nrow(synthetic_exp) > 0)
          {
            if(debug > 1){
              print("####Updating synthetic exposures");
              print(proc.time()-ptm);
            }
            
            synthetic_exp <- merge(synthetic_exp,mortgage_fnl_ipre_rw,by.x=c('entity','id_clltrl_unique','id_expsr_unique'),by.y=c('entity','id_clltrl_unique','id_expsr_unique'),all.x=TRUE)
            synthetic_exp <- merge(synthetic_exp,exposure_ipre_pref,by.x=c('entity','id_expsr_unique'),by.y=c('entity','id_expsr_unique'),all.x=TRUE)
            synthetic_exp[!is.na(dummy) & !is.na(fnl_ipre_rw), clltrl_rw_vl := fnl_ipre_rw];
            
            setnames(synthetic_exp,c('orig_expsr_rw_vl'),c('orig_expsr_rw_vl.z'));
            setnames(synthetic_exp,c('expsr_rw_vl.x','id_orgnl_expsr_unique.x','id_trnch.y','lien_rnk.x','entity_cntry.x','enm_prprty_typ.x'),c('orig_expsr_rw_vl','id_orgnl_expsr_unique','id_trnch','lien_rnk','entity_cntry','enm_prprty_typ'));
            setnames(synthetic_exp,c('allctd','real_estate_pool.x','clltrl_rw_vl'),c('expsr_amnt','real_estate_pool','expsr_rw_vl'));
            
            synthetic_exp <- merge(synthetic_exp,exposure_map, by.x = c('id_expsr_unique'), by.y = c('id_number'));
            synthetic_exp <- merge(synthetic_exp,mortgage_map, by.x = c('id_clltrl_unique'), by.y = c('id_number'));
            synthetic_exp <- merge(synthetic_exp,exposure_irb_sa, by.x = c('id_expsr_unique'), by.y = c('id_expsr_unique'));
            current_exposure_count <- max(exposure_map$id_number);
            synthetic_exp[,id_number := sequence(.N) + current_exposure_count];
            synthetic_exp[,parsed_id := paste(original_expsr_id,original_clltrl_id, sep = '_R_')];
            
            synthetic_all_rw_mthd_appled <- merge(synthetic_all_rw_mthd_appled,synthetic_exp[,.(entity,id_expsr_unique,id_clltrl_unique,id_number)],by.x=c('entity','id_expsr_unique','id_clltrl_unique'),by.y=c('entity','id_expsr_unique','id_clltrl_unique'),all.x=TRUE);
            synthetic_all_rw_mthd_appled[!is.na(id_number),c('id_expsr_unique','clltrl_appld_ind') := list(id_number,'Y')];
            synthetic_all_rw_mthd_appled <- synthetic_all_rw_mthd_appled[,.(entity,id_expsr_unique,id_clltrl_unique,rw_mthd_appld,clltrl_appld_ind)]
            
            mortgage_fnl_ipre_rw <- merge(mortgage_fnl_ipre_rw,exposure_map, by.x = c('id_expsr_unique'), by.y = c('id_number'));
            mortgage_fnl_ipre_rw <- merge(mortgage_fnl_ipre_rw,mortgage_map, by.x=c('id_clltrl_unique'), by.y = c('id_number'));
            mortgage_fnl_ipre_rw[,id_synthetic := paste(original_expsr_id,original_clltrl_id, sep = '_R_')];
            mortgage_fnl_ipre_rw <- mortgage_fnl_ipre_rw[,.(entity,id_synthetic,fnl_ipre_rw,fnl_ltv)]
            
            
            #Update Exposure IRB vs SA Map
            exposure_irb_sa <- rbindlist(list(exposure_irb_sa,synthetic_exp[,.(id_number,enm_sa_irb_expsr)]),use.names=FALSE);
            #Update Exposure IDs
            exposure_map <- rbindlist(list(exposure_map,synthetic_exp[,.(parsed_id,id_number)]),use.names=FALSE,fill=FALSE);
            
            synthetic_exp[,id_expsr_unique := id_number];
            synthetic_exp[,parsed_id := NULL];
            synthetic_exp[,id_number := NULL];
            setkeyv(synthetic_exp,c('id_expsr_unique'));
            
            exposure_pledge <- rbindlist(list(exposure_pledge,synthetic_exp[,.(entity,id_expsr_unique,expsr_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,expsr_id_pldg,dltn_rsk_expsr_ind,id_cntrprty,enm_cntrprty_typ,id_trnch,expsr_rw_vl_lmt,enm_rw_mthd_aftr_lmt_chck,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_prprty_thrshld,irb_prprty_thrshld_ind,sme_sf_chck_ind,fx_rate,expsr_ccy,expsr_zero_hrct_elgbl_ind,orig_expsr_rw_vl,pfe_exemption_ind,pfe_with_mlplctn_fctr,rc_with_mlplctn_fctr,enm_imm_expsr_clcltn,enm_pstn_clss,lien_rnk,entity_cntry,ntrl_prsn_ind,whl_ln_apprch_sme_sf_ind,enm_prprty_typ,imm_ba_cva_dplct_rcrd_ind,qrre_ind,a_irb_rsdntl_prprty_amnt,real_estt_rw_cnddt_ind,fll_prcnt_rw_flr_appld_ind,enm_cqs_st,orgnl_sa_expsr_clss_rw,mrtgg_cndtns_met_ind,enm_real_estt_trmnt,prprty_exempt_amnt,qlfyng_art_124_2a_ii_2,non_prft_hsng_dvlpr_ind,enm_ipre_drgtn_appld,fnl_expsr_clssfctn,prfntl_rw_ind,id_on_bs_nttng,adc_clssfctn,sme_or_prsn_ind,mrtgg_cp_rw_vl_rtl_lmt,interim_rw,uk_mrtgg_cp_rw_apprch )]),use.names = TRUE);
            
            if(debug > 1){
              print("####Updated synthetic exposures");
              print(proc.time()-ptm);
            }
            
          }
          
          #Update Exposure Values
          exposure_coverage <- p_temp_pledge[, sum(allctd), by=list(entity,id_expsr_unique)];
          exposure_coverage[,V1 := round(V1,digits=precision)]
          exposure_pledge <- merge(exposure_pledge,exposure_coverage, by = c('entity','id_expsr_unique'), all.x=TRUE);
          exposure_pledge[is.na(V1), V1 := 0];
          exposure_pledge[,expsr_amnt := expsr_amnt - V1];
          
          if(nrow(exposure_non_ipre_drgnt) > 0){
            exposure_ipre <- unique(rbindlist(list(exposure_ipre,exposure_non_ipre_drgnt),use.names=FALSE));
          }
          
          #RW Method NON IPRE
          non_ipre_rw_mthd <- p_temp_pledge[rw_mthd_appld=='NON_IPRE',max(rw_mthd_appld),by=list(entity,id_expsr_unique)];
          setnames(non_ipre_rw_mthd,c('V1'),c('non_ipre_rw_mthd'))
          
          exposure_pledge[,expsr_excldng_lien_ind := 'N']
          exposure_pledge[,rw_mthd_appld := '']
          exposure_pledge <- merge(exposure_pledge,exposure_ipre,by.x=c('entity','id_expsr_unique'),by.y=c('entity','id_expsr_unique'),all.x=TRUE)
          exposure_pledge[!is.na(dummy), c('expsr_rw_vl','expsr_excldng_lien_ind','rw_mthd_appld') := list(150,'Y','IPRE')];
          exposure_pledge[,dummy := NULL]
          
          exposure_pledge <- merge(exposure_pledge,non_ipre_rw_mthd,by.x=c('entity','id_expsr_unique'),by.y= c('entity','id_expsr_unique'),all.x=TRUE)
          exposure_pledge <- merge(exposure_pledge,exposure_non_ipre_drgnt,by.x=c('entity','id_expsr_unique'),by.y=c('entity','id_expsr_unique'),all.x=TRUE)
          exposure_pledge[!is.na(non_ipre_rw_mthd) & is.na(dummy), c('expsr_excldng_lien_ind','rw_mthd_appld') := list('Y','NON_IPRE')];
          exposure_pledge[,non_ipre_rw_mthd := NULL]
          exposure_pledge[,dummy := NULL]
          
          exposure_fnl_typ <- exposure_pledge[rw_mthd_appld %in% c('IPRE','NON_IPRE') & expsr_excldng_lien_ind == 'Y' ,.(entity,id_expsr_unique,rw_mthd_appld,expsr_excldng_lien_ind)]
          exposure_fnl_typ <- merge(exposure_fnl_typ,p_temp_pledge[,.(entity,id_expsr_unique,enm_prprty_typ,allctd)],by = c('entity','id_expsr_unique'), all = FALSE);
          exposure_fnl_typ <- exposure_fnl_typ[,.(rw_mthd_appld = max(rw_mthd_appld),sum_res = sum(allctd[enm_prprty_typ=='RESIDENTIAL']),sum_comm = sum(allctd[enm_prprty_typ=='COMMERCIAL'])),by=list(entity,id_expsr_unique)];
          exposure_fnl_typ[sum_res >= sum_comm, fnl_prtfl_typ := 'RSDNTL']
          exposure_fnl_typ[sum_res < sum_comm, fnl_prtfl_typ := 'CMMRCL']
          
          exposure_fnl_typ <- merge(exposure_fnl_typ,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
          exposure_fnl_typ[,id_expsr_unique := original_expsr_id];
          exposure_fnl_typ <- exposure_fnl_typ[,.(entity,id_expsr_unique,rw_mthd_appld,fnl_prtfl_typ)]
          
          exposure_pledge <- exposure_pledge[,.(entity,id_expsr_unique,expsr_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,expsr_id_pldg,dltn_rsk_expsr_ind,id_cntrprty,enm_cntrprty_typ,id_trnch,expsr_rw_vl_lmt,enm_rw_mthd_aftr_lmt_chck,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_prprty_thrshld,irb_prprty_thrshld_ind,sme_sf_chck_ind,fx_rate,expsr_ccy,expsr_zero_hrct_elgbl_ind,orig_expsr_rw_vl,pfe_exemption_ind,pfe_with_mlplctn_fctr,rc_with_mlplctn_fctr,enm_imm_expsr_clcltn,enm_pstn_clss,lien_rnk,entity_cntry,ntrl_prsn_ind,whl_ln_apprch_sme_sf_ind,enm_prprty_typ,imm_ba_cva_dplct_rcrd_ind,qrre_ind,a_irb_rsdntl_prprty_amnt,real_estt_rw_cnddt_ind,fll_prcnt_rw_flr_appld_ind,enm_cqs_st,orgnl_sa_expsr_clss_rw,mrtgg_cndtns_met_ind,enm_real_estt_trmnt,prprty_exempt_amnt,qlfyng_art_124_2a_ii_2,non_prft_hsng_dvlpr_ind,enm_ipre_drgtn_appld,fnl_expsr_clssfctn,prfntl_rw_ind,id_on_bs_nttng,adc_clssfctn,sme_or_prsn_ind,mrtgg_cp_rw_vl_rtl_lmt,interim_rw,uk_mrtgg_cp_rw_apprch )];
          
          
          
          
          #   #Move outside the current IF BLOCK - CAPSCRUM-8513
          #   exposure_ipre <- merge(exposure_ipre,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
          #   exposure_ipre[,id_expsr_unique := original_expsr_id];
          #   exposure_ipre <- exposure_ipre[,.(entity,id_expsr_unique)]
          
          #CLEANUP
          mortgage_pledge <- NULL;
          mortgage_covered <- NULL;
          re_pledge_pari_passu <- NULL;
          mortgage_covered_more_snr_lien <- NULL;
          mortgage_covered_res_gb <- NULL;
          mortgage_covered_res_non_gb <- NULL;
          mortgage_covered_com_gb <- NULL;
          mortgage_covered_com_non_gb <- NULL;
          
        }
        #Moved out from the IF BLOCK - CAPSCRUM-8513
        exposure_ipre <- merge(exposure_ipre,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
        exposure_ipre[,id_expsr_unique := original_expsr_id];
        exposure_ipre <- unique(exposure_ipre[,.(entity,id_expsr_unique)])
        
        #Pool Exposures
        exposure_pool <- exposure[real_estate_pool != -1,];
        mortgage_pool <- mortgage[real_estate_pool != -1,];
        
        #Pari Passu Cumulative Product
        pari_passu[pari_passu_extrnl_fctr == 0, pari_passu_extrnl_fctr := 1]
        pari_passu[order(lien_rnk, decreasing=FALSE), pari_passu_extrnl_fctr := cumprod(pari_passu_extrnl_fctr), by=c('entity','real_estate_pool')]
        
        exposure_pool <- merge(exposure_pool,pari_passu,by.x=c('entity','real_estate_pool','lien_rnk'),by.y=c('entity','real_estate_pool','lien_rnk'),all.x=TRUE, allow.cartesian=TRUE)
        exposure_pool[lien_rnk == -1, lien_rnk := 10000];
        exposure_pool[,orig_expsr_rw_vl := expsr_rw_vl];
        exposure_coverage_pool <- NULL;
        
        setkeyv(exposure_pool, "lien_rnk")
        lien_ranks <- unique(sort(exposure_pool$lien_rnk))
        
        print('####R Pool');
        
        for(a_rank in lien_ranks)
        {
          print("####LIEN RANK")
          print(a_rank)
          exposure_per_rank <- exposure_pool[lien_rnk == a_rank];
          
          merged_rank <- data_prep('R_Pool',exposure_per_rank,mortgage_pool,NULL,NULL);
          
          exposure_per_rank[,pari_passu_extrnl_fctr := NULL]
          #Collateral Volatility and FX Haircut
          merged_rank[is.na(pari_passu_extrnl_fctr), pari_passu_extrnl_fctr := 1]
          merged_rank[,clltrl_avlbl :=  clltrl_amnt * pari_passu_extrnl_fctr ];
          merged_rank[,liens_amnt_cvrd := round(clltrl_amnt - clltrl_avlbl,digits=precision)]
          merged_rank <- merged_rank[clltrl_avlbl > 0,];
          
          if(nrow(merged_rank) > 0 )
          {
            print("####Number of links");
            print(nrow(merged_rank));
            print(proc.time()-ptm);
            
            merged_rank[,amnt_lst_to_hrcts :=  clltrl_amnt - clltrl_avlbl];
            
            #Target Coeficients
            merged_rank[expsr_hrct_amnt < clltrl_avlbl, clltrl_coverage := clltrl_avlbl - expsr_hrct_amnt]
            merged_rank[expsr_hrct_amnt >= clltrl_avlbl, clltrl_coverage := 1]
            merged_rank[ccf == 0 ,trgt_cfcnts := (clltrl_coverage/1000 * ((expsr_rw_vl +1) /100) * (100/(clltrl_rw_vl+1)) * 100 * (ccf + 0.000001) * sme_sclr_fctr)/100000 ];
            merged_rank[ccf != 0,trgt_cfcnts := (clltrl_coverage/1000 * ((expsr_rw_vl +1) /100) * (100/(clltrl_rw_vl+1)) * 100 * ccf * sme_sclr_fctr)/100000 ];
            
            #Generic Calcs
            merged_rank$id_lmt_pldg <- 'N/A';
            merged_rank$clmn_indx <- 2;
            merged_rank$clltrl_trnsfrbl <- 0;
            merged_rank$lmt <- 0;
            merged_rank$mxd_clltrl_pool_elgblty_ind <- 'N';
            merged_rank$mnm_cvrg <- 0;
            
            if(debug > 2)
            {
              prep_r_rank <- merged_rank[,.(entity,id_expsr_unique,id_clltrl_unique,expsr_amnt,0, 0,ccf, clltrl_amnt,0, 0,0,liens_amnt_cvrd,expsr_rw_vl,clltrl_rw_vl,clltrl_avlbl,trgt_cfcnts,amnt_lst_to_hrcts,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
              prep_r_rank <- merge(prep_r_rank,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
              prep_r_rank[,id_expsr_unique := original_expsr_id];
              prep_r_rank <- merge(prep_r_rank,mortgage_map,by.x = c('id_clltrl_unique'),by.y = c('id_number'));
              prep_r_rank[,id_clltrl_unique := original_clltrl_id];
              prep_r_vector[[r]] <- prep_r_rank[,.(entity,id_expsr_unique,id_clltrl_unique,expsr_amnt,0, 0,ccf, clltrl_amnt,0, 0,0,liens_amnt_cvrd,expsr_rw_vl,clltrl_rw_vl,clltrl_avlbl,trgt_cfcnts,amnt_lst_to_hrcts,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
              prep_r_rank <- NULL;
            }
            
            merged_rank <- merged_rank[,.(entity,id_clltrl_unique,id_expsr_unique,expsr_amnt,clltrl_avlbl,clltrl_amnt,clltrl_trnsfrbl,trgt_cfcnts,amnt_lst_to_hrcts,lmt,id_lmt_pldg,clmn_indx,id_orgnl_expsr_unique,sclld_10dy_hrct,sclld_10dy_fx_hrct,expsr_rw_vl,expsr_hrct_amnt,mxd_clltrl_pool_elgblty_ind,mnm_cvrg,id_ntwrk,enm_prprty_typ,liens_amnt_cvrd)]
            merged_rank[,rw_mthd_appld := '']
            p_temp_rank <- crm_solver(merged_rank);
            if(debug > 1){
              print("####After CRM");
              print(proc.time()-ptm);
            }
            
            #CLEANUP
            merged_rank <- NULL;
            
            #Update Real Estate Values
            col_used <- p_temp_rank[, sum(allctd + hrct_amt), by=list(entity,id_clltrl_unique)];
            col_used[,V1 := round(V1,digits=precision)]
            mortgage <- merge(mortgage,col_used, by = c('entity','id_clltrl_unique'), all.x=TRUE);
            mortgage[is.na(V1), V1 := 0];
            mortgage[,clltrl_amnt := round(clltrl_amnt - V1,digits=precision)];
            mortgage[,V1 := NULL];
            
            
            p_temp_rank[order(id_expsr_unique,id_clltrl_unique), allctd_clltrl:=cumsum(allctd), by=list(id_expsr_unique)];
            p_temp_rank[,expsr_aftr_crm := expsr_amnt - allctd_clltrl];
            p_temp_rank[,expsr_aftr_crm := round(expsr_aftr_crm,digits=precision)];
            
            p_temp_vector[[r]] <- p_temp_rank
            r <- r + 1
            
          }
          
        }
        
        if(debug > 2  & r > 1)
        {
          prep_r <- rbindlist(prep_r_vector);
        }
        
        #Exposure tranch
        exposure_pool$id_trnch <- 0;
        exposure_pool[,pari_passu_extrnl_fctr := NULL]
        exposure_pool[,enm_prprty_typ := '']
        
        
        
        #Saves final allocations for Pool Allocations
        if(length(p_temp_vector) != 0)
        {
          p_temp_pool = rbindlist(p_temp_vector);    
          p_temp_pool_found <- 1;
          p_temp_vector <- NULL;
          
          #Add covered portion as new synthetic exposure
          synthetic_exp <- merge(p_temp_pool,exposure_pool,by = c('entity','id_expsr_unique'), all = FALSE);
          synthetic_exp <- merge(synthetic_exp,mortgage_pool, by = c('entity','id_clltrl_unique'), all = FALSE);
          
          #Synthetic Exposure Treatment
          if(nrow(synthetic_exp) > 0)
          {
            if(debug > 1){
              print("####Updating synthetic exposures");
              print(proc.time()-ptm);
            }
            setnames(synthetic_exp,c('orig_expsr_rw_vl'),c('orig_expsr_rw_vl.z'));
            setnames(synthetic_exp,c('expsr_rw_vl.x','id_orgnl_expsr_unique.x','id_trnch.y'),c('orig_expsr_rw_vl','id_orgnl_expsr_unique','id_trnch'));
            setnames(synthetic_exp,c('allctd','real_estate_pool.x','clltrl_rw_vl'),c('expsr_amnt','real_estate_pool','expsr_rw_vl'));
            
            synthetic_exp <- merge(synthetic_exp,exposure_map, by.x = c('id_expsr_unique'), by.y = c('id_number'));
            synthetic_exp <- merge(synthetic_exp,mortgage_map, by.x = c('id_clltrl_unique'), by.y = c('id_number'));
            synthetic_exp <- merge(synthetic_exp,exposure_irb_sa, by.x = c('id_expsr_unique'), by.y = c('id_expsr_unique'));
            current_exposure_count <- max(exposure_map$id_number);
            synthetic_exp[,id_number := sequence(.N) + current_exposure_count];
            synthetic_exp[,parsed_id := paste(original_expsr_id,original_clltrl_id, sep = '_R_')];
            
            synthetic_all_rw_mthd_appled <- merge(synthetic_all_rw_mthd_appled,synthetic_exp[,.(entity,id_expsr_unique,id_clltrl_unique,id_number)],by.x=c('entity','id_expsr_unique','id_clltrl_unique'),by.y=c('entity','id_expsr_unique','id_clltrl_unique'),all.x=TRUE);
            synthetic_all_rw_mthd_appled[!is.na(id_number),c('id_expsr_unique','clltrl_appld_ind') := list(id_number,'Y')];
            synthetic_all_rw_mthd_appled <- synthetic_all_rw_mthd_appled[,.(entity,id_expsr_unique,id_clltrl_unique,rw_mthd_appld,clltrl_appld_ind)]
            
            
            #Update Exposure IRB vs SA Map
            exposure_irb_sa <- rbindlist(list(exposure_irb_sa,synthetic_exp[,.(id_number,enm_sa_irb_expsr)]),use.names=FALSE);
            #Update Exposure IDs
            exposure_map <- rbindlist(list(exposure_map,synthetic_exp[,.(parsed_id,id_number)]),use.names=FALSE,fill=FALSE);
            
            synthetic_exp[,id_expsr_unique := id_number];
            synthetic_exp[,parsed_id := NULL];
            synthetic_exp[,id_number := NULL];
            setkeyv(synthetic_exp,c('id_expsr_unique'));
            
            exposure_pool <- rbindlist(list(exposure_pool,synthetic_exp[,.(entity,id_expsr_unique,expsr_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,expsr_id_pldg,dltn_rsk_expsr_ind,id_cntrprty,enm_cntrprty_typ,id_trnch,expsr_rw_vl_lmt,enm_rw_mthd_aftr_lmt_chck,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_prprty_thrshld,irb_prprty_thrshld_ind,sme_sf_chck_ind,fx_rate,expsr_ccy,expsr_zero_hrct_elgbl_ind,orig_expsr_rw_vl,pfe_exemption_ind,pfe_with_mlplctn_fctr,rc_with_mlplctn_fctr,enm_imm_expsr_clcltn,enm_pstn_clss,lien_rnk,entity_cntry,ntrl_prsn_ind,whl_ln_apprch_sme_sf_ind,enm_prprty_typ,imm_ba_cva_dplct_rcrd_ind,qrre_ind,a_irb_rsdntl_prprty_amnt,real_estt_rw_cnddt_ind,fll_prcnt_rw_flr_appld_ind,enm_cqs_st,orgnl_sa_expsr_clss_rw,mrtgg_cndtns_met_ind,enm_real_estt_trmnt,prprty_exempt_amnt,qlfyng_art_124_2a_ii_2,non_prft_hsng_dvlpr_ind,enm_ipre_drgtn_appld,fnl_expsr_clssfctn,prfntl_rw_ind,id_on_bs_nttng,adc_clssfctn,sme_or_prsn_ind,mrtgg_cp_rw_vl_rtl_lmt,interim_rw,uk_mrtgg_cp_rw_apprch )]),use.names = TRUE);
            
            if(debug > 1){
              print("####Updated synthetic exposures");
              print(proc.time()-ptm);
            }
            
          }
          
          #Update Exposure Values
          exposure_coverage <- p_temp_pool[, sum(allctd), by=list(entity,id_expsr_unique)];
          exposure_coverage[,V1 := round(V1,digits=precision)]
          exposure_pool <- merge(exposure_pool,exposure_coverage, by = c('entity','id_expsr_unique'), all.x=TRUE);
          exposure_pool[is.na(V1), V1 := 0];
          exposure_pool[,expsr_amnt := expsr_amnt - V1];
          exposure_pool[prfntl_rw_ind == 'Y' & (fnl_expsr_clssfctn == 'MORTGAGE_RESIDENTIAL_NON_IPRE' | fnl_expsr_clssfctn == 'MORTGAGE_COMMERCIAL_NON_IPRE') & enm_ipre_drgtn_appld %in% c('ART_125_126','ART_124') & id_trnch == 0,expsr_rw_vl := 150]
          exposure_pool <- exposure_pool[,.(entity,id_expsr_unique,expsr_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,expsr_id_pldg,dltn_rsk_expsr_ind,id_cntrprty,enm_cntrprty_typ,id_trnch,expsr_rw_vl_lmt,enm_rw_mthd_aftr_lmt_chck,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_prprty_thrshld,irb_prprty_thrshld_ind,sme_sf_chck_ind,fx_rate,expsr_ccy,expsr_zero_hrct_elgbl_ind,orig_expsr_rw_vl,pfe_exemption_ind,pfe_with_mlplctn_fctr,rc_with_mlplctn_fctr,enm_imm_expsr_clcltn,enm_pstn_clss,lien_rnk,entity_cntry,ntrl_prsn_ind,whl_ln_apprch_sme_sf_ind,enm_prprty_typ,imm_ba_cva_dplct_rcrd_ind,qrre_ind,a_irb_rsdntl_prprty_amnt,real_estt_rw_cnddt_ind,fll_prcnt_rw_flr_appld_ind,enm_cqs_st,orgnl_sa_expsr_clss_rw,mrtgg_cndtns_met_ind,enm_real_estt_trmnt,prprty_exempt_amnt,qlfyng_art_124_2a_ii_2,non_prft_hsng_dvlpr_ind,enm_ipre_drgtn_appld,fnl_expsr_clssfctn,prfntl_rw_ind,id_on_bs_nttng,adc_clssfctn,sme_or_prsn_ind,mrtgg_cp_rw_vl_rtl_lmt,interim_rw,uk_mrtgg_cp_rw_apprch )];
          
        }
        
        
        if(p_temp_pledge_found == 1 & p_temp_pool_found == 1)
        {
          p_temp <- rbindlist(list(p_temp_pledge,p_temp_pool),use.names=TRUE,fill=FALSE);
          exposure <- rbindlist(list(remaining_exposures,exposure_pledge,exposure_pool),use.names=TRUE,fill=FALSE)
          p_temp_found <- 1;
        } else{
          if(p_temp_pledge_found == 1){
            p_temp <- p_temp_pledge
            exposure <- rbindlist(list(remaining_exposures,exposure_pledge),use.names=TRUE,fill=FALSE)
            p_temp_found <- 1;
          } else{
            if(p_temp_pool_found == 1){
              p_temp <- p_temp_pool
              exposure <- rbindlist(list(remaining_exposures,exposure_pool),use.names=TRUE,fill=FALSE)
              p_temp_found <- 1;
            } else{
              exposure <- remaining_exposures;
            }
          }
        }
        setkeyv(exposure,c('entity','id_expsr_unique'));
        if(p_temp_found==1){
          #Reset to original IDs
          p_temp <- merge(p_temp,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
          p_temp[,id_expsr_unique := original_expsr_id];
          p_temp <- merge(p_temp,mortgage_map,by.x = c('id_clltrl_unique'),by.y = c('id_number'));
          p_temp[,id_clltrl_unique := original_clltrl_id];
          p_temp[,id_synthtc_expsr_unique := paste(id_expsr_unique, id_clltrl_unique, sep="_R_")];
          p_temp[,original_clltrl_id := NULL];
          p_temp[,original_expsr_id := NULL];
          p_temp <- merge(p_temp,exposure_map,by.x = c('id_orgnl_expsr_unique'),by.y = c('id_number'));
          p_temp[,id_orgnl_expsr_unique := original_expsr_id];
          p_temp[,original_expsr_id := NULL];
          p_temp[,hrct_hm_amnt := 0]
          
          p_temp$fndd_synthtc_ind <- 'N';
          p_temp$ca_step <- 'R';
          
          alloc_vector[[i]] <- p_temp[,.(entity,id_expsr_unique,expsr_amnt,id_clltrl_unique,pct,allctd,hrct_amt,expsr_hrct_amnt,hrct_10dy_amt,hrct_10dy_fx_amt,hrct_hm_amnt,liens_amnt_cvrd,expsr_rw_vl,id_orgnl_expsr_unique,expsr_aftr_crm,id_synthtc_expsr_unique,mxd_clltrl_pool_elgblty_ind,fndd_synthtc_ind,rw_mthd_appld,ca_step)];
          i <- i+1;
        }
        
        
        #CLEANUP
        p_temp <- NULL;
        p_temp_pool <- NULL;
        p_temp_pledge <- NULL;
        synthetic_exp <- NULL;
        #mortgage_map <- NULL;
        #mortgage <- NULL;
        exposure_coverage <- NULL;
        
        synthetic_all_rw_mthd_appled <- synthetic_all_rw_mthd_appled[clltrl_appld_ind == 'Y',.(entity,id_expsr_unique,rw_mthd_appld)];
        
        #SA Million Euro Check
        if(nrow(retail_limit) > 0 & a_seq == 'R')
        {
          if(debug > 1){
            print("####Retail Limit Starting");
            print(proc.time()-ptm);
          }
          alloc_checks <- merge(retail_limit,exposure,by.x = c('entity','id_prty'), by.y = c('entity','id_cntrprty'), all = FALSE,allow.cartesian=TRUE);
          alloc_checks <- merge(alloc_checks, exposure_irb_sa, by.x = c('id_expsr_unique'), by.y = c('id_expsr_unique'));
          
          #SA Exposures Only
          alloc_checks <- alloc_checks[enm_sa_irb_expsr == 'SA',];
          alloc_checks <- merge(alloc_checks,synthetic_all_rw_mthd_appled,by.x=c('entity','id_expsr_unique'),by.y=c('entity','id_expsr_unique'),all.x=TRUE);
          
          #Calculate Exempt Amounts
          alloc_checks[pfe_exemption_ind == 'N',exmptn_amnts := 0];
          alloc_checks[pfe_exemption_ind == 'Y',exmptn_amnts := pfe_with_mlplctn_fctr * fx_rate];
          alloc_checks[entity_cntry != 'GB' & id_trnch %in% c(1,2) & enm_prprty_typ == 'RESIDENTIAL' & pfe_exemption_ind == 'N' & enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET" , exmptn_amnts := expsr_amnt * fx_rate];
          alloc_checks[entity_cntry != 'GB' & id_trnch %in% c(1,2) & enm_prprty_typ == 'RESIDENTIAL' & pfe_exemption_ind == 'Y' & enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET" , exmptn_amnts := (pmin(expsr_amnt,rc_with_mlplctn_fctr) + pfe_with_mlplctn_fctr) * fx_rate];
          alloc_checks[entity_cntry != 'GB' & expsr_id_pldg !='NA' & enm_prprty_typ == 'RESIDENTIAL' & !is.na(rw_mthd_appld) & prfntl_rw_ind != 'Y' & pfe_exemption_ind == 'N' & enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET" , exmptn_amnts := expsr_amnt * fx_rate];
          alloc_checks[entity_cntry != 'GB' & expsr_id_pldg !='NA' & enm_prprty_typ == 'RESIDENTIAL' & !is.na(rw_mthd_appld) & prfntl_rw_ind != 'Y' & pfe_exemption_ind == 'Y' & enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET" , exmptn_amnts := (pmin(expsr_amnt,rc_with_mlplctn_fctr) + pfe_with_mlplctn_fctr) * fx_rate];
          alloc_checks[entity_cntry == 'GB', exmptn_amnts := 0]
          alloc_checks[entity_cntry == 'GB' & fnl_expsr_clssfctn %in% c('MORTGAGE_RESIDENTIAL_IPRE','MORTGAGE_RESIDENTIAL_NON_IPRE') & pfe_exemption_ind == 'N' ,exmptn_amnts := expsr_amnt * fx_rate];
          alloc_checks[entity_cntry == 'GB' & fnl_expsr_clssfctn %in% c('MORTGAGE_RESIDENTIAL_IPRE','MORTGAGE_RESIDENTIAL_NON_IPRE') & pfe_exemption_ind == 'Y' ,exmptn_amnts := (pmin(expsr_amnt,rc_with_mlplctn_fctr) + pfe_with_mlplctn_fctr) * fx_rate];
          
          #Calculate UK Mortgage CP RW Approach
          alloc_checks[,uk_mrtgg_cp_rw_apprch := '-']
          alloc_checks[entity_cntry == 'GB' & ((fnl_expsr_clssfctn %in% c('MORTGAGE_COMMERCIAL_NON_IPRE','MORTGAGE_RESIDENTIAL_NON_IPRE') & prfntl_rw_ind == 'Y' & id_trnch > 1) | (fnl_expsr_clssfctn == 'MORTGAGE_COMMERCIAL_MXD_NON_IPRE' & sme_or_prsn_ind == 'Y' & prfntl_rw_ind == 'Y' & id_trnch > 1)), uk_mrtgg_cp_rw_apprch := 'MRTGG_CP_RW']
          alloc_checks[entity_cntry == 'GB' & (fnl_expsr_clssfctn == 'MORTGAGE_COMMERCIAL_OTH_NON_IPRE' | (fnl_expsr_clssfctn == 'MORTGAGE_COMMERCIAL_MXD_NON_IPRE' & sme_or_prsn_ind != 'Y')),uk_mrtgg_cp_rw_apprch := 'Q_COMM_NON_IPRE_FRML']
          alloc_checks[entity_cntry == 'GB' & prfntl_rw_ind != 'Y' & (fnl_expsr_clssfctn == 'MORTGAGE_COMMERCIAL_NON_IPRE' | (rw_mthd_appld == 'NON_IPRE' & enm_prprty_typ == 'COMMERCIAL')) ,uk_mrtgg_cp_rw_apprch := 'NQ_COMM_NON_IPRE_60_FLR']
          
          #Split between SA only and Mixed GCCs. Mixed cannot be checked at this stage
          r_retail_exempt_amnts_mixed <- unique(alloc_checks[mxd_rw_mthd_gcc == 'Y',.(entity,id_expsr_unique,exmptn_amnts)]);
          
          alloc_checks <- alloc_checks[mxd_rw_mthd_gcc == 'N',];
          alloc_checks_tranche1 <- alloc_checks[, list(sum(exmptn_amnts),max(ttl_expsrs_excldng_obs),max(ttl_obs_expsrs_eur),max(fnl_ttl_expsrs),max(entity_cntry),max(whl_ln_prprty_exmpt_amnt)) , by=list(entity,id_ultmt_prnt)];
          alloc_checks_tranche1[is.na(V1), V1 := 0];
          alloc_checks_tranche1[,V1 := round(V1,digits=precision)]
          alloc_checks_tranche1[,breached_ind := 'N'];
          alloc_checks_tranche1[V5 != 'GB' & V2 - V1 - V6 > thrshld_limit_val, breached_ind := 'Y'];
          alloc_checks_tranche1[V5 == 'GB' & V2 - V1 > thrshld_limit_val, breached_ind := 'Y'];
          
          setnames(alloc_checks_tranche1,c('V2','V1','V3','V4','V6'),c('ttl_expsrs_excldng_obs','exmptn_amnts','ttl_obs_expsrs_eur','fnl_ttl_expsrs','whl_ln_prprty_exmpt_amnt'));
          
          
          if(debug > 0){
            retail_million_gcc <- rbindlist(list(retail_million_gcc,alloc_checks_tranche1[,.(entity,id_ultmt_prnt,fnl_ttl_expsrs,ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs,exmptn_amnts,exmptn_amnts + ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs - exmptn_amnts,whl_ln_prprty_exmpt_amnt,breached_ind)]));
          }
          
          #GCCs processed for the Retail check
          gcc_retail_sa_check <- alloc_checks_tranche1[,.(entity,id_ultmt_prnt,breached_ind)];
          #Exposures already checked
          exposures_retail_gcc_sa <- merge(gcc_retail_sa_check,retail_limit,by.x = c('entity','id_ultmt_prnt'), by.y = c('entity','id_ultmt_prnt'), allow.cartesian = TRUE);
          exposures_retail_gcc_sa <- merge(exposures_retail_gcc_sa,exposure, by.x = c('entity','id_prty'), by.y = c('entity','id_cntrprty'), allow.cartesian = TRUE);
          exposures_retail_gcc_sa <- unique(exposures_retail_gcc_sa[,.(entity,id_expsr_unique,expsr_amnt)]);
          setnames(exposures_retail_gcc_sa,c('expsr_amnt'),c('dummy_field'));
          
          
          breached_checks <- merge(alloc_checks,alloc_checks_tranche1, by.x = c('entity','id_ultmt_prnt'), by.y = c('entity','id_ultmt_prnt'), all = FALSE);
          breached_checks <- breached_checks[apply_rtl_lmt_chck_ind == 'Y',];
          
          #Avoid duplicated when counterparty belongs to multiple GCCs
          breached_checks[,rcount := 1];
          breached_checks[order(-breached_ind),ult_cparty_count := cumsum(rcount), by=list(id_expsr_unique)];
          breached_checks <- breached_checks[ult_cparty_count == 1,];
          breached_checks$changed <- 'N';
          
          
          breached_checks[,real_estt_rw_appld_ind := 'N']
          breached_checks[real_estt_rw_cnddt_ind == 'Y' | (rw_mthd_appld == 'IPRE' & id_trnch > 1 & prfntl_rw_ind == 'Y') | (id_trnch == 1 & entity_cntry != 'GB') | (entity_cntry == 'GB' & id_trnch == 1 & (fnl_expsr_clssfctn %in% c('MORTGAGE_RESIDENTIAL_IPRE','MORTGAGE_RESIDENTIAL_NON_IPRE') | (fnl_expsr_clssfctn == 'MORTGAGE_COMMERCIAL_MXD_NON_IPRE' & sme_or_prsn_ind == 'Y' ))) | (rw_mthd_appld == 'IPRE' & prfntl_rw_ind != 'Y') | adc_clssfctn == 'ADC', real_estt_rw_appld_ind := 'Y']
          breached_checks[,elgbl_for_sa_rw_chng_ind := 'N']
          breached_checks[orgnl_sa_expsr_clss_rw %in% c('CORP_OTHR','INST_CORP_ST','RETAIL') & real_estt_rw_appld_ind != 'Y',elgbl_for_sa_rw_chng_ind := 'Y']
          
          #Not rquired, replaced by uk_mrtgg_cp_rw_apprch
          #breached_checks[rw_mthd_appld == 'NON_IPRE' & enm_prprty_typ == 'COMMERCIAL' & prfntl_rw_ind != 'Y',fll_prcnt_rw_flr_appld_ind := 'Y']
          
          if(debug > 1){
            print("####Swaping Exposures counterparty and risk weight");
            print(proc.time()-ptm);
          }
          
          #CORP, not breached
          breached_checks[uk_mrtgg_cp_rw_apprch == '-' & elgbl_for_sa_rw_chng_ind == 'Y' & enm_cntrprty_typ == 'CORP' & breached_ind == 'N',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl_lmt,expsr_rw_vl,'RETAIL','CORP','Y','Y','RETAIL','Y')];
          breached_checks[uk_mrtgg_cp_rw_apprch == 'MRTGG_CP_RW' & elgbl_for_sa_rw_chng_ind == 'Y' & enm_cntrprty_typ == 'CORP' & breached_ind == 'N',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(mrtgg_cp_rw_vl_rtl_lmt,expsr_rw_vl,'RETAIL','CORP','Y','Y','RETAIL','Y')];
          breached_checks[uk_mrtgg_cp_rw_apprch == 'Q_COMM_NON_IPRE_FRML' & elgbl_for_sa_rw_chng_ind == 'Y' & enm_cntrprty_typ == 'CORP' & breached_ind == 'N',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmax(60,pmin(interim_rw,mrtgg_cp_rw_vl_rtl_lmt)),expsr_rw_vl,'RETAIL','CORP','Y','Y','RETAIL','Y')];
          breached_checks[uk_mrtgg_cp_rw_apprch == 'NQ_COMM_NON_IPRE_60_FLR' & elgbl_for_sa_rw_chng_ind == 'Y' & enm_cntrprty_typ == 'CORP' & breached_ind == 'N',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmin(mrtgg_cp_rw_vl_rtl_lmt,60),expsr_rw_vl,'RETAIL','CORP','Y','Y','RETAIL','Y')];
          
          #breached_checks[fll_prcnt_rw_flr_appld_ind == 'Y' & elgbl_for_sa_rw_chng_ind == 'Y' & enm_cntrprty_typ == 'CORP' & breached_ind == 'N',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmin(expsr_rw_vl_lmt,100),expsr_rw_vl,'RETAIL','CORP','Y','Y',orgnl_sa_expsr_clss_rw,'Y')];
          breached_checks[elgbl_for_sa_rw_chng_ind != 'Y' & enm_cntrprty_typ == 'CORP' & breached_ind == 'N',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl,expsr_rw_vl,'RETAIL','CORP','Y','N',orgnl_sa_expsr_clss_rw,'Y')];
          
          #RETAIL, not breached
          breached_checks[enm_cntrprty_typ == 'RETAIL' & breached_ind == 'N',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl,expsr_rw_vl,'RETAIL','RETAIL','N','N',orgnl_sa_expsr_clss_rw,'Y')];
          
          
          #CORP, breached
          breached_checks[enm_cntrprty_typ == 'CORP' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl,expsr_rw_vl,'CORP','CORP','N','N',orgnl_sa_expsr_clss_rw,'Y')];
          
          
          #RETAIL, breached, non natural person
          breached_checks[elgbl_for_sa_rw_chng_ind != 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl,expsr_rw_vl,'CORP','RETAIL','Y','N',orgnl_sa_expsr_clss_rw,'Y')];
          breached_checks[uk_mrtgg_cp_rw_apprch == '-' & enm_cqs_st != 7 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl_lmt,expsr_rw_vl,'CORP','RETAIL','Y','Y','INST_CORP_ST','Y')];
          breached_checks[uk_mrtgg_cp_rw_apprch == '-' & enm_cqs_st > 6 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl_lmt,expsr_rw_vl,'CORP','RETAIL','Y','Y','CORP_OTHR','Y')];
          
          
          breached_checks[uk_mrtgg_cp_rw_apprch == 'MRTGG_CP_RW' & enm_cqs_st != 7 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(mrtgg_cp_rw_vl_rtl_lmt,expsr_rw_vl,'CORP','RETAIL','Y','Y','INST_CORP_ST','Y')];
          breached_checks[uk_mrtgg_cp_rw_apprch == 'Q_COMM_NON_IPRE_FRML' & enm_cqs_st != 7 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmax(60,pmin(interim_rw,mrtgg_cp_rw_vl_rtl_lmt)),expsr_rw_vl,'CORP','RETAIL','Y','Y','INST_CORP_ST','Y')];
          breached_checks[uk_mrtgg_cp_rw_apprch == 'NQ_COMM_NON_IPRE_60_FLR' & enm_cqs_st != 7 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmin(mrtgg_cp_rw_vl_rtl_lmt,60),expsr_rw_vl,'CORP','RETAIL','Y','Y','INST_CORP_ST','Y')];
          
          
          breached_checks[uk_mrtgg_cp_rw_apprch == 'MRTGG_CP_RW' & enm_cqs_st > 6 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(mrtgg_cp_rw_vl_rtl_lmt,expsr_rw_vl,'CORP','RETAIL','Y','Y','CORP_OTHR','Y')];
          breached_checks[uk_mrtgg_cp_rw_apprch == 'Q_COMM_NON_IPRE_FRML' & enm_cqs_st > 6 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmax(60,pmin(interim_rw,mrtgg_cp_rw_vl_rtl_lmt)),expsr_rw_vl,'CORP','RETAIL','Y','Y','CORP_OTHR','Y')];
          breached_checks[uk_mrtgg_cp_rw_apprch == 'NQ_COMM_NON_IPRE_60_FLR' & enm_cqs_st > 6 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmin(mrtgg_cp_rw_vl_rtl_lmt,60),expsr_rw_vl,'CORP','RETAIL','Y','Y','CORP_OTHR','Y')];
          
          
          #RETAIL, breached, natural person
          breached_checks[elgbl_for_sa_rw_chng_ind != 'Y' & ntrl_prsn_ind == 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl,expsr_rw_vl,'RETAIL','RETAIL','N','N',orgnl_sa_expsr_clss_rw,'Y')];
          
          breached_checks[uk_mrtgg_cp_rw_apprch == '-' & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind == 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(100,expsr_rw_vl,'RETAIL','RETAIL','N','Y',orgnl_sa_expsr_clss_rw,'Y')];
          breached_checks[uk_mrtgg_cp_rw_apprch == 'MRTGG_CP_RW' & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind == 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(mrtgg_cp_rw_vl_rtl_lmt,expsr_rw_vl,'RETAIL','RETAIL','N','Y',orgnl_sa_expsr_clss_rw,'Y')];
          breached_checks[uk_mrtgg_cp_rw_apprch == 'Q_COMM_NON_IPRE_FRML' & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind == 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmax(60,pmin(interim_rw,mrtgg_cp_rw_vl_rtl_lmt)),expsr_rw_vl,'RETAIL','RETAIL','N','Y',orgnl_sa_expsr_clss_rw,'Y')];
          breached_checks[uk_mrtgg_cp_rw_apprch == 'NQ_COMM_NON_IPRE_60_FLR' & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind == 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmin(mrtgg_cp_rw_vl_rtl_lmt,60),expsr_rw_vl,'RETAIL','RETAIL','N','Y',orgnl_sa_expsr_clss_rw,'Y')];
          
          
          breached_checks <- breached_checks[changed == 'Y',.(entity,id_expsr_unique,new_rw_vl,orgnl_rw_vl,new_enm_cntrprty_typ,orgnl_cntrprty_typ,rtl_lmt_chck_cntrprt_chngd_ind,rtl_lmt_chck_rw_chngd_ind,orgnl_sa_expsr_clss_rw_crm)];
          setkeyv(breached_checks,c('entity','id_expsr_unique','new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm'));
          breached_checks <- unique(breached_checks);
          
          #Update Exposures with new counterparty type and new risk weight
          exposure <- merge(exposure, breached_checks, by = c('entity','id_expsr_unique'), all.x = TRUE);
          exposure[!is.na(new_rw_vl), c('expsr_rw_vl','enm_cntrprty_typ') := list(new_rw_vl,new_enm_cntrprty_typ)];
          
          #Get original IDs for exposures
          breached_checks <- merge(breached_checks,exposure_map,by.x=c('id_expsr_unique'),by.y=c('id_number'));
          breached_checks[,id_expsr_unique := original_expsr_id];
          
          retail_million_euro <- breached_checks[,.(entity,id_expsr_unique,new_rw_vl,orgnl_rw_vl,new_enm_cntrprty_typ,orgnl_cntrprty_typ,rtl_lmt_chck_cntrprt_chngd_ind,rtl_lmt_chck_rw_chngd_ind,orgnl_sa_expsr_clss_rw_crm)];
          
          #CLEANUP
          alloc_checks <- NULL;
          alloc_checks_tranche1 <- NULL;
          breached_checks <- NULL;
          
          if(debug > 1){
            print("####Retail Limit Finished");
            print(proc.time()-ptm);
          }
        }
        
        #SME Limit Check
        if(nrow(sme_limit) > 0 & a_seq == 'R')
        {
          
          if(debug > 1){
            print("####SME Limit Starting");
            print(proc.time()-ptm);
          }
          
          alloc_checks <- merge(sme_limit,exposure,by.x = c('entity','id_prty'), by.y = c('entity','id_cntrprty'), all = FALSE,allow.cartesian = TRUE);
          alloc_checks <- merge(alloc_checks,exposure_irb_sa, by.x = c('id_expsr_unique'), by.y = c('id_expsr_unique'));
          #SA Exposures Only
          alloc_checks <- alloc_checks[enm_sa_irb_expsr == 'SA',];
          alloc_checks <- merge(alloc_checks,synthetic_all_rw_mthd_appled,by.x=c('entity','id_expsr_unique'),by.y=c('entity','id_expsr_unique'),all.x=TRUE);
          
          #Calculate Exempt Amounts
          alloc_checks[pfe_exemption_ind == 'N',exmptn_amnts := 0];
          alloc_checks[pfe_exemption_ind == 'Y',exmptn_amnts := pfe_with_mlplctn_fctr * fx_rate];
          alloc_checks[((expsr_id_pldg != 'NA' & rw_mthd_appld == 'NON_IPRE') | real_estate_pool != 'N/A') & whl_ln_apprch_sme_sf_ind == 'N' & id_trnch == 1 & enm_prprty_typ == 'RESIDENTIAL' & pfe_exemption_ind == 'N' & enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET", exmptn_amnts := expsr_amnt * fx_rate];
          alloc_checks[((expsr_id_pldg != 'NA' & rw_mthd_appld == 'NON_IPRE') | real_estate_pool != 'N/A') & whl_ln_apprch_sme_sf_ind == 'N' & id_trnch == 1 & enm_prprty_typ == 'RESIDENTIAL' & pfe_exemption_ind == 'Y' & enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET", exmptn_amnts := (pmin(expsr_amnt,rc_with_mlplctn_fctr) + pfe_with_mlplctn_fctr) * fx_rate];
          alloc_checks[expsr_id_pldg != 'NA' & rw_mthd_appld == 'IPRE' & whl_ln_apprch_sme_sf_ind == 'N' & enm_prprty_typ == 'RESIDENTIAL' & pfe_exemption_ind == 'N' & enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET", exmptn_amnts := expsr_amnt * fx_rate];
          alloc_checks[expsr_id_pldg != 'NA' & rw_mthd_appld == 'IPRE' & whl_ln_apprch_sme_sf_ind == 'N' & enm_prprty_typ == 'RESIDENTIAL' & pfe_exemption_ind == 'Y' & enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET", exmptn_amnts := (pmin(expsr_amnt,rc_with_mlplctn_fctr) + pfe_with_mlplctn_fctr) * fx_rate];
          
          alloc_checks[whl_ln_apprch_sme_sf_ind == 'Y', exmptn_amnts := expsr_amnt * fx_rate];
          
          #Split between SA only and Mixed GCCs. Mixed cannot be checked at this stage
          r_sme_exempt_amnts_mixed <- unique(alloc_checks[mxd_rw_mthd_gcc == 'Y',.(entity,id_expsr_unique,exmptn_amnts)]);
          
          alloc_checks <- alloc_checks[mxd_rw_mthd_gcc == 'N',];
          alloc_checks_tranche1 <- alloc_checks[, list(sum(exmptn_amnts),max(ttl_expsrs_excldng_obs),max(ttl_obs_expsrs_eur),max(fnl_ttl_expsrs)) , by=list(entity,id_ultmt_prnt)];
          alloc_checks_tranche1[is.na(V1), V1 := 0];
          alloc_checks_tranche1[,V1 := round(V1,digits=precision)]
          alloc_checks_tranche1[V2-V1 > 0,new_sme_fctr := ((pmin(V2 - V1,2500000) * 0.7619) + (pmax(V2 - V1 - 2500000,0) * 0.85))/(V2-V1)];
          alloc_checks_tranche1[V2-V1 <= 0,new_sme_fctr := 0.7619];
          setnames(alloc_checks_tranche1,c('V2','V1','V3','V4'),c('ttl_expsrs_excldng_obs','exmptn_amnts','ttl_obs_expsrs_eur','fnl_ttl_expsrs'));
          
          if(debug > 0){
            sme_million_gcc <- rbindlist(list(sme_million_gcc,alloc_checks_tranche1[,.(entity,id_ultmt_prnt,fnl_ttl_expsrs,ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs,exmptn_amnts,exmptn_amnts + ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs - exmptn_amnts,new_sme_fctr)]));
          }
          
          #GCCs processed for the SME check
          gcc_sme_sa_check <- alloc_checks_tranche1[,.(entity,id_ultmt_prnt,new_sme_fctr)];
          #Exposures already checked
          exposures_sme_gcc_sa <- merge(gcc_sme_sa_check,sme_limit,by.x = c('entity','id_ultmt_prnt'), by.y = c('entity','id_ultmt_prnt'), allow.cartesian = TRUE);
          exposures_sme_gcc_sa <- merge(exposures_sme_gcc_sa,exposure, by.x = c('entity','id_prty'), by.y = c('entity','id_cntrprty'), allow.cartesian = TRUE);
          exposures_sme_gcc_sa <- unique(exposures_sme_gcc_sa[,.(entity,id_expsr_unique,expsr_amnt)]);
          setnames(exposures_sme_gcc_sa,c('expsr_amnt'),c('dummy_field'));
          
          breached_checks <- merge(alloc_checks,alloc_checks_tranche1, by.x = c('entity','id_ultmt_prnt'), by.y = c('entity','id_ultmt_prnt'), all = FALSE);
          breached_checks <- breached_checks[sme_sf_chck_ind == 'Y',];
          
          #Avoid duplicated when counterparty belongs to multiple GCCs
          breached_checks[,rcount := 1];
          breached_checks[order(-new_sme_fctr),ult_cparty_count := cumsum(rcount), by=list(id_expsr_unique)];
          breached_checks <- breached_checks[ult_cparty_count == 1,];
          
          if(debug > 1){
            print("####Swaping Exposures SME Factor");
            print(proc.time()-ptm);
          }
          
          breached_checks <- breached_checks[,.(entity,id_expsr_unique,new_sme_fctr)];
          setkeyv(breached_checks,c('entity','id_expsr_unique','new_sme_fctr'));
          breached_checks <- unique(breached_checks);
          
          #Update Exposure's new SME Factor
          exposure <- merge(exposure, breached_checks, by = c('entity','id_expsr_unique'), all.x = TRUE);
          exposure[!is.na(new_sme_fctr), sme_sclr_fctr := new_sme_fctr];
          
          breached_checks <- merge(breached_checks,exposure_map,by.x=c('id_expsr_unique'),by.y=c('id_number'));
          breached_checks[,id_expsr_unique := original_expsr_id];
          sme_limit_euro <- breached_checks[,.(entity,id_expsr_unique,new_sme_fctr)];
          
          #CLEANUP
          alloc_checks <- NULL;
          alloc_checks_tranche1 <- NULL;
          breached_checks <- NULL;
          
          if(debug > 1){
            print("####SME Limit Finished");
            print(proc.time()-ptm);
          }
        }          
        exposure <- exposure[,.(entity,id_expsr_unique,expsr_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,expsr_id_pldg,dltn_rsk_expsr_ind,id_cntrprty,enm_cntrprty_typ,expsr_rw_vl_lmt,enm_rw_mthd_aftr_lmt_chck,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_prprty_thrshld,irb_prprty_thrshld_ind,sme_sf_chck_ind,fx_rate,expsr_ccy,expsr_zero_hrct_elgbl_ind,pfe_exemption_ind,pfe_with_mlplctn_fctr,rc_with_mlplctn_fctr,enm_imm_expsr_clcltn,enm_pstn_clss,lien_rnk,entity_cntry,ntrl_prsn_ind,whl_ln_apprch_sme_sf_ind,imm_ba_cva_dplct_rcrd_ind,qrre_ind,a_irb_rsdntl_prprty_amnt,real_estt_rw_cnddt_ind,fll_prcnt_rw_flr_appld_ind,enm_cqs_st,orgnl_sa_expsr_clss_rw,mrtgg_cndtns_met_ind,enm_real_estt_trmnt,prprty_exempt_amnt,qlfyng_art_124_2a_ii_2,non_prft_hsng_dvlpr_ind,enm_ipre_drgtn_appld,fnl_expsr_clssfctn,prfntl_rw_ind,id_on_bs_nttng,adc_clssfctn,sme_or_prsn_ind,mrtgg_cp_rw_vl_rtl_lmt,interim_rw,uk_mrtgg_cp_rw_apprch )];
        
        if(debug > 1){
          print("####Step finished");
          print(proc.time()-ptm);
        }
      }
      
      
      if(a_seq == 'S' | a_seq == 'PS')
      {
        exposure <- exposure[,id_expsr_unique := as.integer(id_expsr_unique)];
        
        merged <- data_prep(a_seq,exposure,fcsm,pledge_fcsm,NULL);
        
        #Maturity Checks
        merged$elig <- 'N';
        merged[clltrl_rsdl_mtrty_yrs >= expsr_rsdl_mtrty_yrs & clltrl_ccy == hfx_expsr_ccy , elig := 'Y'];
        merged[clltrl_rsdl_mtrty_yrs >= expsr_rsdl_mtrty_yrs & clltrl_rw_vl < expsr_rw_vl, elig := 'Y'];
        merged <- merged[elig == 'Y',];
        
        #Collateral Volatility and FX Haircut
        merged[,clltrl_avlbl :=  clltrl_amnt];
        merged <- merged[clltrl_avlbl > 0,];
        
        if(nrow(merged) > 0 )
        {
          print("####Number of links");
          print(nrow(merged));
          print(proc.time()-ptm);
          
          merged[,amnt_lst_to_hrcts :=  0];
          
          #Collateral Risk Weight
          clltrl_rw_vl_ccy <-  mapply(function(x,y) (max(x,y)),merged$clltrl_rw_vl, 20);
          merged$clltrl_rw_vl <- clltrl_rw_vl_ccy;
          merged[clltrl_ccy == hfx_expsr_ccy, clltrl_rw_vl := 0];
          
          #Target Coeficients
          merged[expsr_hrct_amnt < clltrl_avlbl, clltrl_coverage := clltrl_avlbl - expsr_hrct_amnt]
          merged[expsr_hrct_amnt >= clltrl_avlbl, clltrl_coverage := 1]
          merged[ccf == 0,trgt_cfcnts := (clltrl_coverage * ((expsr_rw_vl + 1)/100) * (100/(clltrl_rw_vl+1)) * (ccf + 0.000001) * sme_sclr_fctr)/100000];
          merged[ccf != 0,trgt_cfcnts := (clltrl_coverage * ((expsr_rw_vl + 1)/100) * (100/(clltrl_rw_vl+1)) * ccf * sme_sclr_fctr)/100000];
          
          #Generic Calcs
          merged$id_lmt_pldg <- 'N/A';
          merged$clmn_indx <- 2;
          merged$clltrl_trnsfrbl <- 0;
          merged$lmt <- 0;
          merged$mxd_clltrl_pool_elgblty_ind <- 'N';
          merged$irb_fndd_non_fnncl_ind <- '';
          merged$id_trnch <- 0;
          merged$mnm_cvrg <- 0;
          merged$enm_prprty_typ <- '';
          merged$sclld_10dy_hrct <- 0;
          merged$sclld_10dy_fx_hrct <- 0;
          merged$liens_amnt_cvrd <- 0;
          
          if(debug > 2)
          {
            prep_s <- merged[,.(entity,id_expsr_unique,id_clltrl_unique,expsr_amnt,expsr_hrct, expsr_hrct_amnt,ccf, clltrl_amnt,sclld_10dy_hrct, sclld_10dy_fx_hrct,0,liens_amnt_cvrd,expsr_rw_vl,0,clltrl_avlbl,trgt_cfcnts,amnt_lst_to_hrcts,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
            prep_s <- merge(prep_s,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
            prep_s[,id_expsr_unique := original_expsr_id];
            prep_s <- merge(prep_s,fcsm_map,by.x = c('id_clltrl_unique'),by.y = c('id_number'));
            prep_s[,id_clltrl_unique := original_clltrl_id];
            prep_s <- prep_s[,.(entity,id_expsr_unique,id_clltrl_unique,expsr_amnt,expsr_hrct, expsr_hrct_amnt,ccf, clltrl_amnt,sclld_10dy_hrct, sclld_10dy_fx_hrct,0,liens_amnt_cvrd,expsr_rw_vl,0,clltrl_avlbl,trgt_cfcnts,amnt_lst_to_hrcts,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_ccy,expsr_zero_hrct_elgbl_ind)];
          }
          
          merged <- merged[,.(entity,id_clltrl_unique,id_expsr_unique,expsr_amnt,clltrl_avlbl,clltrl_amnt,clltrl_trnsfrbl,nttng_agrmnt,trgt_cfcnts,amnt_lst_to_hrcts,lmt,id_lmt_pldg,clmn_indx,id_orgnl_expsr_unique,sclld_10dy_hrct,sclld_10dy_fx_hrct,expsr_rw_vl,expsr_hrct_amnt,mxd_clltrl_pool_elgblty_ind,enm_rw_mthd,irb_fndd_non_fnncl_ind,id_trnch,mnm_cvrg,enm_prprty_typ,id_ntwrk,liens_amnt_cvrd)];
          merged[,rw_mthd_appld := '']
          p_temp <- crm_solver(merged);
          
          if(debug > 1){
            print("####After CRM");
            print(proc.time()-ptm);
          }
          
          p_temp[order(id_expsr_unique,id_clltrl_unique), allctd_clltrl:=cumsum(allctd), by=list(id_expsr_unique)];
          p_temp[,expsr_aftr_crm := expsr_amnt - allctd_clltrl];
          p_temp[,expsr_aftr_crm := round(expsr_aftr_crm,digits=precision)];
          p_temp$fndd_synthtc_ind <- 'N';
          p_temp$ca_step <- 'S';
          
          #Update Exposure Values
          exposure_coverage <- p_temp[, sum(allctd), by=list(entity,id_expsr_unique)];
          exposure_coverage[,V1 := round(V1,digits=precision)]
          exposure <- merge(exposure,exposure_coverage, by = c('entity','id_expsr_unique'), all.x=TRUE);
          exposure[is.na(V1), V1 := 0];
          exposure[,expsr_amnt := expsr_amnt - V1];
          exposure <- exposure[,.(entity,id_expsr_unique,expsr_amnt,nttng_agrmnt,unfndd_pool,real_estate_pool,expsr_hrct,ccf,hfx_expsr_ccy,expsr_rsdl_mtrty_yrs,expsr_rw_vl,id_orgnl_expsr_unique,enm_rw_mthd,expsr_id_pldg,dltn_rsk_expsr_ind,id_cntrprty,enm_cntrprty_typ,expsr_rw_vl_lmt,enm_rw_mthd_aftr_lmt_chck,apply_rtl_lmt_chck_ind,sme_sclr_fctr,enm_expsr_clcltn_mthd,irb_prprty_thrshld,irb_prprty_thrshld_ind,sme_sf_chck_ind,fx_rate,expsr_ccy,expsr_zero_hrct_elgbl_ind,pfe_exemption_ind,pfe_with_mlplctn_fctr,rc_with_mlplctn_fctr,enm_imm_expsr_clcltn,enm_pstn_clss,lien_rnk,entity_cntry,ntrl_prsn_ind,whl_ln_apprch_sme_sf_ind,imm_ba_cva_dplct_rcrd_ind,qrre_ind,a_irb_rsdntl_prprty_amnt,real_estt_rw_cnddt_ind,fll_prcnt_rw_flr_appld_ind,enm_cqs_st,orgnl_sa_expsr_clss_rw,mrtgg_cndtns_met_ind,enm_real_estt_trmnt,prprty_exempt_amnt,qlfyng_art_124_2a_ii_2,non_prft_hsng_dvlpr_ind,enm_ipre_drgtn_appld,fnl_expsr_clssfctn,prfntl_rw_ind,id_on_bs_nttng,adc_clssfctn,sme_or_prsn_ind,mrtgg_cp_rw_vl_rtl_lmt,interim_rw,uk_mrtgg_cp_rw_apprch )];
          
          #Reset to original IDs
          p_temp <- merge(p_temp,exposure_map,by.x = c('id_expsr_unique'),by.y = c('id_number'));
          p_temp[,id_expsr_unique := original_expsr_id];
          p_temp <- merge(p_temp,fcsm_map,by.x = c('id_clltrl_unique'),by.y = c('id_number'));
          p_temp[,id_clltrl_unique := original_clltrl_id];
          
          p_temp[,id_synthtc_expsr_unique := paste(id_expsr_unique, id_clltrl_unique, sep="_S_")];
          p_temp[,original_clltrl_id := NULL];
          p_temp[,original_expsr_id := NULL];
          p_temp <- merge(p_temp,exposure_map,by.x = c('id_orgnl_expsr_unique'),by.y = c('id_number'));
          p_temp[,id_orgnl_expsr_unique := original_expsr_id];
          p_temp[,original_expsr_id := NULL];
          p_temp[,hrct_hm_amnt := 0]
          
          alloc_vector[[i]] <- p_temp[,.(entity,id_expsr_unique,expsr_amnt,id_clltrl_unique,pct,allctd,hrct_amt,expsr_hrct_amnt,hrct_10dy_amt,hrct_10dy_fx_amt,hrct_hm_amnt,liens_amnt_cvrd,expsr_rw_vl,id_orgnl_expsr_unique,expsr_aftr_crm,id_synthtc_expsr_unique,mxd_clltrl_pool_elgblty_ind,fndd_synthtc_ind,rw_mthd_appld,ca_step)];
          i <- i+1;
          
          #CLEANUP
          clltrl_rw_vl_ccy <- NULL;
          merged <- NULL;
          p_temp <- NULL;
          exposure_coverage <- NULL;
          #fcsm_map <- NULL;
          
          if(debug > 1){
            print("####Step finished");
            print(proc.time()-ptm);
          }
          
        }
        
      }
      
    }
    
    #Saves final allocations
    if(length(alloc_vector) != 0){
      alloc = rbindlist(alloc_vector);
      alloc[,alloc_id := sequence(.N)];
      alloc_vector <- NULL;
    }
    
    if(!is.null(alloc_imm_calc_res) != 0){
      alloc_imm_calc_res[,alloc_id := sequence(.N)];
      alloc_imm_calc <- alloc_imm_calc_res;
      alloc_imm_calc_res <- NULL;
    }
    
    if(debug > 1){
      print("####Remaining GCCs Retail Limit Starting");
      print(proc.time()-ptm);
    }
    
    
    
    #Retail Limit for Mixed GCCs
    retail_exempt_amnts_mixed <- rbindlist(list(r_retail_exempt_amnts_mixed,c_retail_exempt_amnts_mixed),use.names = FALSE);
    r_retail_exempt_amnts_mixed <- NULL;
    c_retail_exempt_amnts_mixed <- NULL;
    
    #To exclude GCCs checked
    gcc_retail_checked <- rbindlist(list(gcc_retail_sa_check,gcc_retail_irb_check));
    gcc_retail_sa_check <- NULL;
    gcc_retail_irb_check <- NULL;
    
    #To exclude Exposures checked
    gcc_exposure_retail_checked <- rbindlist(list(exposures_retail_gcc_sa,exposures_retail_gcc_irb));
    exposures_retail_gcc_sa <- NULL;
    exposures_retail_gcc_irb <- NULL;
    
    
    #Remaining GCCs Retail Limit Check
    if(nrow(gcc_retail_checked) >0){
      retail_limit <- merge(retail_limit,gcc_retail_checked, by.x = c('id_ultmt_prnt','entity'), by.y = c('id_ultmt_prnt','entity'),all.x = TRUE);
      retail_limit <- retail_limit[is.na(breached_ind),];
      retail_limit <- retail_limit[,breached_ind := NULL];
    }
    exposure <- exposure[,id_expsr_unique := as.integer(id_expsr_unique)];
    exposure_checks <- merge(retail_limit,exposure, by.x = c('entity','id_prty'), by.y = c('entity','id_cntrprty'), all = FALSE,allow.cartesian=TRUE);
    
    #Remaining Exposures Retail Limit Check
    if(nrow(gcc_exposure_retail_checked)){
      exposure_checks <- merge(exposure_checks,gcc_exposure_retail_checked, by.x = c('entity','id_expsr_unique'), by.y = c('entity','id_expsr_unique'), all.x = TRUE);
      exposure_checks <- exposure_checks[is.na(dummy_field),];
    }
    
    
    exposure_checks <- merge(exposure_checks,exposure_irb_sa, by.x = c('id_expsr_unique'), by.y = c('id_expsr_unique'));
    exposure_checks[, exempt_amnt := pfe_with_mlplctn_fctr * fx_rate];
    exposure_checks[,exempt_calculated := 0]
    
    #exposure_checks[enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET", exempt_amnt := 0];
    #exposure_checks[enm_expsr_clcltn_mthd == "OFF_BALANCE_SHEET", exempt_amnt := expsr_amnt * fx_rate];
    if(nrow(retail_exempt_amnts_mixed) > 0){
      exposure_checks <- merge(exposure_checks,retail_exempt_amnts_mixed, by.x = c('entity','id_expsr_unique'), by.y = c('entity','id_expsr_unique'),all.x = TRUE);
      exposure_checks[is.na(exmptn_amnts) & prprty_exempt_amnt != 0, exempt_amnt := prprty_exempt_amnt];
      exposure_checks[!is.na(exmptn_amnts), exempt_amnt := exmptn_amnts];
      exposure_checks[,exempt_calculated := 1]
    }
    
    exposure_checks[exempt_calculated == 0 & prprty_exempt_amnt != 0, exempt_amnt := prprty_exempt_amnt];
    exposure_checks[a_irb_rsdntl_prprty_amnt != -1, exempt_amnt := a_irb_rsdntl_prprty_amnt];                              
    
    exposure_checks$id_trnch <- 0;
    exposure_checks[,real_estt_rw_appld_ind := 'N']
    exposure_checks[real_estt_rw_cnddt_ind == 'Y' | adc_clssfctn == 'ADC', real_estt_rw_appld_ind := 'Y']
    exposure_checks[,elgbl_for_sa_rw_chng_ind := 'N']
    exposure_checks[orgnl_sa_expsr_clss_rw %in% c('CORP_OTHR','INST_CORP_ST','RETAIL') & real_estt_rw_appld_ind != 'Y',elgbl_for_sa_rw_chng_ind := 'Y']
    exposure_checks <- exposure_checks[,.(id_expsr_unique,entity,id_ultmt_prnt,fnl_ttl_expsrs,exempt_amnt,apply_rtl_lmt_chck_ind,id_trnch,enm_cntrprty_typ,expsr_rw_vl,enm_rw_mthd,enm_rw_mthd_aftr_lmt_chck,enm_sa_irb_expsr,expsr_rw_vl_lmt,ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs,fll_prcnt_rw_flr_appld_ind,elgbl_for_sa_rw_chng_ind,enm_cqs_st,ntrl_prsn_ind,orgnl_sa_expsr_clss_rw,whl_ln_prprty_exmpt_amnt,uk_mrtgg_cp_rw_apprch)];
    
    remaining_alloc_checks <- exposure_checks[,list(sum(exempt_amnt),max(ttl_expsrs_excldng_obs),max(ttl_obs_expsrs_eur),max(fnl_ttl_expsrs),max(whl_ln_prprty_exmpt_amnt)),by=list(entity,id_ultmt_prnt)];
    remaining_alloc_checks[is.na(V1), V1 := 0];
    remaining_alloc_checks[,V1 := round(V1,digits=precision)]
    remaining_alloc_checks[,breached_ind := 'N'];
    remaining_alloc_checks[V2 - V1 -V5 > thrshld_limit_val, breached_ind := 'Y'];
    setnames(remaining_alloc_checks,c('V2','V1','V3','V4','V5'),c('ttl_expsrs_excldng_obs','exmptn_amnts','ttl_obs_expsrs_eur','fnl_ttl_expsrs','whl_ln_prprty_exmpt_amnt'));
    
    if(debug > 0){
      retail_million_gcc <- rbindlist(list(retail_million_gcc,remaining_alloc_checks[,.(entity,id_ultmt_prnt,fnl_ttl_expsrs,ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs,exmptn_amnts,exmptn_amnts + ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs - exmptn_amnts,whl_ln_prprty_exmpt_amnt,breached_ind)]));
    }
    
    exposure_checks <- exposure_checks[apply_rtl_lmt_chck_ind == 'Y',];
    exposure_checks <- merge(exposure_checks,remaining_alloc_checks, by.x = c('entity','id_ultmt_prnt'), by.y = c('entity','id_ultmt_prnt'), allow.cartesian = TRUE);
    exposure_checks <- exposure_checks[,.(id_expsr_unique,entity,id_ultmt_prnt,apply_rtl_lmt_chck_ind,id_trnch,enm_cntrprty_typ,enm_rw_mthd,enm_rw_mthd_aftr_lmt_chck,enm_sa_irb_expsr,breached_ind,expsr_rw_vl,expsr_rw_vl_lmt,fll_prcnt_rw_flr_appld_ind,elgbl_for_sa_rw_chng_ind,enm_cqs_st,ntrl_prsn_ind,orgnl_sa_expsr_clss_rw,uk_mrtgg_cp_rw_apprch)];
    
    #Merge from both no collateral GCCs plus mixed GCCs
    breached_checks <- rbindlist(list(breached_checks,exposure_checks));
    exposure_checks <- NULL;
    remaining_alloc_checks <- NULL;
    retail_limit <- NULL;
    
    #Retail Limit check for exposures (no collateral GCCs plus mixed GCCs)
    breached_checks[,rcount := 1];
    breached_checks[order(-breached_ind),ult_cparty_count := cumsum(rcount), by=list(id_expsr_unique)];
    breached_checks <- breached_checks[ult_cparty_count == 1,];
    breached_checks$changed <- 'N';
    
    breached_checks_sa <- breached_checks[enm_sa_irb_expsr == 'SA',];
    breached_checks_irb <- breached_checks[enm_sa_irb_expsr == 'IRB',];
    
    breached_checks <- NULL;
    retail_exempt_amnts_mixed <- NULL;
    
    if(debug > 1){
      print("####Remaining Retail Limit SA");
      print(proc.time()-ptm);
    }
    #SA
    #CORP, not breached
    breached_checks_sa[uk_mrtgg_cp_rw_apprch == '-' & elgbl_for_sa_rw_chng_ind == 'Y' & enm_cntrprty_typ == 'CORP' & breached_ind == 'N',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl_lmt,expsr_rw_vl,'RETAIL','CORP','Y','Y','RETAIL','Y')];
    breached_checks_sa[uk_mrtgg_cp_rw_apprch == 'Q_COMM_NON_IPRE_FRML' & elgbl_for_sa_rw_chng_ind == 'Y' & enm_cntrprty_typ == 'CORP' & breached_ind == 'N',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmax(60,pmin(interim_rw,mrtgg_cp_rw_vl_rtl_lmt)),expsr_rw_vl,'RETAIL','CORP','Y','Y','RETAIL','Y')];
    breached_checks_sa[uk_mrtgg_cp_rw_apprch == 'NQ_COMM_NON_IPRE_60_FLR' & elgbl_for_sa_rw_chng_ind == 'Y' & enm_cntrprty_typ == 'CORP' & breached_ind == 'N',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmin(mrtgg_cp_rw_vl_rtl_lmt,60),expsr_rw_vl,'RETAIL','CORP','Y','Y','RETAIL','Y')];
    
    #breached_checks[fll_prcnt_rw_flr_appld_ind == 'Y' & elgbl_for_sa_rw_chng_ind == 'Y' & enm_cntrprty_typ == 'CORP' & breached_ind == 'N',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmin(expsr_rw_vl_lmt,100),expsr_rw_vl,'RETAIL','CORP','Y','Y',orgnl_sa_expsr_clss_rw,'Y')];
    breached_checks_sa[elgbl_for_sa_rw_chng_ind != 'Y' & enm_cntrprty_typ == 'CORP' & breached_ind == 'N',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl,expsr_rw_vl,'RETAIL','CORP','Y','N',orgnl_sa_expsr_clss_rw,'Y')];
    
    #RETAIL, not breached
    breached_checks_sa[enm_cntrprty_typ == 'RETAIL' & breached_ind == 'N',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl,expsr_rw_vl,'RETAIL','RETAIL','N','N',orgnl_sa_expsr_clss_rw,'Y')];
    
    
    #CORP, breached
    breached_checks_sa[enm_cntrprty_typ == 'CORP' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl,expsr_rw_vl,'CORP','CORP','N','N',orgnl_sa_expsr_clss_rw,'Y')];
    
    
    #RETAIL, breached, non natural person
    breached_checks_sa[elgbl_for_sa_rw_chng_ind != 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl,expsr_rw_vl,'CORP','RETAIL','Y','N',orgnl_sa_expsr_clss_rw,'Y')];
    breached_checks_sa[uk_mrtgg_cp_rw_apprch == '-' & enm_cqs_st != 7 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl_lmt,expsr_rw_vl,'CORP','RETAIL','Y','Y','INST_CORP_ST','Y')];
    breached_checks_sa[uk_mrtgg_cp_rw_apprch == '-' & enm_cqs_st > 6 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl_lmt,expsr_rw_vl,'CORP','RETAIL','Y','Y','CORP_OTHR','Y')];
    
    
    breached_checks_sa[uk_mrtgg_cp_rw_apprch == 'Q_COMM_NON_IPRE_FRML' & enm_cqs_st != 7 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmax(60,pmin(interim_rw,mrtgg_cp_rw_vl_rtl_lmt)),expsr_rw_vl,'CORP','RETAIL','Y','Y','INST_CORP_ST','Y')];
    breached_checks_sa[uk_mrtgg_cp_rw_apprch == 'NQ_COMM_NON_IPRE_60_FLR' & enm_cqs_st != 7 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmin(mrtgg_cp_rw_vl_rtl_lmt,60),expsr_rw_vl,'CORP','RETAIL','Y','Y','INST_CORP_ST','Y')];
    
    
    breached_checks_sa[uk_mrtgg_cp_rw_apprch == 'Q_COMM_NON_IPRE_FRML' & enm_cqs_st > 6 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmax(60,pmin(interim_rw,mrtgg_cp_rw_vl_rtl_lmt)),expsr_rw_vl,'CORP','RETAIL','Y','Y','CORP_OTHR','Y')];
    breached_checks_sa[uk_mrtgg_cp_rw_apprch == 'NQ_COMM_NON_IPRE_60_FLR' & enm_cqs_st > 6 & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind != 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmin(mrtgg_cp_rw_vl_rtl_lmt,60),expsr_rw_vl,'CORP','RETAIL','Y','Y','CORP_OTHR','Y')];
    
    
    #RETAIL, breached, natural person
    breached_checks_sa[elgbl_for_sa_rw_chng_ind != 'Y' & ntrl_prsn_ind == 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(expsr_rw_vl,expsr_rw_vl,'RETAIL','RETAIL','N','N',orgnl_sa_expsr_clss_rw,'Y')];
    
    breached_checks_sa[uk_mrtgg_cp_rw_apprch == '-' & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind == 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(100,expsr_rw_vl,'RETAIL','RETAIL','N','Y',orgnl_sa_expsr_clss_rw,'Y')];
    breached_checks_sa[uk_mrtgg_cp_rw_apprch == 'Q_COMM_NON_IPRE_FRML' & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind == 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmax(60,pmin(interim_rw,mrtgg_cp_rw_vl_rtl_lmt)),expsr_rw_vl,'RETAIL','RETAIL','N','Y',orgnl_sa_expsr_clss_rw,'Y')];
    breached_checks_sa[uk_mrtgg_cp_rw_apprch == 'NQ_COMM_NON_IPRE_60_FLR' & elgbl_for_sa_rw_chng_ind == 'Y' & ntrl_prsn_ind == 'Y' & enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y',c('new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm','changed') := list(pmin(mrtgg_cp_rw_vl_rtl_lmt,60),expsr_rw_vl,'RETAIL','RETAIL','N','Y',orgnl_sa_expsr_clss_rw,'Y')];
    
    
    breached_checks_sa <- breached_checks_sa[changed == 'Y',.(entity,id_expsr_unique,new_rw_vl,orgnl_rw_vl,new_enm_cntrprty_typ,orgnl_cntrprty_typ,rtl_lmt_chck_cntrprt_chngd_ind,rtl_lmt_chck_rw_chngd_ind,orgnl_sa_expsr_clss_rw_crm)];
    setkeyv(breached_checks_sa,c('entity','id_expsr_unique','new_rw_vl','orgnl_rw_vl','new_enm_cntrprty_typ','orgnl_cntrprty_typ','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind','orgnl_sa_expsr_clss_rw_crm'));
    breached_checks_sa <- unique(breached_checks_sa);
    
    #Get original IDs for exposures
    breached_checks_sa <- merge(breached_checks_sa,exposure_map,by.x=c('id_expsr_unique'),by.y=c('id_number'));
    breached_checks_sa[,id_expsr_unique := original_expsr_id];
    
    retail_million_euro <- rbindlist(list(retail_million_euro,breached_checks_sa[,.(entity,id_expsr_unique,new_rw_vl,orgnl_rw_vl,new_enm_cntrprty_typ,orgnl_cntrprty_typ,rtl_lmt_chck_cntrprt_chngd_ind,rtl_lmt_chck_rw_chngd_ind,orgnl_sa_expsr_clss_rw_crm)]));
    breached_checks_sa <- NULL;
    
    if(debug > 1){
      print("####Remaining Retail Limit IRB");
      print(proc.time()-ptm);
    }
    #IRB
    breached_checks_irb[enm_cntrprty_typ == 'CORP' & breached_ind == 'N',c('new_enm_cntrprty_typ','orgnl_cntrprty_typ','new_rw_method','old_rw_method','changed','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind') := list('RETAIL','CORP','A_IRB',enm_rw_mthd,'Y','Y','Y')];
    breached_checks_irb[enm_cntrprty_typ == 'RETAIL' & breached_ind == 'N',c('new_enm_cntrprty_typ','orgnl_cntrprty_typ','new_rw_method','old_rw_method','changed','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind') := list('RETAIL','RETAIL','A_IRB','A_IRB','Y','N','N')];
    breached_checks_irb[enm_cntrprty_typ == 'CORP' & breached_ind == 'Y',c('new_enm_cntrprty_typ','orgnl_cntrprty_typ','new_rw_method','old_rw_method','changed','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind') := list('CORP','CORP',enm_rw_mthd,enm_rw_mthd,'Y','N','N')];
    breached_checks_irb[enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y' & ntrl_prsn_ind != 'Y',c('new_enm_cntrprty_typ','orgnl_cntrprty_typ','new_rw_method','old_rw_method','changed','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind') := list('CORP','RETAIL',enm_rw_mthd_aftr_lmt_chck,'A_IRB','Y','Y','Y')];
    breached_checks_irb[enm_cntrprty_typ == 'RETAIL' & breached_ind == 'Y' & ntrl_prsn_ind == 'Y',c('new_enm_cntrprty_typ','orgnl_cntrprty_typ','new_rw_method','old_rw_method','changed','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind') := list('RETAIL','RETAIL','A_IRB','A_IRB','Y','N','N')];
    
    breached_checks_irb <- breached_checks_irb[changed == 'Y',.(entity,id_expsr_unique,new_enm_cntrprty_typ,orgnl_cntrprty_typ,new_rw_method,old_rw_method,rtl_lmt_chck_cntrprt_chngd_ind,rtl_lmt_chck_rw_chngd_ind)];
    setkeyv(breached_checks_irb,c('entity','id_expsr_unique','new_enm_cntrprty_typ','orgnl_cntrprty_typ','new_rw_method','old_rw_method','rtl_lmt_chck_cntrprt_chngd_ind','rtl_lmt_chck_rw_chngd_ind'));
    breached_checks_irb <- unique(breached_checks_irb);
    
    #Get original IDs for exposures
    breached_checks_irb <- merge(breached_checks_irb,exposure_map,by.x = c('id_expsr_unique'), by.y = c('id_number'));
    breached_checks_irb[,id_expsr_unique := original_expsr_id];
    breached_checks_irb[,original_expsr_id := NULL];
    
    retail_million_euro_irb <- rbindlist(list(retail_million_euro_irb,breached_checks_irb),use.names = TRUE);
    breached_checks_irb <- NULL;
    
    if(debug > 1){
      print("####Remaining GCCs SME Limit Starting");
      print(proc.time()-ptm);
    }
    
    #SME Limit for Mixed GCCs
    sme_exempt_amnts_mixed <- rbindlist(list(r_sme_exempt_amnts_mixed,c_sme_exempt_amnts_mixed));
    r_sme_exempt_amnts_mixed <- NULL;
    c_sme_exempt_amnts_mixed <- NULL;
    
    #To exclude GCCs checked
    gcc_sme_checked <- rbindlist(list(gcc_sme_sa_check,gcc_sme_irb_check));
    gcc_sme_sa_check <- NULL;
    gcc_sme_irb_check <- NULL;
    
    #To exclude Exposures checked
    gcc_exposure_sme_checked <- rbindlist(list(exposures_sme_gcc_sa,exposures_sme_gcc_irb));
    exposures_sme_gcc_sa <- NULL;
    exposures_sme_gcc_irb <- NULL;
    
    #Remaining GCCs sme Limit Check
    if(nrow(gcc_sme_checked) > 0){
      sme_limit <- merge(sme_limit,gcc_sme_checked, by.x = c('id_ultmt_prnt','entity'), by.y = c('id_ultmt_prnt','entity'),all.x = TRUE);
      sme_limit <- sme_limit[is.na(new_sme_fctr),];
    }
    exposure <- exposure[,id_expsr_unique := as.integer(id_expsr_unique)];
    exposure_checks <- merge(sme_limit,exposure, by.x = c('entity','id_prty'), by.y = c('entity','id_cntrprty'), all = FALSE,allow.cartesian = TRUE);
    
    #Remaining Exposures SME Limit Check
    if(nrow(gcc_exposure_sme_checked)){
      exposure_checks <- merge(exposure_checks,gcc_exposure_sme_checked, by.x = c('entity','id_expsr_unique'), by.y = c('entity','id_expsr_unique'), all.x = TRUE);
      exposure_checks <- exposure_checks[is.na(dummy_field),];
    }
    exposure_checks <- merge(exposure_checks,exposure_irb_sa, by.x = c('id_expsr_unique'), by.y = c('id_expsr_unique'));
    exposure_checks[, exempt_amnt := pfe_with_mlplctn_fctr  * fx_rate];
    #exposure_checks[enm_expsr_clcltn_mthd != "OFF_BALANCE_SHEET", exempt_amnt := 0];
    #exposure_checks[enm_expsr_clcltn_mthd == "OFF_BALANCE_SHEET", exempt_amnt := expsr_amnt * fx_rate];
    
    if(nrow(sme_exempt_amnts_mixed) > 0){
      exposure_checks <- merge(exposure_checks,sme_exempt_amnts_mixed,by.x = c('entity','id_expsr_unique'), by.y = c('entity','id_expsr_unique'),all.x = TRUE);
      exposure_checks[!is.na(exmptn_amnts), exempt_amnt := exmptn_amnts];
    }
    
    exposure_checks$id_trnch <- 0;
    exposure_checks[whl_ln_apprch_sme_sf_ind == 'Y', exempt_amnt := expsr_amnt * fx_rate];
    exposure_checks <- exposure_checks[,.(id_expsr_unique,entity,id_ultmt_prnt,fnl_ttl_expsrs,exempt_amnt,sme_sf_chck_ind,id_trnch,enm_cntrprty_typ,expsr_rw_vl,enm_rw_mthd,enm_rw_mthd_aftr_lmt_chck,enm_sa_irb_expsr,ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs)];
    
    remaining_alloc_checks <- exposure_checks[,list(sum(exempt_amnt),max(ttl_expsrs_excldng_obs),max(ttl_obs_expsrs_eur),max(fnl_ttl_expsrs)),by=list(entity,id_ultmt_prnt)];
    remaining_alloc_checks[is.na(V1), V1 := 0];
    remaining_alloc_checks[,V1 := round(V1,digits=precision)]
    remaining_alloc_checks[V2-V1 > 0,new_sme_fctr := ((pmin(V2 - V1,2500000) * 0.7619) + (pmax(V2 - V1 - 2500000,0) * 0.85))/(V2-V1)];
    remaining_alloc_checks[V2-V1 <= 0,new_sme_fctr := 0.7619];
    setnames(remaining_alloc_checks,c('V2','V1','V3','V4'),c('ttl_expsrs_excldng_obs','exmptn_amnts','ttl_obs_expsrs_eur','fnl_ttl_expsrs'));
    
    if(debug > 0){
      sme_million_gcc <- rbindlist(list(sme_million_gcc,remaining_alloc_checks[,.(entity,id_ultmt_prnt,fnl_ttl_expsrs,ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs,exmptn_amnts,exmptn_amnts + ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs - exmptn_amnts,new_sme_fctr)]));
    }
    
    exposure_checks <- exposure_checks[sme_sf_chck_ind == 'Y',];
    exposure_checks <- merge(exposure_checks,remaining_alloc_checks, by.x = c('entity','id_ultmt_prnt'), by.y = c('entity','id_ultmt_prnt'), allow.cartesian = TRUE);
    exposure_checks <- exposure_checks[,.(id_expsr_unique,entity,id_ultmt_prnt,sme_sf_chck_ind,id_trnch,enm_cntrprty_typ,enm_rw_mthd,enm_rw_mthd_aftr_lmt_chck,enm_sa_irb_expsr,new_sme_fctr)];
    
    #Merge from both no collateral GCCs plus mixed GCCs
    breached_checks <- rbindlist(list(breached_checks,exposure_checks));
    exposure_checks <- NULL;
    remaining_alloc_checks <- NULL;
    sme_limit <- NULL;
    
    #sme Limit check for exposures (no collateral GCCs plus mixed GCCs)
    breached_checks[,rcount := 1];
    breached_checks[order(-new_sme_fctr),ult_cparty_count := cumsum(rcount), by=list(id_expsr_unique)];
    breached_checks <- breached_checks[ult_cparty_count == 1,];
    
    breached_checks_sa <- breached_checks[enm_sa_irb_expsr == 'SA',];
    breached_checks_irb <- breached_checks[enm_sa_irb_expsr == 'IRB',];
    
    breached_checks <- NULL;
    sme_exempt_amnts_mixed <- NULL;
    
    if(debug > 1){
      print("####Remaining SME Limit SA");
      print(proc.time()-ptm);
    }
    
    #SA
    breached_checks_sa <- breached_checks_sa[,.(entity,id_expsr_unique,new_sme_fctr)];
    setkeyv(breached_checks_sa,c('entity','id_expsr_unique','new_sme_fctr'));
    breached_checks_sa <- unique(breached_checks_sa);
    
    #Get original IDs for exposures
    breached_checks_sa <- merge(breached_checks_sa,exposure_map,by.x=c('id_expsr_unique'),by.y=c('id_number'));
    breached_checks_sa[,id_expsr_unique := original_expsr_id];
    
    sme_limit_euro <- rbindlist(list(sme_limit_euro,breached_checks_sa[,.(entity,id_expsr_unique,new_sme_fctr)]));
    breached_checks_sa <- NULL;
    
    if(debug > 1){
      print("####Remaining SME Limit IRB");
      print(proc.time()-ptm);
    }
    
    #IRB
    breached_checks_irb <- breached_checks_irb[,.(entity,id_expsr_unique,new_sme_fctr)];
    setkeyv(breached_checks_irb,c('entity','id_expsr_unique','new_sme_fctr'));
    breached_checks_irb <- unique(breached_checks_irb);
    
    #Get original IDs for exposuresenm_real_estt_trmnt
    breached_checks_irb <- merge(breached_checks_irb,exposure_map,by.x = c('id_expsr_unique'), by.y = c('id_number'));
    breached_checks_irb[,id_expsr_unique := original_expsr_id];
    breached_checks_irb[,original_expsr_id := NULL];
    
    sme_million_euro_irb <- rbindlist(list(sme_million_euro_irb,breached_checks_irb),use.names = TRUE);
    breached_checks_irb <- NULL;
    
    print('####Execution time');
    print(proc.time()-ptm);
    
    if(debug > 1){
      mem_usage <- sapply(ls(),function(x){format(object.size(get(x)),units='auto')})
      print("####MEMORY CONSUMPTION");
      print(mem_usage);
    }
    
    retail_million_eur <- retail_million_euro[,.(entity,id_expsr_unique,new_rw_vl,orgnl_rw_vl,new_enm_cntrprty_typ,orgnl_cntrprty_typ,rtl_lmt_chck_cntrprt_chngd_ind,rtl_lmt_chck_rw_chngd_ind,orgnl_sa_expsr_clss_rw_crm)];
    sme_limit_eur <- sme_limit_euro[,.(entity,id_expsr_unique,new_sme_fctr)];
    retail_million_eur_irb <- retail_million_euro_irb[,.(entity,id_expsr_unique,new_enm_cntrprty_typ,orgnl_cntrprty_typ,new_rw_method,old_rw_method,rtl_lmt_chck_cntrprt_chngd_ind,rtl_lmt_chck_rw_chngd_ind)];
    sme_million_eur_irb <- sme_million_euro_irb[,.(entity,id_expsr_unique,new_sme_fctr)];
    if(debug > 0){
      retail_million_gcc_exempt <- retail_million_gcc[,.(entity,id_ultmt_prnt,fnl_ttl_expsrs,ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs,exmptn_amnts,exmptn_amnts + ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs - exmptn_amnts,whl_ln_prprty_exmpt_amnt,breached_ind)];
      sme_million_gcc_exempt <- sme_million_gcc[,.(entity,id_ultmt_prnt,fnl_ttl_expsrs,ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs,exmptn_amnts,exmptn_amnts + ttl_obs_expsrs_eur,ttl_expsrs_excldng_obs - exmptn_amnts,new_sme_fctr)];
      
    }
  }
} else {
  print('####Required R Packages not installed####');
}



## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'alloc'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_alloc <- list()
temp_var_asOfDateAndInstanceKeysFor_alloc$asof_date = rep("2017-12-31 00:00:00", length(alloc[[1]]))
temp_var_asOfDateAndInstanceKeysFor_alloc$v = rep("clex-cc", length(alloc[[1]]))
temp_var_asOfDateAndInstanceKeysFor_alloc$run_id = rep("clex-cc", length(alloc[[1]]))
temp_var_asOfDateAndInstanceKeysFor_alloc$scenarioKey = rep("", length(alloc[[1]]))
temp_var_asOfDateAndInstanceKeysFor_alloc$run_type = rep("NORMAL", length(alloc[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'alloc_imm_calc'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_alloc_imm_calc <- list()
temp_var_asOfDateAndInstanceKeysFor_alloc_imm_calc$asof_date = rep("2017-12-31 00:00:00", length(alloc_imm_calc[[1]]))
temp_var_asOfDateAndInstanceKeysFor_alloc_imm_calc$v = rep("clex-cc", length(alloc_imm_calc[[1]]))
temp_var_asOfDateAndInstanceKeysFor_alloc_imm_calc$run_id = rep("clex-cc", length(alloc_imm_calc[[1]]))
temp_var_asOfDateAndInstanceKeysFor_alloc_imm_calc$scenarioKey = rep("", length(alloc_imm_calc[[1]]))
temp_var_asOfDateAndInstanceKeysFor_alloc_imm_calc$run_type = rep("NORMAL", length(alloc_imm_calc[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'prep_c'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_prep_c <- list()
temp_var_asOfDateAndInstanceKeysFor_prep_c$asof_date = rep("2017-12-31 00:00:00", length(prep_c[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_c$v = rep("clex-cc", length(prep_c[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_c$run_id = rep("clex-cc", length(prep_c[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_c$scenarioKey = rep("", length(prep_c[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_c$run_type = rep("NORMAL", length(prep_c[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'prep_r'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_prep_r <- list()
temp_var_asOfDateAndInstanceKeysFor_prep_r$asof_date = rep("2017-12-31 00:00:00", length(prep_r[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_r$v = rep("clex-cc", length(prep_r[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_r$run_id = rep("clex-cc", length(prep_r[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_r$scenarioKey = rep("", length(prep_r[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_r$run_type = rep("NORMAL", length(prep_r[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'prep_r_pledge'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_prep_r_pledge <- list()
temp_var_asOfDateAndInstanceKeysFor_prep_r_pledge$asof_date = rep("2017-12-31 00:00:00", length(prep_r_pledge[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_r_pledge$v = rep("clex-cc", length(prep_r_pledge[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_r_pledge$run_id = rep("clex-cc", length(prep_r_pledge[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_r_pledge$scenarioKey = rep("", length(prep_r_pledge[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_r_pledge$run_type = rep("NORMAL", length(prep_r_pledge[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'prep_g'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_prep_g <- list()
temp_var_asOfDateAndInstanceKeysFor_prep_g$asof_date = rep("2017-12-31 00:00:00", length(prep_g[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_g$v = rep("clex-cc", length(prep_g[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_g$run_id = rep("clex-cc", length(prep_g[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_g$scenarioKey = rep("", length(prep_g[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_g$run_type = rep("NORMAL", length(prep_g[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'prep_s'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_prep_s <- list()
temp_var_asOfDateAndInstanceKeysFor_prep_s$asof_date = rep("2017-12-31 00:00:00", length(prep_s[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_s$v = rep("clex-cc", length(prep_s[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_s$run_id = rep("clex-cc", length(prep_s[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_s$scenarioKey = rep("", length(prep_s[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_s$run_type = rep("NORMAL", length(prep_s[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'retail_million_eur'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_retail_million_eur <- list()
temp_var_asOfDateAndInstanceKeysFor_retail_million_eur$asof_date = rep("2017-12-31 00:00:00", length(retail_million_eur[[1]]))
temp_var_asOfDateAndInstanceKeysFor_retail_million_eur$v = rep("clex-cc", length(retail_million_eur[[1]]))
temp_var_asOfDateAndInstanceKeysFor_retail_million_eur$run_id = rep("clex-cc", length(retail_million_eur[[1]]))
temp_var_asOfDateAndInstanceKeysFor_retail_million_eur$scenarioKey = rep("", length(retail_million_eur[[1]]))
temp_var_asOfDateAndInstanceKeysFor_retail_million_eur$run_type = rep("NORMAL", length(retail_million_eur[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'sme_limit_eur'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_sme_limit_eur <- list()
temp_var_asOfDateAndInstanceKeysFor_sme_limit_eur$asof_date = rep("2017-12-31 00:00:00", length(sme_limit_eur[[1]]))
temp_var_asOfDateAndInstanceKeysFor_sme_limit_eur$v = rep("clex-cc", length(sme_limit_eur[[1]]))
temp_var_asOfDateAndInstanceKeysFor_sme_limit_eur$run_id = rep("clex-cc", length(sme_limit_eur[[1]]))
temp_var_asOfDateAndInstanceKeysFor_sme_limit_eur$scenarioKey = rep("", length(sme_limit_eur[[1]]))
temp_var_asOfDateAndInstanceKeysFor_sme_limit_eur$run_type = rep("NORMAL", length(sme_limit_eur[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'retail_million_eur_irb'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_retail_million_eur_irb <- list()
temp_var_asOfDateAndInstanceKeysFor_retail_million_eur_irb$asof_date = rep("2017-12-31 00:00:00", length(retail_million_eur_irb[[1]]))
temp_var_asOfDateAndInstanceKeysFor_retail_million_eur_irb$v = rep("clex-cc", length(retail_million_eur_irb[[1]]))
temp_var_asOfDateAndInstanceKeysFor_retail_million_eur_irb$run_id = rep("clex-cc", length(retail_million_eur_irb[[1]]))
temp_var_asOfDateAndInstanceKeysFor_retail_million_eur_irb$scenarioKey = rep("", length(retail_million_eur_irb[[1]]))
temp_var_asOfDateAndInstanceKeysFor_retail_million_eur_irb$run_type = rep("NORMAL", length(retail_million_eur_irb[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'sme_million_eur_irb'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_sme_million_eur_irb <- list()
temp_var_asOfDateAndInstanceKeysFor_sme_million_eur_irb$asof_date = rep("2017-12-31 00:00:00", length(sme_million_eur_irb[[1]]))
temp_var_asOfDateAndInstanceKeysFor_sme_million_eur_irb$v = rep("clex-cc", length(sme_million_eur_irb[[1]]))
temp_var_asOfDateAndInstanceKeysFor_sme_million_eur_irb$run_id = rep("clex-cc", length(sme_million_eur_irb[[1]]))
temp_var_asOfDateAndInstanceKeysFor_sme_million_eur_irb$scenarioKey = rep("", length(sme_million_eur_irb[[1]]))
temp_var_asOfDateAndInstanceKeysFor_sme_million_eur_irb$run_type = rep("NORMAL", length(sme_million_eur_irb[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'retail_million_gcc_exempt'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_retail_million_gcc_exempt <- list()
temp_var_asOfDateAndInstanceKeysFor_retail_million_gcc_exempt$asof_date = rep("2017-12-31 00:00:00", length(retail_million_gcc_exempt[[1]]))
temp_var_asOfDateAndInstanceKeysFor_retail_million_gcc_exempt$v = rep("clex-cc", length(retail_million_gcc_exempt[[1]]))
temp_var_asOfDateAndInstanceKeysFor_retail_million_gcc_exempt$run_id = rep("clex-cc", length(retail_million_gcc_exempt[[1]]))
temp_var_asOfDateAndInstanceKeysFor_retail_million_gcc_exempt$scenarioKey = rep("", length(retail_million_gcc_exempt[[1]]))
temp_var_asOfDateAndInstanceKeysFor_retail_million_gcc_exempt$run_type = rep("NORMAL", length(retail_million_gcc_exempt[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'sme_million_gcc_exempt'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_sme_million_gcc_exempt <- list()
temp_var_asOfDateAndInstanceKeysFor_sme_million_gcc_exempt$asof_date = rep("2017-12-31 00:00:00", length(sme_million_gcc_exempt[[1]]))
temp_var_asOfDateAndInstanceKeysFor_sme_million_gcc_exempt$v = rep("clex-cc", length(sme_million_gcc_exempt[[1]]))
temp_var_asOfDateAndInstanceKeysFor_sme_million_gcc_exempt$run_id = rep("clex-cc", length(sme_million_gcc_exempt[[1]]))
temp_var_asOfDateAndInstanceKeysFor_sme_million_gcc_exempt$scenarioKey = rep("", length(sme_million_gcc_exempt[[1]]))
temp_var_asOfDateAndInstanceKeysFor_sme_million_gcc_exempt$run_type = rep("NORMAL", length(sme_million_gcc_exempt[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'exposure_ipre'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_exposure_ipre <- list()
temp_var_asOfDateAndInstanceKeysFor_exposure_ipre$asof_date = rep("2017-12-31 00:00:00", length(exposure_ipre[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_ipre$v = rep("clex-cc", length(exposure_ipre[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_ipre$run_id = rep("clex-cc", length(exposure_ipre[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_ipre$scenarioKey = rep("", length(exposure_ipre[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_ipre$run_type = rep("NORMAL", length(exposure_ipre[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'mortgage_fnl_ipre_rw'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_mortgage_fnl_ipre_rw <- list()
temp_var_asOfDateAndInstanceKeysFor_mortgage_fnl_ipre_rw$asof_date = rep("2017-12-31 00:00:00", length(mortgage_fnl_ipre_rw[[1]]))
temp_var_asOfDateAndInstanceKeysFor_mortgage_fnl_ipre_rw$v = rep("clex-cc", length(mortgage_fnl_ipre_rw[[1]]))
temp_var_asOfDateAndInstanceKeysFor_mortgage_fnl_ipre_rw$run_id = rep("clex-cc", length(mortgage_fnl_ipre_rw[[1]]))
temp_var_asOfDateAndInstanceKeysFor_mortgage_fnl_ipre_rw$scenarioKey = rep("", length(mortgage_fnl_ipre_rw[[1]]))
temp_var_asOfDateAndInstanceKeysFor_mortgage_fnl_ipre_rw$run_type = rep("NORMAL", length(mortgage_fnl_ipre_rw[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 're_pledge_rw_used'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_re_pledge_rw_used <- list()
temp_var_asOfDateAndInstanceKeysFor_re_pledge_rw_used$asof_date = rep("2017-12-31 00:00:00", length(re_pledge_rw_used[[1]]))
temp_var_asOfDateAndInstanceKeysFor_re_pledge_rw_used$v = rep("clex-cc", length(re_pledge_rw_used[[1]]))
temp_var_asOfDateAndInstanceKeysFor_re_pledge_rw_used$run_id = rep("clex-cc", length(re_pledge_rw_used[[1]]))
temp_var_asOfDateAndInstanceKeysFor_re_pledge_rw_used$scenarioKey = rep("", length(re_pledge_rw_used[[1]]))
temp_var_asOfDateAndInstanceKeysFor_re_pledge_rw_used$run_type = rep("NORMAL", length(re_pledge_rw_used[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'mortgage_non_pref_elig'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_mortgage_non_pref_elig <- list()
temp_var_asOfDateAndInstanceKeysFor_mortgage_non_pref_elig$asof_date = rep("2017-12-31 00:00:00", length(mortgage_non_pref_elig[[1]]))
temp_var_asOfDateAndInstanceKeysFor_mortgage_non_pref_elig$v = rep("clex-cc", length(mortgage_non_pref_elig[[1]]))
temp_var_asOfDateAndInstanceKeysFor_mortgage_non_pref_elig$run_id = rep("clex-cc", length(mortgage_non_pref_elig[[1]]))
temp_var_asOfDateAndInstanceKeysFor_mortgage_non_pref_elig$scenarioKey = rep("", length(mortgage_non_pref_elig[[1]]))
temp_var_asOfDateAndInstanceKeysFor_mortgage_non_pref_elig$run_type = rep("NORMAL", length(mortgage_non_pref_elig[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'exposure_fnl_typ'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_exposure_fnl_typ <- list()
temp_var_asOfDateAndInstanceKeysFor_exposure_fnl_typ$asof_date = rep("2017-12-31 00:00:00", length(exposure_fnl_typ[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_fnl_typ$v = rep("clex-cc", length(exposure_fnl_typ[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_fnl_typ$run_id = rep("clex-cc", length(exposure_fnl_typ[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_fnl_typ$scenarioKey = rep("", length(exposure_fnl_typ[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_fnl_typ$run_type = rep("NORMAL", length(exposure_fnl_typ[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'exposure_ipre_drgtn_appld_methd'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_exposure_ipre_drgtn_appld_methd <- list()
temp_var_asOfDateAndInstanceKeysFor_exposure_ipre_drgtn_appld_methd$asof_date = rep("2017-12-31 00:00:00", length(exposure_ipre_drgtn_appld_methd[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_ipre_drgtn_appld_methd$v = rep("clex-cc", length(exposure_ipre_drgtn_appld_methd[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_ipre_drgtn_appld_methd$run_id = rep("clex-cc", length(exposure_ipre_drgtn_appld_methd[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_ipre_drgtn_appld_methd$scenarioKey = rep("", length(exposure_ipre_drgtn_appld_methd[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_ipre_drgtn_appld_methd$run_type = rep("NORMAL", length(exposure_ipre_drgtn_appld_methd[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'exposure_prfrntl_rw'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_exposure_prfrntl_rw <- list()
temp_var_asOfDateAndInstanceKeysFor_exposure_prfrntl_rw$asof_date = rep("2017-12-31 00:00:00", length(exposure_prfrntl_rw[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_prfrntl_rw$v = rep("clex-cc", length(exposure_prfrntl_rw[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_prfrntl_rw$run_id = rep("clex-cc", length(exposure_prfrntl_rw[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_prfrntl_rw$scenarioKey = rep("", length(exposure_prfrntl_rw[[1]]))
temp_var_asOfDateAndInstanceKeysFor_exposure_prfrntl_rw$run_type = rep("NORMAL", length(exposure_prfrntl_rw[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'fccm_clltrl_not_used'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_fccm_clltrl_not_used <- list()
temp_var_asOfDateAndInstanceKeysFor_fccm_clltrl_not_used$asof_date = rep("2017-12-31 00:00:00", length(fccm_clltrl_not_used[[1]]))
temp_var_asOfDateAndInstanceKeysFor_fccm_clltrl_not_used$v = rep("clex-cc", length(fccm_clltrl_not_used[[1]]))
temp_var_asOfDateAndInstanceKeysFor_fccm_clltrl_not_used$run_id = rep("clex-cc", length(fccm_clltrl_not_used[[1]]))
temp_var_asOfDateAndInstanceKeysFor_fccm_clltrl_not_used$scenarioKey = rep("", length(fccm_clltrl_not_used[[1]]))
temp_var_asOfDateAndInstanceKeysFor_fccm_clltrl_not_used$run_type = rep("NORMAL", length(fccm_clltrl_not_used[[1]]))

## Create a temporary list representing 'asof_date' and 'Instance Keys' for the resulting data source 'prep_o'. If applicable (i.e for continuous data sources), add asof_date and instance key values. 
temp_var_asOfDateAndInstanceKeysFor_prep_o <- list()
temp_var_asOfDateAndInstanceKeysFor_prep_o$asof_date = rep("2017-12-31 00:00:00", length(prep_o[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_o$v = rep("clex-cc", length(prep_o[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_o$run_id = rep("clex-cc", length(prep_o[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_o$scenarioKey = rep("", length(prep_o[[1]]))
temp_var_asOfDateAndInstanceKeysFor_prep_o$run_type = rep("NORMAL", length(prep_o[[1]]))

## Create a resulting data frame, 'alloc', for the resulting data source 'alloc' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
alloc <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_alloc,  as.list(alloc))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/alloc.data", "wb") 
## Write resulting data to the output file 
write.table(alloc, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'alloc_imm_calc', for the resulting data source 'alloc_imm_calc' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
alloc_imm_calc <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_alloc_imm_calc,  as.list(alloc_imm_calc))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/alloc_imm_calc.data", "wb") 
## Write resulting data to the output file 
write.table(alloc_imm_calc, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'prep_c', for the resulting data source 'prep_c' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
prep_c <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_prep_c,  as.list(prep_c))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/prep_c.data", "wb") 
## Write resulting data to the output file 
write.table(prep_c, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'prep_r', for the resulting data source 'prep_r' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
prep_r <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_prep_r,  as.list(prep_r))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/prep_r.data", "wb") 
## Write resulting data to the output file 
write.table(prep_r, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'prep_r_pledge', for the resulting data source 'prep_r_pledge' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
prep_r_pledge <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_prep_r_pledge,  as.list(prep_r_pledge))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/prep_r_pledge.data", "wb") 
## Write resulting data to the output file 
write.table(prep_r_pledge, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'prep_g', for the resulting data source 'prep_g' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
prep_g <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_prep_g,  as.list(prep_g))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/prep_g.data", "wb") 
## Write resulting data to the output file 
write.table(prep_g, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'prep_s', for the resulting data source 'prep_s' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
prep_s <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_prep_s,  as.list(prep_s))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/prep_s.data", "wb") 
## Write resulting data to the output file 
write.table(prep_s, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'retail_million_eur', for the resulting data source 'retail_million_eur' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
retail_million_eur <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_retail_million_eur,  as.list(retail_million_eur))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/retail_million_eur.data", "wb") 
## Write resulting data to the output file 
write.table(retail_million_eur, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'sme_limit_eur', for the resulting data source 'sme_limit_eur' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
sme_limit_eur <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_sme_limit_eur,  as.list(sme_limit_eur))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/sme_limit_eur.data", "wb") 
## Write resulting data to the output file 
write.table(sme_limit_eur, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'retail_million_eur_irb', for the resulting data source 'retail_million_eur_irb' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
retail_million_eur_irb <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_retail_million_eur_irb,  as.list(retail_million_eur_irb))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/retail_million_eur_irb.data", "wb") 
## Write resulting data to the output file 
write.table(retail_million_eur_irb, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'sme_million_eur_irb', for the resulting data source 'sme_million_eur_irb' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
sme_million_eur_irb <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_sme_million_eur_irb,  as.list(sme_million_eur_irb))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/sme_million_eur_irb.data", "wb") 
## Write resulting data to the output file 
write.table(sme_million_eur_irb, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'retail_million_gcc_exempt', for the resulting data source 'retail_million_gcc_exempt' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
retail_million_gcc_exempt <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_retail_million_gcc_exempt,  as.list(retail_million_gcc_exempt))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/retail_million_gcc_exempt.data", "wb") 
## Write resulting data to the output file 
write.table(retail_million_gcc_exempt, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'sme_million_gcc_exempt', for the resulting data source 'sme_million_gcc_exempt' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
sme_million_gcc_exempt <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_sme_million_gcc_exempt,  as.list(sme_million_gcc_exempt))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/sme_million_gcc_exempt.data", "wb") 
## Write resulting data to the output file 
write.table(sme_million_gcc_exempt, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'exposure_ipre', for the resulting data source 'exposure_ipre' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
exposure_ipre <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_exposure_ipre,  as.list(exposure_ipre))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/exposure_ipre.data", "wb") 
## Write resulting data to the output file 
write.table(exposure_ipre, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'mortgage_fnl_ipre_rw', for the resulting data source 'mortgage_fnl_ipre_rw' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
mortgage_fnl_ipre_rw <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_mortgage_fnl_ipre_rw,  as.list(mortgage_fnl_ipre_rw))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/mortgage_fnl_ipre_rw.data", "wb") 
## Write resulting data to the output file 
write.table(mortgage_fnl_ipre_rw, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 're_pledge_rw_used', for the resulting data source 're_pledge_rw_used' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
re_pledge_rw_used <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_re_pledge_rw_used,  as.list(re_pledge_rw_used))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/re_pledge_rw_used.data", "wb") 
## Write resulting data to the output file 
write.table(re_pledge_rw_used, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'mortgage_non_pref_elig', for the resulting data source 'mortgage_non_pref_elig' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
mortgage_non_pref_elig <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_mortgage_non_pref_elig,  as.list(mortgage_non_pref_elig))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/mortgage_non_pref_elig.data", "wb") 
## Write resulting data to the output file 
write.table(mortgage_non_pref_elig, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'exposure_fnl_typ', for the resulting data source 'exposure_fnl_typ' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
exposure_fnl_typ <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_exposure_fnl_typ,  as.list(exposure_fnl_typ))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/exposure_fnl_typ.data", "wb") 
## Write resulting data to the output file 
write.table(exposure_fnl_typ, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'exposure_ipre_drgtn_appld_methd', for the resulting data source 'exposure_ipre_drgtn_appld_methd' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
exposure_ipre_drgtn_appld_methd <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_exposure_ipre_drgtn_appld_methd,  as.list(exposure_ipre_drgtn_appld_methd))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/exposure_ipre_drgtn_appld_methd.data", "wb") 
## Write resulting data to the output file 
write.table(exposure_ipre_drgtn_appld_methd, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'exposure_prfrntl_rw', for the resulting data source 'exposure_prfrntl_rw' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
exposure_prfrntl_rw <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_exposure_prfrntl_rw,  as.list(exposure_prfrntl_rw))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/exposure_prfrntl_rw.data", "wb") 
## Write resulting data to the output file 
write.table(exposure_prfrntl_rw, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'fccm_clltrl_not_used', for the resulting data source 'fccm_clltrl_not_used' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
fccm_clltrl_not_used <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_fccm_clltrl_not_used,  as.list(fccm_clltrl_not_used))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/fccm_clltrl_not_used.data", "wb") 
## Write resulting data to the output file 
write.table(fccm_clltrl_not_used, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Create a resulting data frame, 'prep_o', for the resulting data source 'prep_o' which will contain asof_date (if applicable), instance keys (if applicable) and the data source columns.  
prep_o <- as.data.frame(c(temp_var_asOfDateAndInstanceKeysFor_prep_o,  as.list(prep_o))) 
## Create a handle to the output file 
file = file("./data/axiom/tmp/cv11/TASK_405ac5d2-38aa-4c61-9fda-b4b5f39a2a74/output/prep_o.data", "wb") 
## Write resulting data to the output file 
write.table(prep_o, file, quote = FALSE, row.names = FALSE, col.names=FALSE, sep = "\t", eol = "\n", na="")

## Finalization section
## For now, nothing to do in the finalization section. Keeping this section just to demonstrate the feature