---
published: true
layout: post
date: '2018-01-28 14:52 +0100'
title: bulwark masternode
tags:
  - linux
  - crypto
---
[https://github.com/masterhash-us/Bulwark-MN-Install/blob/master/install.sh](https://github.com/masterhash-us/Bulwark-MN-Install/blob/master/install.sh) < read, not run

[https://github.com/bulwark-crypto](https://github.com/bulwark-crypto)  
[https://github.com/bulwark-crypto/Bulwark/blob/master/doc/build-unix.md](https://github.com/bulwark-crypto/Bulwark/blob/master/doc/build-unix.md) < build unix

server [https://masternodeguides.com/best-vps-provider-cryptocurrency-masternodes/](https://masternodeguides.com/best-vps-provider-cryptocurrency-masternodes/)

master node  
[https://bulwarkcrypto.com/bulwark-cold-masternode-setup-ubuntu-16-04/](https://bulwarkcrypto.com/bulwark-cold-masternode-setup-ubuntu-16-04/)  
[https://masternodes.pro](https://masternodes.pro)

## master node

[https://youtu.be/c2CiRdE18Ww](https://youtu.be/c2CiRdE18Ww) < Most likely the procedure is pretty much the same as vivo.

	bulwarkd -daemon                 # starts wallet?
	bulwark-cli getinfo              # test wallet
    bulwark-cli getaccountaddress 0  # get main address 
                                     # where coins must reside
    bulwark-cli masternode genkey    # masternode private key
    bulwark-cli stop                 # stop server
    
Edit the conf
    
    vi ~/.bulwark/bulwark.conf

might hodl

	masternode=1
    masternodeprivkey=looooongnumber
    
start server again

	bulwarkd -daemon
    
Transfer request number of coins from your local wallet to masternode address0 (getaccountaddress 0).  
Wait for confirmations (in vivo case 15), that is visible in your local gui waller under 'transactions'.

start the masternode

	bulwark-cli masternode start
    bulwark-cli masternode status
    bulwark-cli getwalletinfo		# see the profit

Warning: All this assumes ^ that bulwark is same/close to vivo, so wow.

Patching back the masternode to your local wallet software?  
[https://youtu.be/Lybtz7iucVs?t=22m15s](https://youtu.be/Lybtz7iucVs?t=22m15s)

## hardening

fail2ban, firewall?

[https://youtu.be/7xuQ0-Kch7U?t=12m26s](https://youtu.be/7xuQ0-Kch7U?t=12m26s)

irc fail2ban assumes complicated user configuration, so i'd skip that, firewall seems unnecesarry. 

keybased ssh auth only < that.  
backup wallet < that.

## concept of cold wallet

[https://www.vivocrypto.com/vivo-technologies/masternodes/cold-wallet-guide/](https://www.vivocrypto.com/vivo-technologies/masternodes/cold-wallet-guide/)

>  masternode itself doesn’t hold any coins, they are all in your local wallet.
