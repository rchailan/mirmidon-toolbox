#!/bin/bash

function checkgenericinputs(){
	WORKINGDIR=$1
	returnCode=0

	## exe ##
	if [ ! -e $WORKINGDIR/ww3_grid ]
		then
		log "warning" "$WORKINGDIR/ww3_grid does not exists. Please verify ww3 compilation [and links]."
		returnCode=-1
	fi
	if [ ! -e $WORKINGDIR/ww3_prnc ]
		then
		log "warning" "$WORKINGDIR/ww3_prnc does not exists. Please verify ww3 compilation [and links]."
		returnCode=-1
	fi
	if [ ! -e $WORKINGDIR/ww3_strt ]
		then
		log "warning" "$WORKINGDIR/ww3_strt does not exists. Please verify ww3 compilation [and links]."
		returnCode=-1
	fi
	if [ ! -e $WORKINGDIR/ww3_shel ]
		then
		log "warning" "$WORKINGDIR/ww3_shel does not exists. Please verify ww3 compilation [and links]."
		returnCode=-1
	fi
	if [ ! -e $WORKINGDIR/ww3_ounf ]
		then
		log "warning" "$WORKINGDIR/ww3_ounf does not exists. Please verify ww3 compilation [and links]."
		returnCode=-1
	fi
	if [ ! -e $WORKINGDIR/ww3_ounp ]
		then
		log "warning" "$WORKINGDIR/ww3_ounp does not exists. Please verify ww3 compilation [and links]."
		returnCode=-1
	fi

	## inp ##
	if [ ! -e $WORKINGDIR/ww3_grid.inp ]
		then
		log "warning" "$WORKINGDIR/ww3_grid.inp does not exists."
		returnCode=-1
	fi
	if [ ! -e $WORKINGDIR/ww3_prnc-current.inp ]
		then
		log "warning" "$WORKINGDIR/ww3_prnc-current.inp does not exists."
		returnCode=-1
	fi
	if [ ! -e $WORKINGDIR/ww3_prnc-wind.inp ]
		then
		log "warning" "$WORKINGDIR/ww3_prnc-wind.inp does not exists."
		returnCode=-1
	fi
	if [ ! -e $WORKINGDIR/prnc.sh ]
		then
		log "warning" "$WORKINGDIR/prnc.sh does not exists."
		returnCode=-1
	else
		chmod 775 $WORKINGDIR/prnc.sh
	fi
	if [ ! -e $WORKINGDIR/ww3_strt.inp ]
		then
		log "warning" "$WORKINGDIR/ww3_strt.inp does not exists."
		returnCode=-1
	fi
	if [ ! -e $WORKINGDIR/ww3_shel.inp ]
		then
		log "warning" "$WORKINGDIR/ww3_shel.inp does not exists."
		returnCode=-1
	fi
	if [ ! -e $WORKINGDIR/ww3_outp.inp ]
		then
		log "warning" "$WORKINGDIR/ww3_outp.inp does not exists."
		returnCode=-1
	fi
	if [ ! -e $WORKINGDIR/ww3_ounp.inp ]
		then
		log "warning" "$WORKINGDIR/ww3_ounp.inp does not exists."
		returnCode=-1
	fi

	return $returnCode
}
