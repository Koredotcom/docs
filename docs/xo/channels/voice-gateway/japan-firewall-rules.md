# Japan (JP) Firewall Rules

## Kore Network

| Component                              | Protocol | Source IP | Source Port † | Allowed Destinations                          | Destination Port |
|----------------------------------------|----------|-----------|---------------|-----------------------------------------------|-----------------|
| Session Border Controller (SBC) <br>(Automation, HA SBC) | TCP/UDP  | ANY       | ANY           | 18.177.19.211                                  | 5060            |
|                                        | TCP      | ANY       | ANY           | audiocodes-jp-sbc-prod.kore.ai                | 5060            |
|                                        | TLS      | ANY       | ANY           | 18.177.19.211                                  | 5061            |
|                                        | TLS      | ANY       | ANY           | audiocodes-jp-sbc-prod.kore.ai                | 5061            |
|                                        | TCP      | ANY       | ANY           | 18.177.19.211                                  | 10081           |
|                                        | UDP      | ANY       | ANY           | 18.177.19.211                                  | 6000-65535      |
| Session Border Controller (SBC) <br>(Agent SBC)       | TCP/UDP  | ANY       | ANY           | 18.182.77.145                                  | 5060            |
|                                        | TCP      | ANY       | ANY           | audiocodes-jp-webrtc-prod.kore.ai             | 5060            |
|                                        | TLS      | ANY       | ANY           | 18.182.77.145                                  | 5061            |
|                                        | TLS      | ANY       | ANY           | audiocodes-jp-webrtc-prod.kore.ai             | 5061            |
|                                        | UDP      | ANY       | ANY           | 18.182.77.145                                  | 6000-65535      |
|                                        | TCP      | ANY       | ANY           | 18.182.77.145                                  | 10081           |

## Voice Gateway

| Component                            | Protocol | Source IP | Source Port | Destination IP / FQDN | Destination Port Range |
|--------------------------------------|----------|-----------|-------------|------------------------|------------------------|
| Session Border Controller (SBC) <br>(Agent SBC) |          |           |             |                        |                        |
| ↳                                    | TCP/UDP  | ANY       | ANY         | 35.76.183.247          | 5060                   |
| ↳                                    | TLS      | ANY       | ANY         | 35.76.183.247          | 5061                   |
| ↳                                    | TCP      | ANY       | ANY         | 35.76.183.247          | 8443                   |
| ↳                                    | TCP/UDP  | ANY       | ANY         | 54.248.11.38           | 5060                   |
| ↳                                    | TLS      | ANY       | ANY         | 54.248.11.38           | 5061                   |
| ↳                                    | TLS      | ANY       | ANY         | 54.248.11.38           | 8443                   |
| ↳                                    | UDP      | ANY       | ANY         | 35.76.183.247          | 6000-65535             |
| ↳                                    | UDP      | ANY       | ANY         | 54.248.11.38           | 6000-65535             |

## Media Twilio Gateway

| Secure Media (ICE/STUN/SRTP) Edge Locations | Protocol | Source IP | Source Port † | Destination IP Ranges | Destination Port Range |
|---------------------------------------------|----------|-----------|---------------|------------------------|------------------------|
| Stun server                                 | UDP      | ANY       | ANY           | 168.86.128.0/18        | 6000-65535             |

## Media Twilio Gateway

| Secure Media (ICE/STUN/SRTP) Edge Locations | Protocol | Source IP | Source Port † | Destination IP Ranges | Destination Port Range |
|---------------------------------------------|----------|-----------|---------------|------------------------|------------------------|
| ↳ Stun server                               | UDP      | ANY       | ANY           | 168.86.128.0/18        | 6000-65535             |

## **FQDN**

| Component       | Protocol          | Source IP | Source Port † | Destination IP Ranges              | Destination Port Range |
|-----------------|-------------------|-----------|---------------|------------------------------------|------------------------|
| Kore Domain     | TCP               | ANY       | ANY           | *.kore.ai                          | 443                    |
| Twilio Domain   | TCP               | ANY       | ANY           | *.twilio.com                       | 443                    |
| Twilio STUN     |                   |           |               |                                    |                        |
| ↳               | TCP (TURN TLS)    | ANY       | ANY           | 34.203.254.0 – 34.203.254.255      | 443/5349               |
| ↳               | TCP (TURN TLS)    | ANY       | ANY           | 54.172.60.0 – 54.172.61.255        | 443/5349               |
| ↳               | TCP (TURN TLS)    | ANY       | ANY           | 34.203.250.0 – 34.203.251.255      | 443/5349               |
| ↳               | TCP (TURN TLS)    | ANY       | ANY           | 3.235.111.128 – 3.235.111.255      | 443/5349               |
| ↳               | TCP (TURN TLS)    | ANY       | ANY           | 34.216.110.128 – 34.216.110.159    | 443/5349               |
| ↳               | TCP (TURN TLS)    | ANY       | ANY           | 54.244.51.0 – 54.244.51.255        | 443/5349               |
| ↳               | TCP (TURN TLS)    | ANY       | ANY           | 44.234.69.0 – 44.234.69.127        | 443/5349               |
| ↳               | TCP, UDP (TURN)   | ANY       | ANY           | 34.203.254.0 – 34.203.254.255      | 3478                   |
| ↳               | TCP, UDP (TURN)   | ANY       | ANY           | 54.172.60.0 – 54.172.61.255        | 3478                   |
| ↳               | TCP, UDP (TURN)   | ANY       | ANY           | 34.203.250.0 – 34.203.251.255      | 3478                   |
| ↳               | TCP, UDP (TURN)   | ANY       | ANY           | 3.235.111.128 – 3.235.111.255      | 3478                   |
| ↳               | TCP, UDP (TURN)   | ANY       | ANY           | 34.216.110.128 – 34.216.110.159    | 3478                   |
| ↳               | TCP, UDP (TURN)   | ANY       | ANY           | 54.244.51.0 – 54.244.51.255        | 3478                   |
| ↳               | TCP, UDP (TURN)   | ANY       | ANY           | 44.234.69.0 – 44.234.69.127        | 3478                   |