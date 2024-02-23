# How do I include an Image in an Outbound Twilio SMS (MMS)?

For the Twilio SMS channel, you can use the **<code>MediaUrl</code></strong> parameter in the response to deliver an image. Let’s see an example of how to send an outbound message that includes an image and a text message.

**Sample API cURL Script:**

```
curl -XPOST https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Messages.json \
--data-urlencode "To=+13105555555" \
--data-urlencode "From=+12125551234" \
--data-urlencode "MediaUrl=https://demo.twilio.com/owl.png" \
--data-urlencode "Body=Hello, here is how it looks!" \
-u 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX:your_auth_token'
```

**Sample Python Code:**

```
from twilio.rest import Client
# Your Twilio Account SID and Auth Token
account_sid = 'your_account_sid'
auth_token = 'your_auth_token'
client = Client(account_sid, auth_token)
# Sending an MMS
message = client.messages.create(
    to="destination_phone_number", # Replace with the recipient's phone number
    from_="your_twilio_phone_number",  # Replace with your Twilio phone number
    body="Hello, here is how it looks!",  # Optional message text
    media_url=["https://example.com/path/to/image.jpg"]  # URL of the media to # send as MMS
)
print(message.sid)
```

**Related Links**

* <a href="../channels/add-twilio-sms-channel.md" target="_blank">Adding the Twilio SMS Channel</a>
* [ Send SMS and MMS Messages (Twilio Doc)](https://support.twilio.com/hc/en-us/articles/223133907-Simple-Example-for-Sending-Programmable-SMS-Text-or-Picture-Messages)
* [Simple Example for Sending Programmable SMS Text or Picture Messages (Twilio Doc)](https://support.twilio.com/hc/en-us/articles/223133907-Simple-Example-for-Sending-Programmable-SMS-Text-or-Picture-Messages)