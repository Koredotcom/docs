# Deployment and Operations

This section covers the infrastructure requirements and operational aspects of the Voice Gateway.

## IPs, Ports, and Protocols

This document contains all the region wise IPs, ports, and protocols for Voice Gateway. It is useful for transferring calls from respective Contact Centres to Contact Center AI. [Learn more](./configure-voice-gateway.md#sip-trunk-setup).

### Regions

#### United States of America (US) - East

Enable inward and outward traffic to the following IPs and respective ports:

| **Component**      | SIP Server – 1    |
| ------------------ | ----------------- |
| **IP Address**     | 3.224.189.218     |
| **FQDN**           | savg-sbc1.kore.ai |
| **TCP / UDP Port** | 5060              |
| **TLS Port**       | 5061              |

For example: sip:savg-sbc1.kore.ai:5060

| **Component**      | SIP Server – 2    |
| ------------------ | ----------------- |
| **IP Address**     | 35.174.41.205     |
| **FQDN**           | savg-sbc2.kore.ai |
| **TCP / UDP Port** | 5060              |
| **TLS Port**       | 5061              |

For example: sip:savg-sbc2.kore.ai:5060

| **Component**  | RTP Server – 1 |
| -------------- | -------------- |
| **IP Address** | 44.215.230.111 |
| **RTP Ports**  | 6000-65535     |

| **Component**  | RTP Server – 2 |
| -------------- | -------------- |
| **IP Address** | 54.210.75.166  |
| **RTP Ports**  | 6000-65535     |

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:  

| **Component**  | WebRTC Session Border Controller (SBC)  |
| -------------- | --------------------------------------- |
| **IP Address** | 3.224.189.218<br>35.174.41.205          |
| **FQDN**       | savg-sbc1.kore.ai,<br>savg-sbc2.kore.ai |
| **HTTPS**      | 443                                     |
| **WSS Port**   | 8443                                    |

For example: sip:savg-sbc1.kore.ai:443

| **Component**  | WebRTC RTP Servers              |
| -------------- | ------------------------------- |
| **IP Address** | 44.215.230.111<br>54.210.75.166 |
| **RTP Ports**  | 6000-65535                      |

#### United States of America (US) - West

Enable inward and outward traffic to the following IPs and respective ports:

| **Component**      | SIP Server – 1        |
| ------------------ | --------------------- |
| **IP Address**     | 54.67.69.12           |
| **FQDN**           | usw-savg-sbc1.kore.ai |
| **TCP / UDP Port** | 5060                  |
| **TLS Port**       | 5061                  |

For example: sip:usw-savg-sbc1.kore.ai:5060

| **Component**      | SIP Server – 2        |
| ------------------ | --------------------- |
| **IP Address**     | 54.177.21.117         |
| **FQDN**           | usw-savg-sbc2.kore.ai |
| **TCP / UDP Port** | 5060                  |
| **TLS Port**       | 5061                  |

For example: sip:usw-savg-sbc2.kore.ai:5060

| **Component**  | RTP Server – 1 |
| -------------- | -------------- |
| **IP Address** | 54.67.69.12    |
| **RTP Ports**  | 6000-65535     |

| **Component**  | RTP Server – 2 |
| -------------- | -------------- |
| **IP Address** | 54.177.21.117  |
| **RTP Ports**  | 6000-65535     |

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:

| **Component**  | WebRTC Session Border Controller (SBC)         |
| -------------- | ---------------------------------------------- |
| **IP Address** | 54.67.69.12<br>54.177.21.117                   |
| **FQDN**       | usw-savg-sbc1.kore.ai<br>usw-savg-sbc2.kore.ai |
| **HTTPS**      | 443                                            |
| **WSS Port**   | 8443                                           |

For example: sip:usw-savg-sbc1.kore.ai:443

| **Component**  | WebRTC RTP Servers           |
| -------------- | ---------------------------- |
| **IP Address** | 54.67.69.12<br>54.177.21.117 |
| **RTP Ports**  | 6000-65535                   |

#### Australia (AU)

Enable inward and outward traffic to the following IPs and respective ports:

| **Component**      | SIP Server – 1            |
| ------------------ | ------------------------- |
| **IP Address**     | 54.153.137.7              |
| **FQDN**           | au-prod-savg-sbc1.kore.ai |
| **TCP / UDP Port** | 5060                      |
| **TLS Port**       | 5061                      |

For example: sip:au-prod-savg-sbc1.kore.ai:5060

| **Component**      | SIP Server – 2            |
| ------------------ | ------------------------- |
| **IP Address**     | 13.237.170.233            |
| **FQDN**           | au-prod-savg-sbc2.kore.ai |
| **TCP / UDP Port** | 5060                      |
| **TLS Port**       | 5061                      |

For example: sip:au-prod-savg-sbc2.kore.ai:5060

| **Component**  | RTP Server – 1 |
| -------------- | -------------- |
| **IP Address** | 54.153.137.7   |
| **RTP Ports**  | 6000-65535     |

| **Component**  | RTP Server – 2 |
| -------------- | -------------- |
| **IP Address** | 13.237.170.233 |
| **RTP Ports**  | 6000-65535     |

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:

| **Component**  | WebRTC Session Border Controller (SBC)                  |
| -------------- | ------------------------------------------------------- |
| **IP Address** | 54.153.137.7<br>13.237.170.233                          |
| **FQDN**       | au-prod-savg-sbc1.kore.ai,<br>au-prod-savg-sbc2.kore.ai |
| **HTTPS**      | 443                                                     |
| **WSS Port**   | 8443                                                    |

For example: sip:au-prod-savg-sbc1.kore.ai:443

| **Component**  | WebRTC RTP Servers             |
| -------------- | ------------------------------ |
| **IP Address** | 54.153.137.7<br>13.237.170.233 |
| **RTP Ports**  | 6000-65535                     |

#### India (IN)

Enable inward and outward traffic to the following IPs and respective ports:

| **Component**      | SIP Server – 1        |
| ------------------ | --------------------- |
| **IP Address**     | 20.244.87.83          |
| **FQDN**           | ind-savg-sbc1.kore.ai |
| **TCP / UDP Port** | 5060                  |
| **TLS Port**       | 5061                  |

For example: sip:ind-savg-sbc1.kore.ai:5060

| **Component**      | SIP Server – 2        |
| ------------------ | --------------------- |
| **IP Address**     | 20.197.5.84           |
| **FQDN**           | ind-savg-sbc2.kore.ai |
| **TCP / UDP Port** | 5060                  |
| **TLS Port**       | 5061                  |

For example: sip:ind-savg-sbc2.kore.ai:5060

| **Component**  | RTP Server – 1 |
| -------------- | -------------- |
| **IP Address** | 20.244.87.83   |
| **RTP Ports**  | 6000-65535     |

| **Component**  | RTP Server – 2 |
| -------------- | -------------- |
| **IP Address** | 20.197.5.84    |
| **RTP Ports**  | 6000-65535     |

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:

| **Component**  | WebRTC Session Border Controller (SBC)          |
| -------------- | ----------------------------------------------- |
| **IP Address** | 20.244.87.83                                    |
| **FQDN**       | ind-savg-sbc1.kore.ai,<br>ind-savg-sbc2.kore.ai |
| **HTTPS**      | 443                                             |
| **WSS Port**   | 8443                                            |

For example: sip:ind-savg-sbc1.kore.ai:443

| **Component**  | WebRTC RTP Servers |
| -------------- | ------------------ |
| **IP Address** | 20.244.87.83       |
| **RTP Ports**  | 6000-65535         |

#### London (EU)

Enable inward and outward traffic to the following IPs and respective ports:

| **Component**      | SIP Server – 1       |
| ------------------ | -------------------- |
| **IP Address**     | 18.133.179.73        |
| **FQDN**           | eu-savg-sbc1.kore.ai |
| **TCP / UDP Port** | 5060                 |
| **TLS Port**       | 5061                 |

For example: sip:eu-savg-sbc1.kore.ai:5060

| **Component**      | SIP Server – 2       |
| ------------------ | -------------------- |
| **IP Address**     | 13.43.133.73         |
| **FQDN**           | eu-savg-sbc2.kore.ai |
| **TCP / UDP Port** | 5060                 |
| **TLS Port**       | 5061                 |

For example: sip:eu-savg-sbc2.kore.ai:5060

| **Component**  | RTP Server – 1 |
| -------------- | -------------- |
| **IP Address** | 18.133.179.73  |
| **RTP Ports**  | 6000-65535     |

| **Component**  | RTP Server – 2 |
| -------------- | -------------- |
| **IP Address** | 13.43.133.73   |
| **RTP Ports**  | 6000-65535     |

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:

| **Component**  | WebRTC Session Border Controller (SBC)        |
| -------------- | --------------------------------------------- |
| **IP Address** | 18.133.179.73<br>13.43.133.73                 |
| **FQDN**       | eu-savg-sbc1.kore.ai,<br>eu-savg-sbc2.kore.ai |
| **HTTPS**      | 443                                           |
| **WSS Port**   | 8443                                          |

For example: sip:eu-savg-sbc1.kore.ai:443

| **Component**  | WebRTC RTP Servers            |
| -------------- | ----------------------------- |
| **IP Address** | 18.133.179.73<br>13.43.133.73 |
| **RTP Ports**  | 6000-65535                    |

#### Germany (DE)

Enable inward and outward traffic to the following IPs and respective ports:

| **Component**      | SIP Server – 1       |
| ------------------ | -------------------- |
| **IP Address**     | 3.70.125.14          |
| **FQDN**           | de-savg-sbc1.kore.ai |
| **TCP / UDP Port** | 5060                 |
| **TLS Port**       | 5061                 |

For example: sip:de-savg-sbc1.kore.ai:5060

| **Component**      | SIP Server – 2       |
| ------------------ | -------------------- |
| **IP Address**     | 18.158.223.171       |
| **FQDN**           | de-savg-sbc2.kore.ai |
| **TCP / UDP Port** | 5060                 |
| **TLS Port**       | 5061                 |

For example: sip:de-savg-sbc2.kore.ai:5060

| **Component**  | RTP Server – 1 |
| -------------- | -------------- |
| **IP Address** | 3.70.125.14    |
| **RTP Ports**  | 6000-65535     |

| **Component**  | RTP Server – 2 |
| -------------- | -------------- |
| **IP Address** | 18.158.223.171 |
| **RTP Ports**  | 6000-65535     |

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:

| **Component**  | WebRTC Session Border Controller (SBC)        |
| -------------- | --------------------------------------------- |
| **IP Address** | 3.70.125.14<br>18.158.223.171                 |
| **FQDN**       | de-savg-sbc1.kore.ai,<br>de-savg-sbc2.kore.ai |
| **HTTPS**      | 443                                           |
| **WSS Port**   | 8443                                          |

For example: sip:de-savg-sbc1.kore.ai:443

| **Component**  | WebRTC RTP Servers            |
| -------------- | ----------------------------- |
| **IP Address** | 3.70.125.14<br>18.158.223.171 |
| **RTP Ports**  | 6000-65535                    |

#### Japan (JP)

Enable inward and outward traffic to the following IPs and respective ports:

| **Component**      | SIP Server – 1       |
| ------------------ | -------------------- |
| **IP Address**     | 35.76.183.247        |
| **FQDN**           | jp-savg-sbc1.kore.ai |
| **TCP / UDP Port** | 5060                 |
| **TLS Port**       | 5061                 |

For example: sip:jp-savg-sbc1.kore.ai:5060

| **Component**      | SIP Server – 2       |
| ------------------ | -------------------- |
| **IP Address**     | 54.248.11.38         |
| **FQDN**           | jp-savg-sbc2.kore.ai |
| **TCP / UDP Port** | 5060                 |
| **TLS Port**       | 5061                 |

For example: sip:jp-savg-sbc2.kore.ai:5060

| **Component**  | RTP Server – 1 |
| -------------- | -------------- |
| **IP Address** | 35.76.183.247  |
| **RTP Ports**  | 6000-65535     |

| **Component**  | RTP Server – 2 |
| -------------- | -------------- |
| **IP Address** | 54.248.11.38   |
| **RTP Ports**  | 6000-65535     |

For Agent transfers, enable inward and outward traffic to the following IPs and respective ports:

| **Component**  | WebRTC Session Border Controller (SBC)       |
| -------------- | -------------------------------------------- |
| **IP Address** | 35.76.183.247<br>54.248.11.38                |
| **FQDN**       | jp-savg-sbc1.kore.ai<br>jp-savg-sbc2.kore.ai |
| **HTTPS**      | 443                                          |
| **WSS Port**   | 8443                                         |

For example: sip:jp-savg-sbc2.kore.ai:443

| **Component**  | WebRTC RTP Servers            |
| -------------- | ----------------------------- |
| **IP Address** | 35.76.183.247<br>54.248.11.38 |
| **RTP Ports**  | 6000-65535                    |

## Infrastructure Setup Guide

Use the following steps and checklist to ensure that your company's network is prepared for voice and video.

To assist in preparing your network, we offer a Network Readiness checklist available at the end of this document.

### Site Infrastructure Specifications

#### Network cabling

For optimal connectivity within your company network, use Cat 5e or higher network cables for all system connections, including Edges (routers and routing switches).

Cables usually have their type printed on them. If you are unsure, an electrical contractor can test the type of cabling you have. Most network cables purchased in the last five years are Cat 5e or better.

#### Appliance Power Source

For enhanced resilience, ensure each Edge appliance is plugged into a separate power outlet. Ideally, these outlets should be serviced by different power circuits.

#### Installation Site Conditions

Before installing office equipment, it is essential to verify that your office environment meets the necessary conditions for optimal operation.

### End-User/Client and SIP provider Specifications

#### End-User System Specifications

Refer to the [Kore Cloud requirements](../voice-gateway/minimum-system-requirements-and-supported-browsers.md) for the minimum technical requirements to run the application.

!!! Note

    To ensure successful usage of Kore Cloud, please make sure to configure the necessary ports and services on your company firewall. Complete details can be found in the "Firewall Requirements" section within the above-provided link.

#### End-User Safety Guidelines

To maintain uninterrupted access to Kore Cloud, it is recommended to directly allow Kore Cloud connectivity on your device. This is due to security services, such as antivirus, firewalls, or intrusion protection, installed by some companies on users' computers that might block access to Kore Cloud. Your IT administrator can also allow the connectivity. For a list of the common Kore Cloud ports, protocols, and destinations, please refer to the "Firewall Requirements" section [here](../voice-gateway/minimum-system-requirements-and-supported-browsers.md). 

#### SIP Trunking Requirements

Ensure that the features provided by your SIP trunking provider adhere to the following minimum requirements.  
In addition to selecting a compatible SIP provider, customers are strongly advised to conduct thorough interoperability testing between their specific Edge device and the chosen SIP provider's infrastructure. This testing is essential to identify and resolve any potential compatibility issues, ensuring seamless communication and optimal performance between the customer's Edge device and the SIP provider's network.

* Provide the list of the carrier's source IP addresses to us for SIP and RTP traffic configuration

#### Functionality Specifications

* Out-of-Band DTMF (RFC2833)
* Inbound calls with and without ANI (Automatic Number Identification)
* Outbound calls with ANI (Automatic Number Identification)
* Early Media 
* Hold Support (re-invite to 0.0.0.0)
* Incoming call forwarding
* Always in Audio
* Service unavailable (503 response from carrier)

#### SIP/RTP Traffic Requirements

* The carrier must allow SIP and RTP traffic from your Edge Appliance IP Addresses
* Sequential trunk failover is recommended for multi-edge deployments
* SIP port 5060 (TCP, UDP) and 5061 (TLS) for all inbound/outbound SIP traffic
* Recommended to use the PCMU, PCMA, OPUS Codec for voice traffic inbound and outbound between you and the carrier
* SIP OPTION requests to the primary Edge ONLY

### SIP Provider Assessment Checklist

* Does your service provider maintain Quality of Service (QoS) markings on SIP and/or RTP traffic?
    * Our recommendation: Yes, they should maintain
* What is the maximum call per second (CPS) capacity supported on a trunk by your provider?
* What is the maximum number of concurrent calls (CCP) that your provider supports on a trunk?
* Does your provider support/require SIP authentication?
    * Our recommendation: Yes, it should support
* Does your provider have SIP header requirements for network access or billing?
    * Our recommendation: Yes, they should support SIP headers
* What are the SIP provider’s inbound IP addresses?
* Does your SIP provider require registration for their SIP trunk?
* What is the inbound protocol the SIP provider is using (that is, UDP / TCP / TLS)?
    * Our recommendation: UDP/TLS for the best experience
* Does your SIP provider require a P-Asserted identity?
* Does your SIP provider require outbound digest authentication?
* Does your SIP provider support SIP diversion headers?

## Connecting Your Network, Clients, and Appliances to Kore Cloud

### Internet connectivity

A dependable internet connection is necessary for Kore Cloud. Most internet connectivity issues are related to the "last mile," which is the physical link between your location and your carrier's network. If available, we suggest a "fully diverse" internet connection from your provider. Diversity means that your internet connection has multiple "last mile" paths to connect to various points on your internet service provider's network. Please note that Diversity and Redundancy are different concepts in the carrier world.

#### Network firewalls and security devices

To maintain uninterrupted access to Kore Cloud, please ensure that your network firewalls and security devices permit Kore Cloud connectivity. Company firewalls may occasionally block network traffic between Kore Cloud and your users.

For a list of the common Kore Cloud ports, protocols, and destinations, see the "Firewall Requirements" section [here](../voice-gateway/minimum-system-requirements-and-supported-browsers.md).

#### Wide Area Network (WAN)

##### Private Circuit Connectivity

Many companies take advantage of private connectivity between their company offices. Private connectivity includes MPLS (Multi-Protocol Label Switching) and point-to-point connections. When using private circuit connectivity for voice and video services, the physical connection between your company office and your carrier’s network is a critical component. The industry refers to this connection as the “last mile.”

We suggest that you collaborate with your provider to obtain a “fully diverse” private circuit connection, if available in your area. Having diversity guarantees that your connectivity utilizes multiple “last mile” paths to reach different access points on your provider's network.

To ensure a consistent user experience for voice and video communications over private circuit WAN connections, which typically have lower bandwidth than local office networks, it is recommended to enable Quality of Service (QoS). QoS prioritizes voice and video traffic over other network traffic. Contact your private circuit carrier to configure QoS on your circuits.

#### VPN Connectivity

If your organization utilizes VPNs to connect remote workers, ensure that all necessary Kore Cloud network ports and protocols are allowed on the VPN connections. Kore Cloud supports voice and video services over VPN.

For a list of the common Kore Cloud ports, protocols, and destinations, see the "Firewall Requirements" section [here](../voice-gateway/minimum-system-requirements-and-supported-browsers.md/).

#### Local Area Network (LAN)

Connectivity issues often arise when the speed and duplex of devices connected to your LAN are mismatched. Ensure that your network ports and trunks register the correct speed and duplex settings for each connected device. Most devices on a typical LAN have a speed/duplex of "100/full" or "1000/full".

#### Wireless Local Area Network (WLAN)

For optimal performance of Kore Cloud real-time communications services over WLAN, use 802.11n or superior wireless hardware, and operate your wireless network on the 5 GHz band to minimize signal interference.

To identify areas with weak wireless signals ("dead spots") in your facility, consider using available Wi-Fi surveying tools or hiring a network services company to conduct a professional site survey of your wireless network.

#### Network bandwidth
Ensure consistent bandwidth across your LAN and WAN to support voice calls. The required bandwidth is specified on this [page](../voice-gateway/minimum-system-requirements-and-supported-browsers.md ).

Kore Cloud utilizes OPUS, an adaptive voice codec, for voice traffic to agent WebRTC phones. OPUS automatically adjusts sampling rates in response to varying network conditions. To ensure optimal call quality, we recommend allocating 32–128 Kbps of bi-directional network voice bandwidth per expected/supported concurrent call. Higher bandwidth allocation results in higher sampling rates and improved voice quality. Bandwidth must also be allocated for SIP control traffic. It is recommended that 5% of the high voice bandwidth value be allocated to SIP.

#### Network Quality of Service (QoS)

##### Prioritizing Voice Traffic

Prioritize voice and video traffic on all your network devices to maintain voice quality. This prioritization, also referred to as network Quality of Service (QoS), is crucial for managing network traffic and ensuring optimal performance for real-time communications.

The manufacturer's documentation for your specific network hardware setup will detail the network QoS process, as it varies depending on the vendor and model.

| **Traffic Description** | **Protocol** | **DSCP (Diffserv Code Point) Value** |
| ----------------------- | ------------ | ------------------------------------ |
| Voice traffic           | RTP          | 46 (EF)                              |
| Signaling traffic       | SIP          | 24 (CS3)                             |

**Performance target metrics**

| **Connection**       | **Target Metric**                                                                                                                                                                                  |
| -------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Client connectivity  | Kore Cloud requires round-trip latency of less than 1 second and packet loss of less than 10%.                                                                                                     |
| Edge connectivity    | Kore Cloud requires round-trip latency of less than 300 ms and packet loss of less than 5%.                                                                                                        |
| External phone calls | When the agent is on WAN/Internet, the one-way latency between the agent and Edge should be less than 150 ms, with packet loss less than 1% and end-to-end latency less than 150 ms.               |
| Internal phone calls | When the agent and Edge are on the same LAN, the one-way latency must be less than 75 ms, packet loss less than 1%, and the end-to-end latency between the agent and Edge must be less than 75 ms. |

### Check List

* Does your firewall support the Pinhole feature or not? (Firewalls performing a network address translation (NAT) function, the mapping between the external IP address, port socket, and the internal IP address, port socket is called a pinhole).
    - [ ] Yes
    - [ ] No
* If your firewall has a Pinhole feature, does it have the support of below modules:
    - [ ] NAT hole punching
    - [ ] NAT traversal
    - [ ] TCP hole punching
    - [ ] UDP hole punching
* Will you be able to enable WSS support in your Firewall to establish a WebSocket over an encrypted TLS connection?
    - [ ] Yes
    - [ ] No
* Are you connecting to the internet through the router?
    - [ ] Yes
    - [ ] No
* Are you using any proxy server to connect to the internet?
    - [ ] Yes
    - [ ] No
* If you are using a proxy server, will you be able to remove or skip (bypass) your proxy server from our Kore configuration environment?
    - [ ] Yes
    - [ ] No
* Will you be able to allocate and configure one test number to us?
    - [ ] Yes
    - [ ] No
* Will you allow and bypass traffic for *. [Kore](https://kore.ai/) and *.[twilio.com](https://twilio.com/) domains (HTTPS) on 443, 8443, 3478, and 5349 ports?
    - [ ] Yes
    - [ ] No
* As per the [firewall requirements](../voice-gateway/minimum-system-requirements-and-supported-browsers.md), will you be able to whitelist and allow the traffic to all IP addresses and domains (SBCs, STUN/TURN, etc.)?
    - [ ] Yes
    - [ ] No
* As per the [firewall requirements](../voice-gateway/minimum-system-requirements-and-supported-browsers.md), will you be able to allow all mentioned UDP ports in a bi-directional way?
    - [ ] Yes
    - [ ] No
* Are you using any anti-virus software?
    - [ ] Yes
    - [ ] No
* If you are using any anti-virus software, does it need to follow any federation rules?
    - [ ] Yes
    - [ ] No
* Can you run the latency test using the [AWS latency test](https://aws-latency-test.com/) from your Agent's office premises and share the latency test results with Kore?
    - [ ] Yes
    - [ ] No
* Are you using any internal firewall for each and every agent in their systems, like ZScaler?
    - [ ] Yes
    - [ ] No
* If you are using any internal firewall like ZScaler, will you be able to allow all mentioned UDP ports in a bi-directional way?
    - [ ] Yes
    - [ ] No

## Ports and services for WebRTC

Kore.ai Cloud WebRTC (Agent Desktop) requires specific port and service configurations that must be considered before configuring a firewall in different network scenarios. The following diagrams show how to configure the ports and services for each scenario.

When reviewing the diagrams to identify the one that best matches the WebRTC (Agent Desktop) setup, consider the following questions:

* Is Kore.ai Cloud Voice Edges being used?
* Are agents:

  * Inside the same network or firewall as the Edges?
  * Outside or in a separate network or firewall from the Edges?
  * In both locations (some inside and some outside)?
* Is the firewall configured as Endpoint Dependent (Symmetric) or Endpoint Independent (Asymmetric)?

### Call Flow
<img src="../images/call-flow-diagram.png" alt="Call Flow Diagram" title="Call Flow Diagram" style="border: 1px solid gray; zoom:70%;">

### Agent Desktop Architecture (Client Inside Firewall-Asymmetric NAT)
<img src="../images/agent-desktop-architecture.png" alt="Agent Desktop Architecture-Asymmetric" title="Agent Desktop Architecture-Asymmetric" style="border: 1px solid gray; zoom:70%;">

### Agent Desktop Architecture (Client Inside Firewall-Symmetric NAT)
<img src="../images/agent-desktop-architecture-symmetric.png" alt="Agent Desktop Architecture-Symmetric" title="Agent Desktop Architecture-Symmetric" style="border: 1px solid gray; zoom:70%;">

### Firewall Requirements

* [US Region](../voice-gateway/us-firewall-rules.md)
* [Japan (JP) Region](../voice-gateway/japan-firewall-rules.md)
* [Germany (DE) Region](../voice-gateway/germany-firewall-rules.md)

### User Diagnostics

If connectivity issues, screen freezing, or lag occur in Agent Desktop, perform the following troubleshooting steps: 
 
* First, verify the network connection. This applies whether working in the office or remotely.  
* Ensure the network strength meets Kore’s defined parameters. See [Minimum System Requirements and Supported Browsers](../voice-gateway/minimum-system-requirements-and-supported-browsers.md) for reference.  
* After completing the above steps, run [User Diagnostics](../../console/manage-layout.md#user-diagnostics).

### Checklist

| Sl. No. | Description | Impact | Yes/No |
|---------|-------------|--------|--------|
| 1 | Does your firewall support the Pinhole feature or not? | Firewalls performing a network address translation (NAT) function — the mapping between the external IP address, port socket, and the internal IP address, port socket — is called a pinhole. |  |  |
| 2 | If your firewall has a Pinhole feature, does it have the support of below modules:
||**NAT hole punching** | If No, unable to establish direct connection between two peers in which one or both are behind firewalls or behind routers that use NAT.<br>
<br>|**NAT traversal** | If No, will not allow edges behind a NAT device to communicate with devices outside the NAT network. With NAT traversal, the edges located behind a router can communicate directly with each other without the need for port forwarding or any other manual configurations.<br><br>
<br>|**TCP hole punching**| If No, unable to establish TCP connection between two peers using NAT traversal.<br><br>
<br> |**UDP hole punching**| If No, unable to establish bidirectional UDP connection between two peers using NAT traversal. |  |  |
| 3 | Will you be able to enable WSS support in your Firewall to establish a WebSocket over an encrypted TLS connection?<br><br>|If No, unable to establish a WebSocket over an encrypted TLS connection to transmit the packets (data) in a secure way. |  |  |
| 4 | Are you connecting to the internet through the router?<br><br>|If yes, should open required ports as described in [firewall requirements](../voice-gateway/minimum-system-requirements-and-supported-browsers.md). Otherwise, unable to establish the connection between the peers and traffic will be blocked. |  |  |
| 5 | Are you using any proxy server to connect to the internet?<br><br>|If Yes, won’t be able to do NAT traversal directly with the end user. |  |  |
| 6 | If you are using a proxy server, will you be able to remove or skip (bypass) your proxy server from our "Kore" configuration environment?<br><br>|If yes, NAT traversal will be done directly with the end user and packets (data) will be transmitted smoothly without having any hassles. |  |  |
| 7 | Will you be able to allocate and configure one test number to us?<br><br>|If yes, we will test everything and will be able to deliver without any blockers or issues. This will help us to troubleshoot the issues in the future, if any occurs. |  |  |
| 8 | Will you allow and bypass traffic for *.kore.ai and *.twilio.com domains (HTTPS) on 443, 8443, 3478, and 5349 ports?<br><br>|If not, won’t be able to establish any connection, unable to do the NAT traversal, unable to transmit IP packets (audio, data, etc.) between the peers. |  |  |
| 9 | As per the [firewall requirements](../voice-gateway/minimum-system-requirements-and-supported-browsers.md), will you be able to white list and allow the traffic to all IP addresses and domains (SBCs, STUN/TURN, etc.)?<br><br>|If not, won’t be able to establish any connection, unable to do the NAT traversal, unable to transmit IP packets (audio, data, etc.) between the peers. |  |  |
| 10 | As per the [firewall requirements](../voice-gateway/minimum-system-requirements-and-supported-browsers.md), will you be able to allow all mentioned UDP ports in bi-directional way?<br><br>|If not, unable to transmit data in both directions (one way audio issue occurs). |  |  |
| 11 | Are you using any anti-virus software?<br><br>|If yes, it will block the traffic and should allow the data through the required ports. |  |  |
| 12 | If you are using any anti-virus software, does it need to follow any federation rules?<br><br>|If yes, as per your country's regulations, is it possible to allow traffic as per Kore’s requirement? |  |  |
| 13 | Can you run the latency test using [AWS latency test](https://aws-latency-test.com/) from your Agent's office premises and share the latency test results with “Kore”?<br><br>|Latency of 20 ms (milliseconds) is normal for and up to 150 ms the latency is barely noticeable and hence acceptable. A latency higher than 150 ms diminishes the call quality. Latency levels between 150 ms to 300 ms are within acceptable latency limits. |  |  |
| 14 | Are you using any internal firewall to each and every agent in their systems like ZScaler?<br><br>|If yes, should open required UDP ports as described in [firewall requirements](../voice-gateway/minimum-system-requirements-and-supported-browsers.md). Otherwise, unable to transmit the RTP packets (Audio) between the peers and audio traffic will be blocked. |  |  |
| 15 | If you are using any internal firewall like ZScaler, will you be able to allow all mentioned UDP ports in bi-directional way?<br><br>|If not, unable to transmit the RTP packets (Audio) between the peers and audio traffic will be blocked. |  |  |