node 'agent.puppet' {
  include jenkins
  file { '/puppetfile.txt':
    ensure => 'present',
    content => "This was created by the Puppet Master!"
  }
  package {
     ['git', 'tree', 'openssh-server', 'maven']:
     ensure => 'installed',

  }

}
 include ntp

