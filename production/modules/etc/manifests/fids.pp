# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include etc::fids
class etc::fids {
    notify { "Checking \$os->\$family = ${facts['os']['family']}": }
    notify { "Checking \$scruffy = $scruffy": }
}
