# Lab 06 - OSPF (GNS3)
# Router R3
# Cara pakai: tempel ke terminal RouterOS, atau upload lalu /import file-name=r3.rsc

/system identity set name=R3
/ip address add address=10.10.13.2/30 interface=ether1 comment="Link ke R2"
/ip address add address=192.168.30.1/24 interface=ether2 comment="LAN PC4 dan PC5"

/routing ospf instance add name=ospf1 version=2 router-id=3.3.3.3
/routing ospf area add name=backbone area-id=0.0.0.0 instance=ospf1
/routing ospf interface-template add area=backbone networks=10.10.13.0/30
/routing ospf interface-template add area=backbone networks=192.168.30.0/24 passive
