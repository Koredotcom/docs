# Troubleshooting

Let's troubleshoot a few common Voice Gateway related issues reported by users.

## Bot Publish is Failing

When updating settings such as adding, updating, deleting phone numbers, or modifying the Language & Speech section, if the bot publishing fails:  
<img src="../images/bot-publishing-failed.png" alt="Bot Publishing Failed" title="Bot Publishing Failed" style="border: 1px solid gray; zoom:40%;">

Before the bot publishing fails, open the Inspect tab in your browser. In the Network tab, search for the dockstatus API. You will see multiple APIs with the name dockstatus. When the bot publishing failure message appears, open the most recent dockstatus API.  
<img src="../images/inspect-element-page.png" alt="Inspect" title="Inspect" style="border: 1px solid gray; zoom:40%;">

In the response, search for SIPTRUNK as shown in the figure. If the SIPTRUNK status is displayed as "status": "FAILURE", you can report the issue to the Kore Support team.  
<img src="../images/dockstatus-api.jpg" alt="Dockstatus" title="Dockstatus" style="border: 1px solid gray; zoom:80%;">

## Agent Transfer is Not Working

If a request is not being assigned to an available agent and the bot is responding with "No agents are available right now," even though agents are online, follow these steps:

1. **Verify Voice Enablement**: First, ensure the current Administrator or Agent has "**Voice Enabled**" in the User Settings.
2. **Access User Settings**: Open the **Users** section as shown in the image, then navigate to the settings of the currently logged-in user.  
   <img src="../images/users-page.png" alt="Users Page" title="Users Page" style="border: 1px solid gray; zoom:80%;">

    Check if **Voice Experience** is enabled for the corresponding bot language. If it is not enabled, turn on the "Enable Voice Settings" toggle and check the language settings to ensure the user is available for voice support in the selected language.  
      <img src="../images/voice-experience.png" alt="Enable Voice Settings" title="Enable Voice Settings" style="border: 1px solid gray; zoom:80%;">

    In **Outgoing Voice Agent Transfer** settings, ensure the transfer type is set to **SmartAssist** (3rd block). This will ensure the request is assigned to the SmartAssist agent desktop.  
      <img src="../images/outgoing-voice-agent-transfer.png" alt="Outgoing Voice Agent Transfer" title="Outgoing Voice Agent Transfer" style="border: 1px solid gray; zoom:80%;">

    If the transfer type is set to **Call Number** or **SIP Transfer**, the call will be routed to a third party instead of the SmartAssist agent console.

    In case of issues, check the **WebSocket Connection** and **Registration** in the console (Agent Desktop) to ensure everything is properly connected and functioning.  
      <img src="../images/network-connection.png" alt="Websocket Connection" title="Websocket Connection" style="border: 1px solid gray; zoom:80%;">

    In the WebSocket (WS), check if the URL **sbc1-korevg-np.kore.ai** (or the environment-specific URL) is used. Verify that both agent and Kore VG are connected.

    Check if the **REGISTER** request is responding with a **200 OK** status. If the 200 OK response is not received, it indicates an issue with Kore VG. You can report this to the Kore Support team.