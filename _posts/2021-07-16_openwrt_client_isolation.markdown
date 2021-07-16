---
layout: single
title:  "Effective client isolation with OpenWRT and multiple cable connected Access Points"
date:   2021-07-16 10:30:00 +0200
---
**TL;DR OpenWRT offers WiFi client isolation as a setting, but that is only effective within that exact wifi. Learn how to use `ebtables` to expand the client isolation to multiple wifis or multiple access points.**

The term client isolation means that different clients connected to a (wifi) network should not be able to communicate with each other, just with a gateway or a specified set of services provided by the network.
You typically want to have this on public networks but maybe also on your private network where you want to lower the risk factor of devices exposing informaton or attack surface to other devices.

This article will focus purely on OpenWRT routers, as they are highly customizable for our purpose.

OpenWRT provices client isolation as a checkbox in the wifi settins out of the box.
Unfortunately, this might trick you into thinking it actually provices client isolation for the network, which is not true.
This client isolation just disallows clients *on that exact wifi access point* talking to each other.
If you have multiple wifis (e.g. by having 2.4 + 5 GHz radios) or multiple access points connected via cable to each other, this client isolation is only partly effective.

What can we do?

Use filtering on the network bridge that connects the wifis and networks together.
This is done via `ebtables` which you first need to install as a package on your OpenWRT device: `opkg update && opkg install ebtables` or via System -> Software in the web interface.

Next, you need to find out a few things.
`ebtables` is able to setup filters on layer 2, so it can handle devices and mac addresses.

We want to allow the devices talking to the gateway and the gateway talking to the devices.
Also, we want to allow DHCP to work: Clients will send DHCP requests as a broadcast.
This DHCP request somehow needs to end up at the gateway.
The DHCP response is unicast again, so it falls in the first category of traffic.

In my example, the gateway is a dedicated gateway connected via ethernet, so none of the involved OpenWRT devices act as the gateway themselves.
I have an OPNSense box there, but it could be any other router on your cabled network.

Also, I use this for a guest network, e.g. the access points are themselves not reachable via this network.
You would need to fiddle with the filter rules or also have a separate management network for your OpenWRT devices.

There is multiple ways to achieve these goals, I present the first solution I came up with:

```
GW_MAC=AA:BB:CC:DD:EE:FF    # Mac address of the gateway system
BRIDGE=guest                # name of the bridge the rules should apply to
GW_IF=eth0.10               # interface (as part of the bridge) that connects to the gateway (and maybe to other Accesspoints)
# Allow traffic from GW
ebtables -A FORWARD -s $GW_MAC -i $GW_IF --logical-in $BRIDGE -j ACCEPT
# Allow traffic from devices passing to gateway IF (e.g. not to other wifis on the same AP)
ebtables -A FORWARD --logical-out $BRIDGE -o $GW_IF -j ACCEPT
# Drop all traffic coming on on the bridge (e.g. everything NOT from the gateway)
ebtables -A FORWARD --logical-in $BRIDGE -j DROP
```

We first allow all traffic from the gateway.
To easily let DHCP broadcasts pass to the gateway, we also allow any traffic going out towards the gateway (and potential other APs, but not towards other wifis on the same AP) but then disallow all remaining traffic to enter the bridge (which blocks broadcasts NOT from the gateway entering a bridge on other devices)

As we gathered all the information we can also easily put a rule that makes ARP spoofing harder/impossible in certain setups:
```
# Drop traffic from gateway mac when it is not coming through the expected interface
ebtables -I FORWARD -s $GW_MAC -i !$GW_IF --logical-in $BRIDGE -j DROP
```

This drops all packages that would enter the bridge from wifis with the spoofed source mac of the gateway.
This rule is not effective against ARP spoofing via cable access.

An alternate solution to allowing all traffic leaving towards the gateway could be allowing only traffic towards the gateway and using network address translation (NAT) on layer 2 to redirect all broadcasts towards the gateway:

```
WIFI_IFs="wlan1 wlan2"
for IF in WIFI_IFs; do
    ebtables -t nat -A PREROUTING -i $IF -d 00:00:00:00:00:00 -j dnat --to-destination $GW_MAC
done
```

(I did not test this)

All of the above has been only quickly tested so far, I will update this blog post when I put it in production.