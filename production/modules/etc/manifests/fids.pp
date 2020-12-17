# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include etc::fids
class etc::fids {
    $hi = $facts.get('scruffy', 'no scruffy')
    notify { "Checking \$os->\$family = ${facts['os']['family']}": }
    notify { "Checking \$scruffy1 = ${facts['scruffy']}": }
    notify { "Checking \$scruffy2 = $scruffy": }
    notify { "Checking \$scruffy3 = $hi": }
    if ( $facts['scruffy'] ) {
        notify { "Scruffy is True": }
    }     

    notify { "${facts[ 'rates' ]}": }

    if ( $facts[ 'rates' ] ) {
        user { 'add Rates FID':
            ensure  =>  $etc::rates_user_install,
            name    =>  $etc::rates_user_name,
            uid     =>  $etc::rates_user_uid,
            gid     =>  $etc::rates_user_gid,
            comment =>  $etc::rates_user_comment,            
            home    =>  $etc::rates_user_home,
            shell   =>  $etc::rates_user_shell,
            groups  =>  $etc::rates_user_groups,
        }
    }
}
