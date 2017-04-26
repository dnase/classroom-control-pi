class profile::redis {
require profile::epel
class { 'redis':
maxmemory => '10mb',
}
}
