LuaQ                     A@   E  Ā  Å  A Ü  A  \  ĀÁ  AA  ĀB@Cä       Ā ä@      Ā^          require 	   nixio.fs    SimpleForm 	   firewall 
   translate    Firewall - Custom Rules ę   Custom rules allow you to execute arbritary iptables commands 
		which are not otherwise covered by the firewall framework. 
		The commands are executed after each firewall restart, right after 
		the default ruleset has been loaded.    field    Value    _custom 	   template    cbi/tvalue    rows 	   	   cfgvalue    write                      @Á@            	   readfile    /etc/firewall.user                     !   $       Ë @AA    Ü  Ä   ÆĀĀ @ Ü@        gsub    
?    
 
   writefile    /etc/firewall.user                             