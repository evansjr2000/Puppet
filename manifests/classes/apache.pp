
class apache {
  package { 'httpd':
      ensure => installed
    }

    service { 'httpd':
      ensure => running,
      hasstatus => true,
      hasrestart => true,
      }

  }
