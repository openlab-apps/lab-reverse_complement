#!/usr/bin/env nextflow
requests = Channel.fromPath("/input/request_file.txt")

process reverse_complement {
    input: 
    file x from requests
    output: 
    file 'response_file.txt' into response

    """
    python3 main.py $
    """
    
    
}
