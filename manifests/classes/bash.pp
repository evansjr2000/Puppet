
class bash {

  package { 'bash':
    ensure => present,
  }

  file { "/etc/bashrc" :
    owner => root,
    group => root,
    mode => 0644,
    source => "puppet:///files/bash/etc/bashrc",
    }

}
    
