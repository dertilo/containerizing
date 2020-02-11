### build image

    sudo singularity build pytorch.sif pytorch.def
    
### binds
Singularity binds a few important directories by default:

    Your home directory
    The current working directory
    /sys
    /proc
    others (depending on the version of Singularity)
override these settings if you wish using the --bind flag 

### misc
* by default singularity inherits env variables of host system, to suppress this behavoir: `--cleanenv`
