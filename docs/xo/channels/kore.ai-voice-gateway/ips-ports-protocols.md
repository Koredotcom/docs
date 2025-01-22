# IPs, Ports, and Protocols

This document contains all the region wise IPs, ports, and protocols for Kore Voice Gateway. It is useful for transferring calls from respective Contact Centres to Contact Center AI. [Learn more](../kore.ai-voice-gateway/configure-kore-voice-gateway.md#sip-trunk-setup).

## Regions

### United States of America (US) - East

Enable inward and outward traffic to the following IPs and respective ports:

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>SIP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>3.224.189.218
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>savg-sbc1.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:savg-sbc1.kore.ai:5060

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>SIP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>35.174.41.205
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>savg-sbc2.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:savg-sbc2.kore.ai:5060

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>44.215.230.111
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>54.210.75.166
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:  

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC Session Border Controller (SBC)
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>3.224.189.218
<br>
35.174.41.205
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>
savg-sbc1.kore.ai,<br>savg-sbc2.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>HTTPS</strong>
   </td>
   <td>443
   </td>
  </tr>
  <tr>
   <td><strong>WSS Port</strong>
   </td>
   <td>8443
   </td>
  </tr>
</table>

For example: sip:savg-sbc1.kore.ai:443

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC RTP Servers
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>44.215.230.111
<br>
54.210.75.166
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

### United States of America (US) - West

Enable inward and outward traffic to the following IPs and respective ports:

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>SIP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>54.67.69.12
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>usw-savg-sbc1.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:usw-savg-sbc1.kore.ai:5060
<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>SIP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>54.177.21.117
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>usw-savg-sbc2.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:usw-savg-sbc2.kore.ai:5060

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>54.67.69.12
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>54.177.21.117
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC Session Border Controller (SBC)
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>54.67.69.12
<br>
54.177.21.117
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>usw-savg-sbc1.kore.ai
<br>
usw-savg-sbc2.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>HTTPS</strong>
   </td>
   <td>443
   </td>
  </tr>
  <tr>
   <td><strong>WSS Port</strong>
   </td>
   <td>8443
   </td>
  </tr>
</table>

For example: sip:usw-savg-sbc1.kore.ai:443

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC RTP Servers
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>54.67.69.12
<br>
54.177.21.117
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

### Australia (AU)

Enable inward and outward traffic to the following IPs and respective ports:

<table>
  <tr>
   <td>
<strong>Component</strong>
   </td>
   <td>SIP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>54.153.137.7
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>au-prod-savg-sbc1.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:au-prod-savg-sbc1.kore.ai:5060

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>SIP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>13.237.170.233
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>au-prod-savg-sbc2.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:au-prod-savg-sbc2.kore.ai:5060

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>54.153.137.7
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>13.237.170.233
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC Session Border Controller (SBC)
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>54.153.137.7
<br>
13.237.170.233
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>au-prod-savg-sbc1.kore.ai,
<br>
au-prod-savg-sbc2.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>HTTPS</strong>
   </td>
   <td>443
   </td>
  </tr>
  <tr>
   <td><strong>WSS Port</strong>
   </td>
   <td>8443
   </td>
  </tr>
</table>

For example: sip:au-prod-savg-sbc1.kore.ai:443

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC RTP Servers
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>54.153.137.7
<br>
13.237.170.233
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

### India (IN)

Enable inward and outward traffic to the following IPs and respective ports:

<table>
  <tr>
   <td>
<strong>Component</strong>
   </td>
   <td>SIP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>20.244.87.83
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>ind-savg-sbc1.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:ind-savg-sbc1.kore.ai:5060

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>SIP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>20.197.5.84
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>ind-savg-sbc2.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:ind-savg-sbc2.kore.ai:5060

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>20.244.87.83
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>20.197.5.84
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC Session Border Controller (SBC)
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>20.244.87.83
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>ind-savg-sbc1.kore.ai,
<br>
ind-savg-sbc2.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>HTTPS</strong>
   </td>
   <td>443
   </td>
  </tr>
  <tr>
   <td><strong>WSS Port</strong>
   </td>
   <td>8443
   </td>
  </tr>
</table>

For example: sip:ind-savg-sbc1.kore.ai:443

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC RTP Servers
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>20.244.87.83
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

### London (EU)

Enable inward and outward traffic to the following IPs and respective ports:

<table>
  <tr>
   <td>
<strong>Component</strong>
   </td>
   <td>SIP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>18.133.179.73
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>eu-savg-sbc1.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:eu-savg-sbc1.kore.ai:5060

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>SIP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>13.43.133.73
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>eu-savg-sbc2.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:eu-savg-sbc2.kore.ai:5060

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>18.133.179.73
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>13.43.133.73
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC Session Border Controller (SBC)
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>18.133.179.73
<br>
13.43.133.73
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>eu-savg-sbc1.kore.ai,
<br>
eu-savg-sbc2.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>HTTPS</strong>
   </td>
   <td>443
   </td>
  </tr>
  <tr>
   <td><strong>WSS Port</strong>
   </td>
   <td>8443
   </td>
  </tr>
</table>

For example: sip:eu-savg-sbc1.kore.ai:443

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC RTP Servers
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>18.133.179.73
<br>
13.43.133.73
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

### Germany (DE)

Enable inward and outward traffic to the following IPs and respective ports:

<table>
  <tr>
   <td>
<strong>Component</strong>
   </td>
   <td>SIP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>3.70.125.14
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>de-savg-sbc1.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:de-savg-sbc1.kore.ai:5060

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>SIP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>18.158.223.171
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>de-savg-sbc2.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:de-savg-sbc2.kore.ai:5060

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>3.70.125.14
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>18.158.223.171
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC Session Border Controller (SBC)
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>3.70.125.14
<br>
18.158.223.171
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>de-savg-sbc1.kore.ai,
<br>
de-savg-sbc2.kore.ai</a>
   </td>
  </tr>
  <tr>
   <td><strong>HTTPS</strong>
   </td>
   <td>443
   </td>
  </tr>
  <tr>
   <td><strong>WSS Port</strong>
   </td>
   <td>8443
   </td>
  </tr>
</table>

For example: sip:de-savg-sbc1.kore.ai:443

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC RTP Servers
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>3.70.125.14
<br>
18.158.223.171
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

### Japan (JP)

Enable inward and outward traffic to the following IPs and respective ports:

<table>
  <tr>
   <td>
<strong>Component</strong>
   </td>
   <td>SIP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>35.76.183.247
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>jp-savg-sbc1.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:jp-savg-sbc1.kore.ai:5060

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>SIP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>54.248.11.38
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>jp-savg-sbc2.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>TCP / UDP Port</strong>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td><strong>TLS Port</strong>
   </td>
   <td>5061
   </td>
  </tr>
</table>

For example: sip:jp-savg-sbc2.kore.ai:5060

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 1
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>35.76.183.247
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>RTP Server – 2
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>54.248.11.38
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC Session Border Controller (SBC)
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>35.76.183.247
<br>
54.248.11.38
   </td>
  </tr>
  <tr>
   <td><strong>FQDN</strong>
   </td>
   <td>jp-savg-sbc1.kore.ai,<br>
jp-savg-sbc2.kore.ai
   </td>
  </tr>
  <tr>
   <td><strong>HTTPS</strong>
   </td>
   <td>443
   </td>
  </tr>
  <tr>
   <td><strong>WSS Port</strong>
   </td>
   <td>8443
   </td>
  </tr>
</table>

For example: sip:jp-savg-sbc2.kore.ai:443

<table>
  <tr>
   <td><strong>Component</strong>
   </td>
   <td>WebRTC RTP Servers
   </td>
  </tr>
  <tr>
   <td><strong>IP Address</strong>
   </td>
   <td>35.76.183.247<br>
54.248.11.38
   </td>
  </tr>
  <tr>
   <td><strong>RTP Ports</strong>
   </td>
   <td>10000 to 60000
   </td>
  </tr>
</table>