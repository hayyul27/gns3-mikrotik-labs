# Lab 06 - OSPF (GNS3)
# Router R1
# Cara pakai: tempel ke terminal RouterOS, atau upload lalu /import file-name=r1.rsc

/system identity set name=R1
/ip address add address=10.10.12.1/30 interface=ether1 comment="Link ke R2"
/ip address add address=192.168.10.1/24 interface=ether2 comment="LAN PC1 dan PC2"

/routing ospf instance add name=ospf1 version=2 router-id=1.1.1.1
/routing ospf area add name=backbone area-id=0.0.0.0 instance=ospf1
/routing ospf interface-template add area=backbone networks=10.10.12.0/30
/routing ospf interface-template add area=backbone networks=192.168.10.0/24 passive
