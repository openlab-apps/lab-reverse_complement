#!/usr/bin/env nextflow
/*
========================================================================================
    nf-core/revcomp
========================================================================================
    Github : https://github.com/nf-core/revcomp
    Website: https://nf-co.re/revcomp
    Slack  : https://nfcore.slack.com/channels/revcomp
----------------------------------------------------------------------------------------
*/

nextflow.enable.dsl = 2

/*
========================================================================================
    GENOME PARAMETER VALUES
========================================================================================
*/

params.fasta = WorkflowMain.getGenomeAttribute(params, 'fasta')

/*
========================================================================================
    VALIDATE & PRINT PARAMETER SUMMARY
========================================================================================
*/

WorkflowMain.initialise(workflow, params, log)

/*
========================================================================================
    NAMED WORKFLOW FOR PIPELINE
========================================================================================
*/

include { REVCOMP } from './workflows/revcomp'

//
// WORKFLOW: Run main nf-core/revcomp analysis pipeline
//
workflow NFCORE_REVCOMP {
    REVCOMP ()
}

/*
========================================================================================
    RUN ALL WORKFLOWS
========================================================================================
*/

//
// WORKFLOW: Execute a single named workflow for the pipeline
// See: https://github.com/nf-core/rnaseq/issues/619
//
workflow {
    NFCORE_REVCOMP ()
}

/*
========================================================================================
    THE END
========================================================================================
*/