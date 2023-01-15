#/bin/sh

set -euo pipefail

DEV=e1
ID=101
VLAN_ID=4
NET_ADDR="${1}"
LINK_ADDR="${NET_ADDR}${ID}"

apk update
apk add tcpdump
ip link add link "${DEV}" name "${DEV}"."$VLAN_ID" type vlan id "$VLAN_ID"
ip address add "$LINK_ADDR"/24 dev "${DEV}"."$VLAN_ID"
ip link set "${DEV}"."$VLAN_ID" up
ip route add 10.0.0.0/8 via "${NET_ADDR}"1 dev "${DEV}"."$VLAN_ID"
