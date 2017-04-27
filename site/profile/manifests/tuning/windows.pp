class profile::tuning::windows {
    registry::value { 'KeepAliveInterval':
      key    => 'HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters',
      value  => 'KeepAliveInterval',
      data   => '1',
    }
    registry::value { 'TcpMaxDataRetransmisssions':
        key     => 'HKLM\SYSTEM\CurrentControlSet\Services\TCPIP\Parameters',
        value   => 'TcpMaxDataRetransmisssions',
        data    => '5',
        }
  # Add more registry resources as directed
  
}
