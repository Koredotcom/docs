# IPs, Ports, and Protocols

This document contains all the region wise IPs, ports, and protocols for Kore Voice Gateway. It is useful for transferring calls from respective Contact Centres to Contact Center AI.

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
   <td><a href="http://ntt-prod-savg-sbc1.kore.ai/">au-prod-savg-sbc1.kore.ai</a>
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
   <td><a href="http://ntt-prod-savg-sbc1.kore.ai/">au-prod-savg-sbc2.kore.ai</a>
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
   <td>au-prod-savg-sbc.kore.ai,
<br>
<a href="http://ntt-prod-savg-sbc1.kore.ai/">au-prod-savg-sbc1.kore.ai</a>,
<br>
<a href="http://ntt-prod-savg-sbc1.kore.ai/">au-prod-savg-sbc2.kore.ai</a>
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
   <td><a href="http://ind-savg-sbc1.kore.ai">ind-savg-sbc1.kore.ai</a>
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
   <td><a href="http://ind-savg-sbc1.kore.ai">ind-savg-sbc2.kore.ai</a>
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
   <td>
<a href="http://ind-savg-sbc1.kore.ai">ind-savg-sbc.kore.ai</a>,
<br>
<a href="http://ind-savg-sbc1.kore.ai">ind-savg-sbc1.kore.ai</a>,
<br>
<a href="http://ind-savg-sbc1.kore.ai">ind-savg-sbc2.kore.ai</a>
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
   <td><a href="http://eu-savg-sbc2.kore.ai/">eu-savg-sbc2.kore.ai</a>
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
eu<a href="http://ntt-prod-savg-sbc1.kore.ai/">-savg-sbc2.kore.ai</a>
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
   <td><a href="http://de-savg-sbc2.kore.ai/">de-savg-sbc2.kore.ai</a>
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
de<a href="http://ntt-prod-savg-sbc1.kore.ai/">-savg-sbc2.kore.ai</a>
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
   <td><a href="http://jp-savg-sbc1.kore.ai/">jp-savg-sbc1.kore.ai</a>
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
   <td><a href="http://jp-savg-sbc2.kore.ai/">jp-savg-sbc2.kore.ai</a>
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
jp<a href="http://ntt-prod-savg-sbc1.kore.ai/">-savg-sbc2.kore.ai</a>
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