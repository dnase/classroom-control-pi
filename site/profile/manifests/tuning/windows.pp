class profile::tuning::windows {
    registry::value { 'KeepAliveInterval':
      key    => 'HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters',
      value  => 'KeepAliveInterval',
      data   => '1',
    }
    registry::value { 'TcpMaxDataRetransmisssions':
        key     => 'HKLM\SYSTEM\CurrentControlSet\Services\TCPIP\Parameters',
        Value   => 'TcpMaxDataRetransmisssions',
        Data    => '5',
        }
  # Add more registry resources as directed
  
}
