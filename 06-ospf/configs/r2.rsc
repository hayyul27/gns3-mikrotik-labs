# Lab 06 - OSPF (GNS3)
# Router R2
# Cara pakai: tempel ke terminal RouterOS, atau upload lalu /import file-name=r2.rsc

/system identity set name=R2
/ip address add address=10.10.12.2/30 interface=ether1 comment="Link ke R1"
/ip address add address=10.10.13.1/30 interface=ether2 comment="Link ke R3"
/ip address add address=192.168.20.1/24 interface=ether3 comment="LAN PC3"

/routing ospf instance add name=ospf1 version=2 router-id=2.2.2.2
/routing ospf area add name=backbone area-id=0.0.0.0 instance=ospf1
/routing ospf interface-template add area=backbone networks=10.10.12.0/30
/routing ospf interface-template add area=backbone networks=10.10.13.0/30
/routing ospf interface-template add area=backbone networks=192.168.20.0/24 passive
