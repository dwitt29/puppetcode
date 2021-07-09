# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include jenkins::install
class jenkins::install {

  file { "/root/jenkins_install.bash":
        mode => "0744",
        owner => 'root',
        group => 'root',
        source => 'puppet:///modules/jenkins/jenkins_install.bash',
    }
}

  #exec { "Running Jenkins install script":
  #  command => '/bin/bash /root/jenkins_install.bash',
  #  provider => shell,
  #  onlyif => '/usr/bin/test -e /path/to/file/test.txt',
  #}

}
