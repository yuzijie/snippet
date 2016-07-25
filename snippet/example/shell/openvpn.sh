sudo openvpn \
--client \
--dev tun \
--proto tcp \
--daemon ${NAME} \
--remote ${IP} ${PORT} \
--resolv-retry infinite \
--nobind \
--persist-key \
--persist-tun \
--ca ~/bin/openvpn/config/group/ca.crt \
--tls-auth ~/bin/openvpn/config/group/ta.key 1 \
--auth-user-pass ~/bin/openvpn/openvpn-pass \
--comp-lzo \
--verb 5
