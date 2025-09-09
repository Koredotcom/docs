# Germany (DE) Firewall Rules

## LAPTOP

| Secure Media (ICE/STUN/SRTP) Edge Locations | Protocol | Source IP | Source Port † | Destination IP Ranges | Destination Port Range |
|---------------------------------------------|----------|-----------|---------------|------------------------|------------------------|
| turn IP                                     | UDP      | ANY       | ANY           | 168.86.128.0/18        | 6000-65535             |

| Component             | Protocol | Source IP | Source Port | Destination IP / FQDN                | Destination Port Range |
|-----------------------|----------|-----------|-------------|---------------------------------------|------------------------|
| Voice Gateway SBC     |          |           |             |                                       |                        |
| ↳                     | TCP      | ANY       | ANY         | 3.70.125.14 (de-savg-sbc1.kore.ai)    | 8443                   |
| ↳                     | TCP      | ANY       | ANY         | 18.158.223.171 (de-savg-sbc2.kore.ai) | 8443                   |
| ↳                     | UDP      | ANY       | ANY         | 3.70.125.14                           | 6000-65535             |
| ↳                     | UDP      | ANY       | ANY         | 18.158.223.171                        | 6000-65535             |
| Voice Gateway Web URL | TCP      | ANY       | ANY         | *.kore.ai                             | 443                    |
| Twilio Stun           | TCP      | ANY       | ANY         | *.twilio.com                          | 443                    |

## Voice Gateway SBC

| Component                            | Protocol | Source IP | Source Port | Destination IP / FQDN                | Destination Port Range |
|--------------------------------------|----------|-----------|-------------|---------------------------------------|------------------------|
| Session Border Controller (SBC) <br>(Agent SBC) | TCP/UDP  | ANY       | ANY         | 3.70.125.14 (de-savg-sbc1.kore.ai)    | 5060                   |
|                                      | TLS      | ANY       | ANY         | 3.70.125.14 (de-savg-sbc2.kore.ai)    | 5061                   |
|                                      |          |           |             |                                       |                        |
|                                      | TCP/UDP  | ANY       | ANY         | 18.158.223.171                        | 5060                   |
|                                      | TLS      | ANY       | ANY         | 18.158.223.171                        | 5061                   |
|                                      |          |           |             |                                       |                        |
|                                      | UDP      | ANY       | ANY         | 3.70.125.14                           | 6000-65535             |
|                                      | UDP      | ANY       | ANY         | 18.158.223.171                        | 6000-65535             |