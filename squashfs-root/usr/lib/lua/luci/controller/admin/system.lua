LuaQ                     A@  ��  ��@@�$     $@  @ $�  � $�  � $    $@ @ $� � $� �  �       module    luci.controller.admin.system    package    seeall    index    action_clock_status    action_packages    action_flashops    action_passwd    action_reboot 
   fork_exec    ltn12_popen           /      �      J  �@  ��  b@ ��  �@  �  A�  �� �  A ܀ � ��	    J ��@  ��  �  b@��@ �� �� �  A ܀ � @�   J ��@  ��   b@��@ �� �  @     J ��@  ��  A  b@��@ �� �� �   ܀ A @�� �D  E A@ �     �   J ��@  ��  � b@��@ �� �� �   ܀ A @�   J  �@  ��  � A� b@ �� �  �  @     J ��@  ��  A b@��� �� �� �  � ܀  @�   J ��@  ��  A b@��� �� �� �  � ܀ 	 @�� �D  E A@	 �    �	�   J ��@  ��  �	 b@��@ ��	 �� �  
 ܀ A
 @�   J  �@  ��  �	 A�
 b@ �@ ��
 �� � �� 	 B�   J  �@  ��  �	 AA b@ �@ �� �� � �� 	 B�� �D  E A� �    @�   J ��@  ��   b@��@ �@ �� �  � ܀ � @�   J ��@  ��   b@��@ �@ �� �  � ܀ � @�   J  �@  ��   A b@ �� �@ �  @     J ��@  ��  � b@��@ �� �� �   ܀ A @� � >      entry    admin    system    alias    _    System 	      index    cbi    admin_system/system 	      clock_status    call    action_clock_status    admin_system/admin    Administration 	      nixio    fs    access 
   /bin/opkg 	   packages    action_packages 	   Software 	
      ipkg    form    admin_system/ipkg    startup    admin_system/startup    Startup 	-      crontab    admin_system/crontab    Scheduled Tasks 	.      /etc/config/fstab    fstab    admin_system/fstab    Mount Points 	2      mount    admin_system/fstab/mount    leaf    swap    admin_system/fstab/swap    /sys/class/leds    leds    admin_system/leds <   <abbr title="Light Emitting Diode">LED</abbr> Configuration 	<   	   flashops    action_flashops    Backup / Flash Firmware 	F      backupfiles    admin_system/backupfiles    reboot    action_reboot    Reboot 	Z                       1   >      
/      E@  F�� F�� �  \  �  W@A @�  ���E� F � �@ �   \��Z    ��@  ��B��B�  A� F�� ��� �� B� F�� �@ �� ��@ E@  F�� F�� �  \@ E@  F�� F@� �@  �� � �� ܀ �� �\@  �    	   tonumber    luci    http 
   formvalue    set  	       os    date    *t    sys    call (   date -s '%04d-%02d-%02d %02d:%02d:%02d'    year    month    day    hour    min    sec    prepare_content    application/json    write_json    timestring    %c                     @   �      �      A@  � E�  F�� F � �@ \� �   �   
  J� �� bA� �� �� �A� � E�  F��F��� \� ZB    �A �B ��Bł  ������ ܂ �B    �� C ���W�C� ����� � D@ ��B    ��� ł  �����C ܂ W��@ ��B    ����  ��  �@AA� � C���  ��@�A�� �� �   �W�A� �Z     �@    �ƃD   � �� �����C�I��� �C���� � Z  @����  EDE@� ��D @�	  ��
� ��EC
I�
 EC
�
� � !D   ���  �Ń  ������ ܃ �   ��E @�  	��	��DCI� DC�� � �  �@AA� �   ��F�E \�  �	� 	 �T�LD�I��T LD���E�  F��F�� \� Z  ���F ��   
��	@ 	���DC	I�	� �DC	�	�� �  E �F
�F
A �    �@ 
�����  EF F��FF�� � ��\�  �   �F�G�� �H��� �FH��@ ��� @ �aE  @�E�  F��
F��
�	 �� �E��Ʌ���ł��� �������E�Ʌ�����
 FJ@��� �����
 FJ@ �� ����\E��    �EE F��
F��
� \E  � -      require    luci.model.ipkg    luci    http 
   formvalue    submit        display 
   installed    string    byte    letter    A 	   	#   	A   	Z      query    install    url    util    imatch    remove    update    upgrade    nixio    fs    dir    /var/opkg-lists/    stat    mtime    os    time 	�Q 	   template    render    admin_system/packages 	   no_lists 
   old_lists    stdout    table    concat    stderr    unlink    /tmp/luci-indexcache                     �   ;     	     A@  � E   ��  \� ��  � A�@A�� �� �� � �A ܀ W��  ��@  � � � A �A �     $B     d�  � ł �����$�           �B ł ����B�� ܂ �  @���  �܂ � �CEAC �� Ń �����܃� � DFA�  �C  ���C�� �C�FA C � CG�G�G@��� ��C�HC��.�ł ����B�C ܂ �  ��ł ����B�� ܂ �   +�� �@*�� �HIAC	 C � �E�IC� �'�ł ����B��	 ܂ �B  ��ł ����B�
 ܂ �  @��B
 � �CCDA
 � C    ��
 ܂ ���� ���   ��� �HIA�
 � � ܃� �����܃� �Ã���  �����  ܃ ƃ����Ń ����C� ܃ �������C�@��  ACL@ C � �HIA� ��  �À��� ���͚C����� �� �CCDA �  N� �C C    �� E� F��F��C	 ��  � ODOA� � ���� ODOA � ���  �� �� D    � ���\C�E� � �   �C ���\C �	��   @�ł ����B�C ܂ �  ��ł �����C	 J�  �� �O�CO�� �� I����� �O�CO�� �� I���I�Р�B���  �B ��ł ������ J�  IÀ�I� ��B� � I      require 	   luci.sys    luci.fs    nixio    fs    access    /lib/upgrade/platform.sh    os    execute /   grep '"rootfs_data"' /proc/mtd >/dev/null 2>&1 	       tar -xzC/ >/dev/null 2>&1 )   sysupgrade --create-backup - 2>/dev/null    /tmp/firmware.img    luci    http    setfilehandler 
   formvalue    backup    ltn12_popen    header    Content-Disposition +   attachment; filename="backup-%s-%s.tar.gz"    sys 	   hostname    date 	   %Y-%m-%d    prepare_content    application/x-targz    ltn12    pump    all    write    restore    archive 	   template    render    admin_system/applyreboot    reboot    image    step 	   tonumber 	      admin_system/upgrade 	   checksum    storage    size    stat    keep    unlink    admin_system/flashops    reset_avail    upgrade_avail    image_invalid 	      1        -n    title    i18n 
   translate    Flashing...    msg �   The system is flashing now.<br /> DO NOT POWER OFF THE DEVICE!<br /> Wait a few minutes before you try to reconnect. It might be necessary to renew the address of your computer to reach the device again, depending on your settings.    addr    192.168.1.1 
   fork_exec 9   killall dropbear uhttpd; sleep 1; /sbin/sysupgrade %s %q    reset    Erasing... \   The system is erasing the configuration partition now and will reboot itself when finished. ;   killall dropbear uhttpd; sleep 1; mtd -r erase rootfs_data        �   �        @  �@ A�  �  �   ����U�� � W  �  �@   �    �    	       os    execute    . /lib/functions.sh;     include /lib/upgrade;  #   platform_check_image %q >/dev/null                     �   �           @@ �@ D   P@���  A �@ ��   �       luci    sys    exec 
   md5sum %q    match 
   ^([^%s]+)                     �   �      >      E@  F�� F�� �  \� Z    �E@ F�� �  \  �K�A� \A�W@B@ ��B@�E� � � \��  �@�a@   ���E@  F�� F�� �@ \� Z   ��E@ F�� �@ \  �K�A�� \A��  ��  @�K�A�� \��ZB   �E� ��\�  �@ �a@   �   �    	       nixio    fs    access 
   /proc/mtd    io    lines    match -   ^([^%s]+)%s+([^%s]+)%s+([^%s]+)%s+"([^%s]+)"    linux 	   firmware 	   tonumber 	      /proc/partitions (   ^%s*(%d+)%s+(%d+)%s+([^%s]+)%s+([^%s]+)    [0-9] 	                       �   �    !   �   �@  @�   @�� @ @���ŀ  ���� A ܀��   @�ŀ  �@� A ܀��   Z   � ��   ˀ�@� �@��   � ��   ����@  �       name    image    io    open    w    popen    write    close                                 =  K     #      @@ �@ A�  � E   F@� F�� �  \� �  @  @ �Z   ��@   ��   �@�ƀ���� @  ܀�� �  ��@ �   ƀ���� JA  I����@� �       luci    http 
   formvalue    pwd1    pwd2    sys    user 
   setpasswd    root 	
   	   template    render    admin_system/passwd    stat                     M  S           @@ �@ A�  � E   F � F@� �� �@  � ��\@�   � �E   F�� F�� \@�  �       luci    http 
   formvalue    reboot 	   template    render    admin_system/reboot    sys                     U  k    3   E   F@� \�� @ �@ � � �
���  
��   ��@�  �@ �   �@A�� � ����   ���   � �  E  FA��@��   � �  E  F���@��   � �  E  F���@�� C܀ ���@ �ˀC�@ �   ��� AA �  �@  �       nixio    fork 	       chdir    /    open 
   /dev/null    w+    dup    stderr    stdout    stdin    fileno 	      close    exec    /bin/sh    -c                     m  �    %   E   F@� \�� �   ƀ�܀� ���@�AA  d    �   �   ^ #  @�����  AA@ �  ��AA�� A AA   �AA �A �  A  � 
      nixio    pipe    fork 	       close    dup    stdout    exec    /bin/sh    -c        u  �    "       @ �@  ��E�  F�� � � �  \���  �@  @�Z   � �@A@ �� � �      ��   � �@ �  ���  �    ��   ����@ � ��   �       read 	      nixio    waitpid    nohang    exited 	       close                                         