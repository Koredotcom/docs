# Germany (DE) Firewall Rules

<table>
  <tr>
   <td colspan="6" >
<h2><strong>LAPTOP</strong></h2>

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
   <td>turn IP
   </td>
   <td>UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>168.86.128.0/18
   </td>
   <td>6000-65535
   </td>
  </tr>
</table>

<table>
  <tr>
   <td rowspan="4" >Voice Gateway SBC
   </td>
   <td>TCP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>3.70.125.14 (de-savg-sbc1.kore.ai)
   </td>
   <td>8443
   </td>
  </tr>
  <tr>
   <td>TCP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>18.158.223.171 (de-savg-sbc2.kore.ai)
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
   <td>3.70.125.14
   </td>
   <td>6000-65535
   </td>
  </tr>
  <tr>
   <td>UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>18.158.223.171
   </td>
   <td>6000-65535
   </td>
  </tr>
  <tr>
   <td>Voice Gateway Web URL
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
   <td>Twilio Stun
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
</table>

<table>
  <tr>
   <td colspan="6" >
<h2><strong>Voice Gateway SBC</strong></h2>

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
   <td>3.70.125.14 (de-savg-sbc1.kore.ai)
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
   <td>3.70.125.14 (de-savg-sbc2.kore.ai)
   </td>
   <td>5061
   </td>
  </tr>
  <tr>
   <td colspan="5" >
   </td>
  </tr>
  <tr>
   <td>TCP/UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>18.158.223.171
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
   <td>18.158.223.171
   </td>
   <td>5061
   </td>
  </tr>
  <tr>
   <td colspan="5" >
   </td>
  </tr>
  <tr>
   <td>UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>3.70.125.14
   </td>
   <td>6000-65535
   </td>
  </tr>
  <tr>
   <td>UDP
   </td>
   <td>ANY
   </td>
   <td>ANY
   </td>
   <td>18.158.223.171
   </td>
   <td>6000-65535
   </td>
  </tr>
</table>