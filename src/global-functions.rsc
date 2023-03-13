#!rsc by RouterOS
# RouterOS script: global-functions

:global MkDir;

# create directory
:set MkDir do={
    :local Path [ :tostr $1 ];
    :local FileInPath ( $Path . "/x" )
    # :put $Path
    # :put $FileInPath
    /tool fetch http://127.0.0.1/ dst-path=$FileInPath as-value
    /file remove $FileInPath
}
