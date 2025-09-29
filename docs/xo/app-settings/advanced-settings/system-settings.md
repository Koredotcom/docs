# System Settings

## Call Recording Control

By default, Contact Center AI records all voice interactions. Administrators can disable call recording for all voice interactions. 

Steps to disable Call Recording Control:

1. Go to Automation AI > App Settings > Advanced Settings > System Settings > Call Recording Control.  
<img src="../images/call-recording-control-disabled.png" alt="Call Recording Control" title="Call Recording Control" style="border: 1px solid gray; zoom:70%;">

    Turn off the toggle to disable call recording for all voice interactions.
    <img src="../images/call-recording-control.png" alt="Call Recording Control Disabled" title="Call Recording Control Disabled" style="border: 1px solid gray; zoom:70%;">

## Answer Call on First Bot/AI Agent Response

The feature plays a dial tone to the caller if there is a delay before the AI Agent delivers its first response on inbound calls. This improves the caller experience by indicating that the call is still connected, preventing confusion or the impression of a dropped call. Administrators can enable or disable this behavior using a configuration flag.

Steps to enable Answer Call on First Bot/AI Agent Response:

1. Navigate to Automation AI > App Settings > Advanced Settings > System Settings > Answer Call on First Bot Response.  
    <img src="../images/answer-call.png" alt="Answer Call on AI Agent Response" title="Answer Call on AI Agent Response" style="border: 1px solid gray; zoom:70%;">

2. Turn on the toggle to enable the functionality.  
    <img src="../images/answer-call-bot-response.png" alt="Answer Call Enabled" title="Answer Call Enabled" style="border: 1px solid gray; zoom:70%;">

    When calls transfer from an existing telephony provider to Kore, a connection event triggers once the call connects and the bot begins responding. In rare cases, the AI Agent’s response may be delayed due to processing or latency. This setting sends the connection event only when the AI Agent’s first response plays and plays a dial tone in the meantime, keeping callers engaged.