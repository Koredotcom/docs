# Settings

This section consists of the settings required for campaigns.

To access campaign settings, go to Contact Center AI > Campaigns > Settings.  
<img src="../images/settings-page.png" alt="Settings Page" title="Settings Page" style="border: 1px solid gray; zoom:80%;">

## Global Settings

Click **Global Settings**.  
<img src="../images/global-settings.png" alt="Arrow Button" title="Arrow Button" style="border: 1px solid gray; zoom:80%;">

Supervisors can configure the maximum count of concurrent calls for the campaigns. By default, the count is set to 10 and the maximum count that can be set is 25. This applies only to Agentless Campaigns. Progressive and Preview Campaigns are unaffected, as they depend solely on the number of available agents.

Total messages per minute can be set for the campaigns. By default, the count is set to 1.  
<img src="../images/total-messages-per-min.png" alt="Save Settings" title="Save Settings" style="border: 1px solid gray; zoom:80%;">

## Proactive CoolDown Time

The Cooldown Time parameter controls how frequently proactive widgets appear to a visitor during a session, preventing multiple campaigns from triggering in rapid succession. This parameter applies per app and helps create a controlled and user-friendly experience.

Once a visitor sees a campaign widget, no other campaign widget displays to them for the duration of the configured cooldown period, even if the visitor continues to meet the criteria for other campaigns. This restriction applies per visitor session.

Despite the cooldown, the system continues to track and update metrics such as Page Visit Count. Campaign rules do not retroactively trigger after cooldown ends; only rules that are met after the cooldown completes are eligible for display.

Only one proactive campaign widget displays at any given time. A campaign template does not display in the following scenarios:  

* Another campaign template is already active in the browser window. Even if other templates meet the conditions, they are skipped.
* A configured cooldown period is in effect. New campaign templates are skipped until the cooldown ends.
* The user is already in an active chat session. Campaign templates do not render, regardless of the browser state.
* If the chat window is open, the system skips rendering campaign templates.  
    <img src="../images/chat-window.png" alt="Chat" title="Chat" style="border: 1px solid gray; zoom:60%;">

Steps to configure the cooldown time:

1. Click **Proactive CoolDown Time**.  
    <img src="../images/proactive-cooldown-time.png" alt="Proactive Cooldown Time" title="Proactive Cooldown Time" style="border: 1px solid gray; zoom:80%;">

2. Enter a value between 0 and 30,000 for the Cooldown Time (default: 0), and click **Save**.  
    <img src="../images/cooldown-time.png" alt="Save" title="Save" style="border: 1px solid gray; zoom:80%;">

    This setting applies uniformly across all proactive campaigns within the application.