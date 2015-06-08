#! /bin/csh


# This is the script to create preprocessing scripts for the 
# frases nonsense paradigm


######## NATHALIA - tem que corrigir aqui para puxar o dado certo!!!
cd ../estudo1

set study = estudo
set subj = 1
set run = TAREFA
set ttype = PROC_EMOT
set v = V1

set script_folder = ../SCRIPTS

###########################

# Get out of the SCRIPTS folder
cd ..
cd ${study}${subj}


afni_proc.py \
	-subj_id ${study}${subj}                        		\
	-script proc.${study}${subj}.${run}_${ttype}_${v}.tcsh 	\
	-out_dir PROC.${run}_${ttype}_${v}						\
	-dsets ${run}/${study}${subj}.${run}.nii.gz			\
	-copy_anat ANAT/${study}${subj}.ANAT.nii.gz				\
 	-do_block despike align tlrc  							\
	-tcat_remove_first_trs 3                        		\
	-tshift_opts_ts -tpattern alt+z							\
	-volreg_align_to first									\
	-volreg_align_e2a										\
	-volreg_tlrc_warp										\
	-volreg_warp_dxyz 3 									\
	-align_opts_aea -skullstrip_opts 						\
		-shrink_fac_bot_lim 0.8 		\
		-no_pushout				\
	-tlrc_base MNI_caez_N27+tlrc			\
	-tlrc_opts_at -dxyz 3 				\
        -mask_segment_anat yes				\
	-blur_filter -1blur_fwhm			\
	-blur_size 6 					\
    	-regress_stim_times ${script_folder}/stim_timing_MOT_L.txt \
			    ${script_folder}/stim_timing_MOT_R.txt \
	-regress_stim_labels MOT_L MOT_R   \
	-regress_basis_multi 'BLOCK(20,1)' 'BLOCK(20,1)' 	\
	-regress_opts_3dD                               \
		-jobs 6					\
		-local_times				\
        -regress_est_blur_epits				\
        -regress_est_blur_errts				\
	-regress_apply_mot_types demean			\
	-regress_run_clustsim yes \
	-execute

exit





