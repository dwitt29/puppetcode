# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include etc::fids
class etc::fids {
    $hi = $facts.get('scruffy', 'no scruffy')
    notify { "Checking \$os->\$family = ${facts['os']['family']}": }
    
    notify { "Checking \$scruffy2 = $scruffy": }
    notify { "Checking \$scruffy3 = $hi": }
}
