# User Prompts

After creating an Entity, Confirmation, or Message node in the Dialog Builder, Kore.ai lets you do the following:

* Modify the default message or user prompt displayed to the end-user.
* Add new prompts or messages.
* Add channel-specific prompts or messages.


## Prompt Types

Dialog Tasks support two types of user prompts:

* **Standard**: The prompt defined when adding a node in Dialog Builder is the standard or default prompt. When multiple standard prompts are defined for a node, the Platform chooses a random one to display to the end-user.
* **Channel-Specific**: Optionally, define user prompts for specific channels such as email, SMS, Twitter, and more. Different widgets can be used based on channels such as a slider for numbers, date and time picker, and range selectors.


## Prompt Editor

The prompt editor has three tabs to offer the following features:



* **Simple**: Basic editor controls and HTML to define and format the user prompt. Enter text, and then format it using buttons for bold, italics, header styles, hyperlinks, ordered and unordered lists, and inserting lines.
* **Advanced**: Advanced JavaScript editor to define, format, and render the user prompt.
* **Preview**: View a sample of the rendered output message with markup as displayed to the end-user.

Below is the JavaScript message from the _Book Flights_ VA that presents the response from a weather API to the users in a custom format:



<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image1.png "image_tooltip")


 

In the case of **Error Prompts**, if you have enabled the _Present Prompts_ in the **Order of Retries** toggle, the handlebar icon will be visible before each error prompt message. You can use this to re-order the messages so that it is displayed in that sequence.


## Configure the User Prompt

You can add or edit the prompts or VA messages from the **Component Properties** tab of an Entity, Confirmation, or Message node.
In the case of Entity and Confirmation nodes, you refer to Prompts whereas, for the Message node, they are referred to as Responses.



1. On the dialog task builder, click the **+** icon next to the respective node for which you want to configure the prompts or responses.
2. Select **Confirmation (or Entity or Message) > New Confirmation (or Entity or Message)** Node.
3. The **Confirmation (or Entity or Message)** window is displayed with the **Components Properties** tab selected by default.
4. Under the **User Prompts** (or VA Responses) section, click **Manage**.
**Note**: If you want to make text edits to the default sample message, modify the message directly in the text box and press **Enter** without clicking **Manage**.

    <p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image2.png "image_tooltip")

5. Do one of the following:
    1. To edit the default sample message by adding context object variables or javascript code, click the sample message. The Message editor opens.
    2. To add a new prompt message, click **Add Prompt Message/Manage Prompts**. The Message editor opens.

6. In the **Channel** drop-down list, **All Channels** is the default value. To create a channel-specific message, select the channel from the list.
7. On the Message Editor, the **Plain Text** tab is the default selection. If you want to compose a Javascript message, click the **Advanced** tab.

    <p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image3.png "image_tooltip")

    !!! Note

        You can use stored context variables with {{variable brackets}}. For example, ‘Hello {{context.session.UserContext.firstName}}. How can I help you?’

8. Compose the message and click **Save**.

To add any more VA responses, repeat from step 2b.


## Plain Text Prompts

Use the **Plain Text** tab in the editor to compose the user prompts using basic editor controls and HTML. You can enter text, and then format the text using the formatting buttons for bold, italics, header styles, hyperlinks, ordered and unordered lists, and inserting a line.

The plain text tab supports the following markups:


<table border="1">
  <tr>
   <td><strong>MARKDOWN</strong>
   </td>
   <td><strong>OUTPUT</strong>
   </td>
  </tr>
  <tr>
   <td>#h1
   </td>
   <td>Heading One
   </td>
  </tr>
  <tr>
   <td>#h2
   </td>
   <td>Heading Two
   </td>
  </tr>
  <tr>
   <td>#h3
   </td>
   <td>Heading Three
   </td>
  </tr>
  <tr>
   <td>#h4
   </td>
   <td>Heading Four
   </td>
  </tr>
  <tr>
   <td>#h5
   </td>
   <td>Heading Five
   </td>
  </tr>
  <tr>
   <td>#h6
   </td>
   <td>Heading Six
   </td>
  </tr>
  <tr>
   <td>“`Hello“`
   </td>
   <td> 

<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image4.png" width="" alt="alt_text" title="image_tooltip">

   </td>
  </tr>
  <tr>
   <td>*Bold*
   </td>
   <td><strong>Bold</strong>
   </td>
  </tr>
  <tr>
   <td>~Italic~
   </td>
   <td><em>Italic</em>
   </td>
  </tr>
  <tr>
   <td>[Link](http://www.google.com)
   </td>
   <td><a href="http://www.google.com/">Link</a>
   </td>
  </tr>
  <tr>
   <td>![Image](https://kbob.github.io/images/sample-4.jpg)
   </td>
   <td> 

<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.jpg). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image5.jpg" width="" alt="alt_text" title="image_tooltip">

   </td>
  </tr>
  <tr>
   <td>Order
<br>
1. This is one
<br>
2. This is two
   </td>
   <td>Order
<ol>

<li>This is one

<li>This is two
</li>
</ol>
   </td>
  </tr>
  <tr>
   <td>Bullet
<br>
* This is one
<br>
* This is two
   </td>
   <td>Bullet
<ul>

<li>This is one

<li>This is two
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>This is
<br>
>>indented
   </td>
   <td> 

<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.jpg). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


<img src="images/image6.jpg" width="" alt="alt_text" title="image_tooltip">

   </td>
  </tr>
  <tr>
   <td>This is line ___
   </td>
   <td>This is line ___
   </td>
  </tr>
  <tr>
   <td>This is &lt;br> new line
   </td>
   <td>This is
<br>
new line
   </td>
  </tr>
</table>


Default formatting of user prompts may not be supported on all channels.


## JavaScript Prompts or Responses

On the **Advanced** tab of the editor, you can add custom code to handle the user prompt message using system and session variables. The following is a sample code for displaying the weather forecast for a location:


```
var loc=context.weatherapi.response.body.query.results.channel.item.condition.text.toLowerCase();
print("Here are the details:\n");
if(loc.indexOf("clear")>=0)
{
print('Its clear outside.');
}
 else if(loc.indexOf("sunny")>=0)
{
    print("Its sunny outside");
}
else if(loc.indexOf("cloud")>=0)
{
    print("Its very cloudy day");
}
else if (loc.indexOf('snow')>=0)
{
    print('Its snowy day');
}
else if(loc.indexOf('rain')>=0)
{
print('Yes, it looks like rainy day.');
}
else if(loc.indexOf('breeze')>=0)
{
    print("It's very breezy out there.");
}
else if(loc.indexOf('wind')>=0)
{
     print("It's very windy out there.");
}
else if(loc.indexOf('shower')>=0)
{
    print("It showering outside.");
}
print("Weather condition: " + context.weather +"\n");
print("Updated at: " + context.lastupdate+"\n");
print("Temperature: " + context.temp+"\n");
print("Wind: " + context.wind+"\n");
print("Pressure: " + context.pressure+"\n");
print("Visibility: " + context.humidity+"\n");
print("Humidity: " + context.visibility+"\n");
```


For more information, see [Using Session and Context Variables in Tasks](../../using-session-and-context-variables){:target="_blank"}.


### Customize JavaScript Responses

JavaScript will not have any list of templates displayed (see the following screenshot), because one template/JSON may not work for ‘All’ channels.

<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image7.png "image_tooltip")


**Key Points**

* If JavaScript template is used for an ‘_All channel_’ response, the template will be shown as is in JSON format and may not render correctly on the channel. You need to choose a channel-specific template for rendering a specific template for your channel.
* If any channel-specific override is present, the platform will use that over the _‘All channel’_ response while responding on that specific channel. For example, if you have a specific message or template for MS Teams, the bot prefers that specific template while responding to a user over the MS Teams channel instead of the ‘All channel’ response.
* You can have more than one response configured for a channel. The bot randomly chooses if more than one response is configured for any given channel. This holds true for all-channel responses too if no other channel-specific responses are configured.

If your bot has multiple channels, most probably each channel has its own template.

For a few channel options in the **Channel** drop-down, you can see a list of templates displayed for **JavaScript** response. For example, select the **Web/Mobile Client** channel and choose any template from the **Channel Templates** list for your response as illustrated below.



<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.png "image_tooltip")

For more information on templates, see [Widget SDK – Message Formatting and Templates](https://developer.kore.ai/docs/bots/sdks/widget-sdk-message-formatting-and-templates/){:target="_blank"}.

The same message configuration rules and principles apply while configuring any entity prompt or KG responses too.

!!! Note

    The channel template options are different for each channel. The template definitions provided in the platform are only for reference purposes. Please refer to the documentation of the channel provider to obtain the latest template definitions.


## Preview the Prompt or Response

On the **Preview** tab, you can view a sample of the rendered output message that is displayed to the end-user with markup. To render the output for the code involving context variables, define them to use the **Key** and **Value** boxes in the tab to render a valid sample output for preview.


## Channel-Specific User Prompts

By default, the Dialog Tasks configures the standard user prompts for all channels. However, you can define a specific response for one or more channels to display to the end-user in that channel instead of the **Default** response.
To define a channel-specific response, select a channel, for example, **Kore.ai**, and then define the user prompt on the **Advanced** tab as needed. Only one response can be defined for each channel.

!!! Note

    Use the following keys to return default values for:

    * response.message – Returns the default message as a string.
    * response.message.choices – Returns the options choice or confirmation message types as an array.

**Slack Channel Override Example**

```
var message = {};
var attachments = [];
var attachment = {
    'text': "Exception occurred during API execution",
    'color': '#FFCC00',
    'attachment_type': 'default'
};
attachments.push(attachment);
message.attachments = attachments;
print(JSON.stringify(message));
```


**FaceBook Channel Override Example**

```
var message = {
    text: response.message
};
var buttons = [];
for (var i = 0; i < response.choices.length; i++) {
    var choiceItem = response.choices[i];
    if (choiceItem.length > 20) {
        choiceItem = choiceItem.substring(
            0, 18) + '..';
    }
    var element = {
        content_type: 'text',
        title: choiceItem,
        payload: choiceItem
    };
    buttons.push(element);
}
message.quick_replies = buttons;
print(JSON.stringify(message));
```


**Email Channel Override Example**

```
var message = {};
var text = response.message + ' <br> ';
for (var i = 0; i < response.choices.length; i++) {
    text = text.concat(
        '<u> + response.choices[i] + ' <
        /u> <br>');
    }
    message.text = text;
print(JSON.stringify(message));
```

**SMS Channel Override Example**

```
var message = {};
    var indexArray = ['a', 'b', 'c',
        'd', 'e',
        'f', 'g', 'h', 'i', 'j',
        'k', 'l', 'm', 'n', 'o',
        'p', 'q', 'r', 's', 't',
        'u', 'v', 'w', 'x', 'y',
        'z'
    ];
    var text = response.message + '\\n';
    for (var i = 0; i < response.choices
        .length; i++) {
        text = text.concat(indexArray[i] +
            ') ' + response.choices[
                i] + '\\n');
    }
    message.text = text;
print(JSON.stringify(message));
```