#! /bin/csh

cd ../calculo_IMFS

	3dcalc -fscale \
	-a pb05.SERIE3.r01.scale.nii \
	-b SERIE3_IMFS1+tlrc.nii \
	-c SERIE3_IMFS2+tlrc.nii \
	-expr '(a-b-c)' \
	-prefix stats.orig_minus_1_minus_2

	3dAFNItoNIFTI stats.orig_minus_1_minus_2+tlrc.BRIK \
	-prefix stats.orig_minus_1_minus_2

	3dcalc -fscale \
	-a pb05.SERIE3.r01.scale.nii \
	-b SERIE3_IMFS1+tlrc.nii \
	-c SERIE3_IMFS3+tlrc.nii \
	-expr '(a-b-c)' \
	-prefix stats.orig_minus_1_minus_3

	3dAFNItoNIFTI stats.orig_minus_1_minus_3+tlrc.BRIK \
	-prefix stats.orig_minus_1_minus_3

	3dcalc -fscale \
	-a pb05.SERIE3.r01.scale.nii \
	-b SERIE3_IMFS1+tlrc.nii \
	-c SERIE3_IMFS4+tlrc.nii \
	-expr '(a-b-c)' \
	-prefix stats.orig_minus_1_minus_4

	3dAFNItoNIFTI stats.orig_minus_1_minus_4+tlrc.BRIK \
	-prefix stats.orig_minus_1_minus_4

	3dcalc -fscale \
	-a pb05.SERIE3.r01.scale.nii \
	-b SERIE3_IMFS1+tlrc.nii \
	-c SERIE3_IMFS7+tlrc.nii \
	-expr '(a-b-c)' \
	-prefix stats.orig_minus_1_minus_7

	3dAFNItoNIFTI stats.orig_minus_1_minus_7+tlrc.BRIK \
	-prefix stats.orig_minus_1_minus_7

	3dcalc -fscale \
	-a pb05.SERIE3.r01.scale.nii \
	-b SERIE3_IMFS1+tlrc.nii \
	-c SERIE3_IMFS8+tlrc.nii \
	-expr '(a-b-c)' \
	-prefix stats.orig_minus_1_minus_8

	3dAFNItoNIFTI stats.orig_minus_1_minus_8+tlrc.BRIK \
	-prefix stats.orig_minus_1_minus_8

exit
	3dcalc -fscale \
	-a pb05.SERIE3.r01.scale.nii \
	-b SERIE3_IMFS2+tlrc.nii \
	-expr '(a-b)' \
	-prefix stats.orig_minus_2

	3dAFNItoNIFTI stats.orig_minus_2+tlrc.BRIK \
	-prefix stats.orig_minus_2

	3dcalc -fscale \
	-a pb05.SERIE3.r01.scale.nii \
	-b SERIE3_IMFS3+tlrc.nii \
	-expr '(a-b)' \
	-prefix stats.orig_minus_3

	3dAFNItoNIFTI stats.orig_minus_3+tlrc.BRIK \
	-prefix stats.orig_minus_3

	3dcalc -fscale \
	-a pb05.SERIE3.r01.scale.nii \
	-b SERIE3_IMFS4+tlrc.nii \
	-expr '(a-b)' \
	-prefix stats.orig_minus_4

	3dAFNItoNIFTI stats.orig_minus_4+tlrc.BRIK \
	-prefix stats.orig_minus_4

	3dcalc -fscale \
	-a pb05.SERIE3.r01.scale.nii \
	-b SERIE3_IMFS5+tlrc.nii \
	-expr '(a-b)' \
	-prefix stats.orig_minus_5

	3dAFNItoNIFTI stats.orig_minus_5+tlrc.BRIK \
	-prefix stats.orig_minus_5

	3dcalc -fscale \
	-a pb05.SERIE3.r01.scale.nii \
	-b SERIE3_IMFS6+tlrc.nii \
	-expr '(a-b)' \
	-prefix stats.orig_minus_6

	3dAFNItoNIFTI stats.orig_minus_6+tlrc.BRIK \
	-prefix stats.orig_minus_6

	3dcalc -fscale \
	-a pb05.SERIE3.r01.scale.nii \
	-b SERIE3_IMFS7+tlrc.nii \
	-expr '(a-b)' \
	-prefix stats.orig_minus_7

	3dAFNItoNIFTI stats.orig_minus_7+tlrc.BRIK \
	-prefix stats.orig_minus_7

	3dcalc -fscale \
	-a pb05.SERIE3.r01.scale.nii \
	-b SERIE3_IMFS8+tlrc.nii \
	-expr '(a-b)' \
	-prefix stats.orig_minus_8

	3dAFNItoNIFTI stats.orig_minus_8+tlrc.BRIK \
	-prefix stats.orig_minus_8

	3dcalc -fscale \
	-a pb05.SERIE3.r01.scale.nii \
	-b SERIE3_IMFS9+tlrc.nii \
	-expr '(a-b)' \
	-prefix stats.orig_minus_9

	3dAFNItoNIFTI stats.orig_minus_9+tlrc.BRIK \
	-prefix stats.orig_minus_9






	#3dcalc -fscale \
	#-a pb05.SERIE3.r01.scale.nii \
	#-b SERIE3_IMFS1+tlrc.nii \
	#-expr '(a-b)' \
	#-prefix stats.orig_minus_1

	#3dcalc -fscale \
	#-a SERIE3_IMFS1+tlrc.nii \
	#-b SERIE3_IMFS2+tlrc.nii \
	#-expr '(a-b)' \
	#-prefix stats.1_minus_2

	#3dcalc -fscale \
	#-a SERIE3_IMFS2+tlrc.nii \
	#-b SERIE3_IMFS3+tlrc.nii \
	#-expr '(a-b)' \
	#-prefix stats.2_minus_3

	#3dcalc -fscale \
	#-a SERIE3_IMFS3+tlrc.nii \
	#-b SERIE3_IMFS4+tlrc.nii \
	#-expr '(a-b)' \
	#-prefix stats.3_minus_4

	#3dcalc -fscale \
	#-a SERIE3_IMFS4+tlrc.nii \
	#-b SERIE3_IMFS5+tlrc.nii \
	#-expr '(a-b)' \
	#-prefix stats.4_minus_5

	#3dcalc -fscale \
	#-a SERIE3_IMFS5+tlrc.nii \
	#-b SERIE3_IMFS6+tlrc.nii \
	#-expr '(a-b)' \
	#-prefix stats.5_minus_6
	
	#3dcalc -fscale \
	#-a SERIE3_IMFS6+tlrc.nii \
	#-b SERIE3_IMFS7+tlrc.nii \
	#-expr '(a-b)' \
	#-prefix stats.6_minus_7

	#3dcalc -fscale \
	#-a SERIE3_IMFS7+tlrc.nii \
	#-b SERIE3_IMFS8+tlrc.nii \
	#-expr '(a-b)' \
	#-prefix stats.7_minus_8

	#3dcalc -fscale \
	#-a SERIE3_IMFS8+tlrc.nii \
	#-b SERIE3_IMFS9+tlrc.nii \
	#-expr '(a-b)' \
	#-prefix stats.8_minus_9
