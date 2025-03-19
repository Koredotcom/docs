# Minimum System Requirements and Supported Browsers

## System Requirements

### Minimum System Requirements

* x64-based processor with four CPU cores (Quad-core processor).
* 64-bit operating system (Windows 11 or higher, MacOS Monterey or higher).
* At least 8 GB of RAM (16 GB RAM is recommended).
* 50 GB of free hard disk space.
* Network Interface Card (NIC) with 1 Gbps.

The software may also work on any desktop operating system that meets the other system requirements and can install a supported web browser, such as Linux and Chrome OS. Still, it has not been tested and certified for all such combinations.

## Additional Requirements

* Network Bandwidth: 5 Megabits per second (Mbps) for voice, video calls, and co-browse sessions.
* Minimum screen resolution: 1024 x 768 at 20 frames per second (FPS).
* We recommend that each computer includes antimalware protection.

    !!! Note
    
        Some antivirus software runs real-time inspection on HTTPS and audio packets, and may lower the audio quality of WebRTC.

## Web Browser Requirements

### Browser Matrix

The following web browsers are supported for use with XO Contact Center Agent and Supervisor Console.

<table>
  <tr>
   <td>Browser
   </td>
   <td>Core features
   </td>
   <td>Video chat
   </td>
   <td>Screen sharing
   </td>
   <td>WebRTC Calling
   </td>
  </tr>
  <tr>
   <td>Chrome
   </td>
   <td>Supported
   </td>
   <td>Supported
   </td>
   <td>Supported
   </td>
   <td>Supported
   </td>
  </tr>
  <tr>
   <td>Edge
   </td>
   <td>Supported  
   </td>
   <td>Supported
   </td>
   <td>Supported
   </td>
   <td>Supported
   </td>
  </tr>
  <tr>
   <td>Safari
   </td>
   <td>Supported
   </td>
   <td>Supported
   </td>
   <td>Supported
   </td>
   <td>Supported
   </td>
  </tr>
</table>

### Full Support

* Chrome — Requires a current major release or one previous version.
* Microsoft Edge Chromium — Requires current release.

Version recommendations are made based on the outcomes of Kore’s internal testing. The software may work without issues on older browser versions as well.  
Still, the customer will be required to update browser versions if an issue is identified due to browser version mismatches.

!!! Note

    * The latest version of Chrome, Safari, or Edge.
    * JavaScript and cookies must be enabled.
    * Grant permissions and allow access to the camera and microphone when prompted by the browser.
    * Turn off the pop-up blocker, and allow a separate WebRTC window to open.
    * Grant permissions and allow users to share their screen, a specific window, or the entire desktop when prompted.
    * Allow Transport Layer Security (TLS) v.1.2 protocol (Kore.AI doesn’t support TLS versions 1.0, 1.1, and 1.3).
    * Do not minimize the active call tab or window. If you minimize the active window, then the client stops working properly.  
    For example, you may experience a delay when you answer a call or are unable to answer a call. Restore the minimized window for the client to function properly.
    * Chrome updates automatically. Versions of Chrome are only an issue if the customer’s IT department restricts automatic updates.
    * Running Microsoft Edge in IE compatibility mode is not supported.

### Disable Your Browser’s Sleep Mode Setting

When using the Contact Center AI console in a browser with multiple tabs open, you may experience connection issues when the console isn’t the active tab. To prevent this from happening, you might want to consider disabling your browser’s sleep mode setting. For more information, see below.

#### Microsoft Edge

In Microsoft Edge, you can disable sleep mode for specific sites.

1. Start Microsoft Edge.
2. Click **Settings and more…**.
3. Click **Settings**. The Settings tab appears.
4. Click **System and performance**.
5. Under **Never put these sites to sleep**, click Add. The **Add** a site dialog appears.
6. Type your region domain in the **Site** box using this format **[*].domain**. For example, **[*.]kore.ai**.
7. Click **Add**.

#### Google Chrome

In Google Chrome, you can disable sleep mode for specific sites.

1. Start Google Chrome.
2. Click **Customize and Control Google Chrome…**.
3. Click **Settings**. The Settings tab appears.
4. Click **Performance**.
5. On the Memory tile, locate the **Always keep these sites active** setting and click **Add**. The Add Sites dialog appears.
6. Click **Add Sites manually**.
7. Type your region domain in the Site box. For example, **platform.kore.ai**.
8. Click **Add**.

## Firewall Requirements

Allow traffic and whitelist the ports listed below in their respective firewalls based on the Session Border Controller (SBC) they connect to.

=== "REGION – USA"

    | SBC IP Address                        | Firewall Rules                                                                 |
    |---------------------------------------|--------------------------------------------------------------------------------|
    | 3.224.189.218<br>(or)<br>35.174.41.205 | [Learn more](../kore.ai-voice-gateway/us-firewall-rules.md) |

=== "REGION – Japan (JP)"

    | SBC IP Address                        | Firewall Rules                                                                 |  
    |---------------------------------------|--------------------------------------------------------------------------------|
    | 35.76.183.247<br>(or)<br>54.248.11.38 | [Learn more](../kore.ai-voice-gateway/japan-firewall-rules.md) |

=== "Region - Germany (DE)"

    | SBC IP Address                        | Firewall Rules                                                                 |
    |---------------------------------------|--------------------------------------------------------------------------------|
    | 3.70.125.14<br>(or)<br>18.158.223.171 | [Learn more](../kore.ai-voice-gateway/germany-firewall-rules.md) |