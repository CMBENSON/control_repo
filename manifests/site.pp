node default {
  file {'/root/README':
    ensure => file,
    content => 'This is a readme',
    owner => 'root',
}
node 'master.puppet.vm' {
  include role::master_server 
}

node /^web/ {
  incdue role::app_server
}

node /^db/ {
  incdue role::dv_server
} 
