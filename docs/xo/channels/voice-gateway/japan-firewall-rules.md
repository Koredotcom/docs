# Japan (JP) Firewall Rules

<table>
  <tr>
   <td rowspan="2" >
<h2><strong>Kore Network</strong></h2>

   </td>
   <td colspan="2" >Your Intranet
   </td>
   <td colspan="2" >Allowed destinations
   </td>
   <td rowspan="2" >Destination Port
   </td>
  </tr>
  <tr>
   <td>Protocol
   </td>
   <td>Source IP
   </td>
   <td>Source Port †
   </td>
   <td>Destination*
   </td>
  </tr>
  <tr>
   <td rowspan="6" >Session Border Controller (SBC)

(Automation, HA SBC)
   </td>
   <td>TCP/UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>18.177.19.211
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td>TCP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>audiocodes-jp-sbc-prod.kore.ai
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td>TLS
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>18.177.19.211
   </td>
   <td>5061
   </td>
  </tr>
  <tr>
   <td>TLS
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>audiocodes-jp-sbc-prod.kore.ai
   </td>
   <td>5061
   </td>
  </tr>
  <tr>
   <td>TCP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>18.177.19.211
   </td>
   <td>10081
   </td>
  </tr>
  <tr>
   <td>UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>18.177.19.211
   </td>
   <td>6000 -60000
   </td>
  </tr>
  <tr>
   <td rowspan="6" >Session Border Controller (SBC)

(Agent SBC)
   </td>
   <td>TCP/UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>18.182.77.145
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td>TCP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td><a href="https://audiocodes-jp-webrtc-prod.kore.ai/">audiocodes-jp-webrtc-prod.kore.ai</a>
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td>TLS
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>18.182.77.145
   </td>
   <td>5061
   </td>
  </tr>
  <tr>
   <td>TLS
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td><a href="https://audiocodes-jp-webrtc-prod.kore.ai/">audiocodes-jp-webrtc-prod.kore.ai</a>
   </td>
   <td>5061
   </td>
  </tr>
  <tr>
   <td>UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>18.182.77.145
   </td>
   <td>6000 -60000
   </td>
  </tr>
  <tr>
   <td>TCP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>18.182.77.145
   </td>
   <td>10081
   </td>
  </tr>
</table>

<table>
  <tr>
   <td colspan="6" >
<h2><strong>SAVG</strong></h2>

   </td>
  </tr>
  <tr>
   <td rowspan="8" >Session Border Controller (SBC)

(Agent SBC)
   </td>
   <td>TCP/UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>35.76.183.247
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td>TLS
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>35.76.183.247
   </td>
   <td>5061
   </td>
  </tr>
  <tr>
   <td>TCP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>35.76.183.247
   </td>
   <td>8443
   </td>
  </tr>
  <tr>
   <td>TCP/UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>54.248.11.38
   </td>
   <td>5060
   </td>
  </tr>
  <tr>
   <td>TLS
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>54.248.11.38
   </td>
   <td>5061
   </td>
  </tr>
  <tr>
   <td>TLS
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>54.248.11.38
   </td>
   <td>8443
   </td>
  </tr>
  <tr>
   <td>UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>35.76.183.247
   </td>
   <td>6000-60000
   </td>
  </tr>
  <tr>
   <td>UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>54.248.11.38
   </td>
   <td>6000-60000
   </td>
  </tr>
</table>

<table>
  <tr>
   <td colspan="6" >
<h2><strong>Media Twilio Gateway</strong></h2>

   </td>
  </tr>
  <tr>
   <td>Secure Media (ICE/STUN/SRTP) Edge Locations
   </td>
   <td>Protocol
   </td>
   <td>Source IP
   </td>
   <td>Source Port †
   </td>
   <td>Destination IP Ranges
   </td>
   <td>Destination Port Range
   </td>
  </tr>
  <tr>
   <td>Stun server
   </td>
   <td>UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>168.86.128.0/18
   </td>
   <td>10,000 – 60,000
   </td>
  </tr>
</table>

<table>
  <tr>
   <td colspan="6" >
<h2><strong>FQDN</strong></h2>

   </td>
  </tr>
  <tr>
   <td>Kore Domain
   </td>
   <td>TCP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>*.kore.ai
   </td>
   <td>443
   </td>
  </tr>
  <tr>
   <td>Twilio Domain
   </td>
   <td>TCP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>*.twilio.com
   </td>
   <td>443
   </td>
  </tr>
  <tr>
   <td rowspan="15" >Twilio STUN
   </td>
   <td>Protocol
   </td>
   <td>Source IP
   </td>
   <td>Source Port †
   </td>
   <td>Destination IP Ranges
   </td>
   <td>Destination Port Range
   </td>
  </tr>
  <tr>
   <td>TCP (TURN TLS)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>34.203.254.0 – 34.203.254.255
   </td>
   <td>443/5349
   </td>
  </tr>
  <tr>
   <td>TCP (TURN TLS)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>54.172.60.0 – 54.172.61.255
   </td>
   <td>443/5349
   </td>
  </tr>
  <tr>
   <td>TCP (TURN TLS)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>34.203.250.0 – 34.203.251.255
   </td>
   <td>443/5349
   </td>
  </tr>
  <tr>
   <td>TCP (TURN TLS)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>3.235.111.128 – 3.235.111.255
   </td>
   <td>443/5349
   </td>
  </tr>
  <tr>
   <td>TCP (TURN TLS)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>34.216.110.128 – 34.216.110.159
   </td>
   <td>443/5349
   </td>
  </tr>
  <tr>
   <td>TCP (TURN TLS)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>54.244.51.0 – 54.244.51.255
   </td>
   <td>443/5349
   </td>
  </tr>
  <tr>
   <td>TCP (TURN TLS)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>44.234.69.0 – 44.234.69.127
   </td>
   <td>443/5349
   </td>
  </tr>
  <tr>
   <td>TCP, UDP (TURN)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>34.203.254.0 – 34.203.254.255
   </td>
   <td>3478
   </td>
  </tr>
  <tr>
   <td>TCP, UDP (TURN)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>54.172.60.0 – 54.172.61.255
   </td>
   <td>3478
   </td>
  </tr>
  <tr>
   <td>TCP, UDP (TURN)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>34.203.250.0 – 34.203.251.255
   </td>
   <td>3478
   </td>
  </tr>
  <tr>
   <td>TCP, UDP (TURN)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>3.235.111.128 – 3.235.111.255
   </td>
   <td>3478
   </td>
  </tr>
  <tr>
   <td>TCP, UDP (TURN)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>34.216.110.128 – 34.216.110.159
   </td>
   <td>3478
   </td>
  </tr>
  <tr>
   <td>TCP, UDP (TURN)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>54.244.51.0 – 54.244.51.255
   </td>
   <td>3478
   </td>
  </tr>
  <tr>
   <td>TCP, UDP (TURN)
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>44.234.69.0 – 44.234.69.127
   </td>
   <td>3478
   </td>
  </tr>
</table>