#!/bin/bash
#Description: 3-1-9
#Write by No.30
#Version: v1.0.0


isValidIp() {
    local ip=$1
    local IFS='.'
    read -r -a octets <<< "$ip"

    if [ ${#octets[@]} -ne 4 ]; then
        return 1
    fi

    for octet in "${octets[@]}"; do
        if ! [[ "$octet" =~ ^[0-9]+$ ]] || [ "$octet" -lt 0 ] || [ "$octet" -gt 255 ]; then
            return 1
        fi
    done

    return 0
}

calculateNetwork() {
    local ip=$1
    local netmask=$2
    local IFS='.'
    read -r -a ip_octets <<< "$ip"
    read -r -a mask_octets <<< "$netmask"

    local network=""
    for i in {0..3}; do
		if [ $i -eq 3 ]
		then
			broadcast="${network}255"
		fi
        network+="$(( ip_octets[i] & mask_octets[i] ))."
    done
	network=${network%.*}
    echo "$network $broadcast"
}

read -p "insert ip: " ipAddress
read -p "insert mask: " netmask

if isValidIp "$ipAddress"; then
    echo "IP is valid"
else
    echo "IP is invalid"
    exit 1
fi

read -r network broadcast < <(calculateNetwork "$ipAddress" "$netmask")

echo "network: $network"
echo "broadcast: $broadcast"
