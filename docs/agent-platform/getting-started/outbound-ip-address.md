# Agent Platform Outbound IP Addresses

The Platform makes outbound requests to a fixed set of IP addresses. If your systems or third-party services enforce IP allowlisting, you must add these IPs to your firewall or network's allowlist. The allowlisting lets traffic originating from the Agent Platform to be permitted by your network or external service endpoints.

The Platform sends requests to a fixed set of IP addresses. If your systems use IP restrictions, then add the following IPs to your allowlist to permit Platform traffic.

| Region  | IPs                                                                                   |
|---------|---------------------------------------------------------------------------------------|
| USA     | 54.225.127.87, 44.216.129.184, 34.201.194.187, Lambda IPs for code build: 52.7.57.24. |
| Germany | 3.75.73.144, 18.198.171.44, 63.176.211.25, Lambda IPs for code build: 52.57.41.155.   |
| Japan   | 18.180.133.211, Lambda IP for code build: 18.179.141.6.                               |