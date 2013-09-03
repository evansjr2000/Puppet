
import 'classes/*.pp'

class toolbox {
  file { '/usr/local/sbin/puppetsimple.sh':
    owner => root, group => root, mode => 0755,
    content => "#!/bin/sh\npuppet agent --onetime --no-daemonize --verbose $1\n"
    }
}

node /^compute-0-\d+/ {
  include toolbox
  include mysite
  include sudo
  include bash
  }

