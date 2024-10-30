# Reject Calls With a Delayed First Response

The Reject calls with a delayed first response setting allows customers to specify when a call should be considered "connected." The call is connected if enabled when the platform successfully sends its first message (first volley). This configuration ensures that users do not experience dead air, providing a more seamless interaction experience with the bot.

When should a call connection event be sent?

While transferring calls from an existing telephony provider to Kore Voice Gateway, a connection event is sent when calls reach Kore VG; in rare circumstances, there may be a delay in response being generated. This setting can be used to reject calls and send them back to the source if an initial message is not generated within 10 seconds.

Administrators/Supervisors can enable this feature by going to **Contact Center AI** > **CONFIGURATIONS** > **Advanced Settings** > **Reject calls with a delayed first response**.  
<img src="../images/reject-calls-with-delayed-response.png" alt="Reject Calls With a Delayed First Response" title="Reject Calls With a Delayed First Response" style="border: 1px solid gray; zoom:80%;">