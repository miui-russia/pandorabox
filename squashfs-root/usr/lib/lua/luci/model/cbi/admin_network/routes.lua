LuaQ               	Ø      A@   E     \   Á@  AÁ  E  ÁA Á\   Ā  Ā  ĀB AA  Á       Ä  Ä ĀD @E AÁ  Á      @F Å  @  @EÁ A  ÁA  Å  Ü      Č Č @EÁ A	  ÁA	  Å 	 Ü   Ā Ā  ĘĀ  ČĀ  Ä @EÁ A
  ÁÁ
    @
 @
  Č@
  Ä @EÁ A  ÁA        Ë  ĀË   Ä @EÁ A  ÁA        Ė  ĀĖ   Ä Í Á@     @Ā  ĀB A  ÁÁ       Ä  Ä ĀD @E AÁ  Á      @F Å  @  @EÁ A  ÁA  Å  Ü     @Î Č @EÁ A
  Á    @
 @
 @Î@
  Ä @EÁ A  ÁA        Ë  ĀÎ   Ä @EÁ A  ÁA        Ė  ĀĖ   ÄĀ      <      require    luci.tools.webadmin 	   nixio.fs    m    Map    network 
   translate    Routes K   Routes specify over which interface and gateway a certain host or network     can be reached.    s    section    TypedSection    route    Static IPv4 Routes 
   addremove 
   anonymous 	   template    cbi/tblsection    iface    option 
   ListValue 
   interface 
   Interface    cbi_add_networks    t    Value    target    Target B   Host-<abbr title="Internet Protocol Address">IP</abbr> or Network 	   datatype    ip4addr    rmempty     n    netmask >   <abbr title="Internet Protocol Version 4">IPv4</abbr>-Netmask    if target is a network    placeholder    255.255.255.255    g    gateway >   <abbr title="Internet Protocol Version 4">IPv4</abbr>-Gateway    metric    Metric 	       range(0,255)    mtu    MTU 	Ü     range(64,9000)    access    /proc/net/ipv6_route    route6    Static IPv6 Routes P   <abbr title="Internet Protocol Version 6">IPv6</abbr>-Address or Network (CIDR)    ip6addr >   <abbr title="Internet Protocol Version 6">IPv6</abbr>-Gateway    range(0,65535)                 