# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include etc::securefiles
class etc::securefiles {

    notify { "Checking $etc::etc_passwd_path ": }
    file { $etc::etc_passwd_path:
      owner     => $etc::etc_passwd_owner,
      group     => $etc::etc_passwd_group,
      mode      => $etc::etc_passwd_mode,
    }

    notify { "Checking $etc::etc_shadow_path ": }
    file { $etc::etc_shadow_path:
      owner     => $etc::etc_shadow_owner,
      group     => $etc::etc_shadow_group,
      mode      => $etc::etc_shadow_mode,
    }

}
