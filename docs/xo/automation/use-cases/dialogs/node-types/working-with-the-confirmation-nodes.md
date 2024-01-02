# Confirmation Nodes

The **Confirmation Node** allows you to prompt the user for a _Yes_ or _No_ answer.  It helps when you want to verify information or allow the user to make a choice.

For example, in the _Book Flight Bot,_ you can use a confirmation node to prompt the user to respond if they would like to know the weather forecast at the destination.

The confirmation node’s conditional transitions go beyond the _If-Else_ expressions. The transition depends on user reply: assertion (yes) or negation (no). The _Else_ condition comes into play if their answer isn’t both.


## Add the Node

Setting up a confirmation node in a dialog task involves the following steps:

1. Open the dialog task to which you want to add the Confirmation node.
2. Add a Confirmation node in the designated place. For steps related to adding nodes, [Learn more](../../using-the-dialog-builder-tool/#add-nodes){:target="_blank"}.
3. By default, the Confirmation window is displayed in the **Component Properties** tab.
    <p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image1.png "image_tooltip")



## Configure the Node


### Component Properties

!!! Notes 

    The configurations you set up or edit in these sections reflect in all other dialog tasks that use this node.  
    This article works with the new dialog builder, you will find this feature in legacy builder at the same location i.e. Confirmation node -> Component Properties.

To configure the component properties, follow the below steps:

1. On the **Component Properties** tab, under the **General Settings** section, enter a **Name** and a **Display Name**.
2. Under the **User Prompts** section, you can compose the confirmation request either as plain text or as a JavaScript message.center channel-specific messages for User Prompts using the **Manage** link. For more information, refer to the [Using the Prompt Editor](../../prompt-editor/){:target="_blank"} article.
    1. To add more prompts , click **Add a Prompt** and repeat the above steps.
    2. Enable the channel-specific standard formatting to **Display Confirmation Options.**  
    If this is not enabled, the yes/no options will not be displayed to the end-user.
    3. Platform detection of Yes/No is based on the below keywords. The platform ensures that the yes/no synonyms, including the internal ones, are processed at the same time and the earliest choice  takes precedence. This means that something like _of course not_ is considered as NO, and is not mapped  to YES because _of course_ could also be part of the YES synonym. Also, the yes/no synonyms are concepts and patterns as well.  
      
        **For yes:**  
                _‘kay, &lt;I agree, &lt;I am>, &lt;I am certain>, &lt;I am listening>, &lt;I am pleased to>, &lt;I am sure>, &lt;I can believe it>, &lt;I can believe that>, &lt;I can see that>, &lt;I can try>, &lt;I consent, &lt;I could not agree with you more, &lt;I did>, &lt;I do>, &lt;I give consent, &lt;I give my consent, &lt;I guess so, &lt;I have no objection, &lt;I think so, &lt;I totally agree, &lt;I understand>, &lt;I will drink to that, &lt;O.K., &lt;OK, &lt;a’ight, &lt;a’right, &lt;absolutely, &lt;accept>, &lt;accepted>, &lt;ack, &lt;affirmative>, &lt;agreed, &lt;ah yes, &lt;all right, &lt;alright, &lt;always>, &lt;apparently>, &lt;approved, &lt;ay, &lt;aye, &lt;be my guest, &lt;beyond a doubt>, &lt;bring it on>, &lt;but of course, &lt;by all means, &lt;can not argue with that, &lt;certainly>, &lt;completely, &lt;confirmed, &lt;constantly>, &lt;continue, &lt;correct>, &lt;could be>, &lt;could not have said it better, &lt;da, &lt;damn good, &lt;damn straight, &lt;definitely, &lt;delighted, &lt;do it>, &lt;especially, &lt;evidently>, &lt;exactly, &lt;extremely>, &lt;fantastic>, &lt;fine>, &lt;for sure, &lt;fortune smiles on that, &lt;fully, &lt;generally, &lt;go ahead>, &lt;go ahead with, &lt;he does>, &lt;he is>, &lt;hell yeah, &lt;highly likely>, &lt;how true>, &lt;i guess>, &lt;in this case>, &lt;indeed, &lt;indefinitely, &lt;indubitably>, &lt;it does>, &lt;it is>, &lt;it is highly likely>, &lt;it will be a pleasure to, &lt;it will be my pleasure to, &lt;it would be a pleasure, &lt;let us try>, &lt;make it so>, &lt;makes sense, &lt;most assuredly, &lt;most certainly, &lt;mostly>, &lt;my pleasure>, &lt;naturally>, &lt;no doubt, &lt;no objections>, &lt;no problem>, &lt;nod, &lt;nods, &lt;o.k., &lt;of course, &lt;oh alright, &lt;oh okay, &lt;oh sure, &lt;ok, &lt;okey dokey, &lt;one hundred percent, &lt;only just>, &lt;perfect>, &lt;please do>, &lt;positively, &lt;precisely, &lt;probably>, &lt;right>, &lt;right ,, &lt;right brah, &lt;right on, &lt;righto, &lt;righty-ho, &lt;she does>, &lt;she is>, &lt;shure, &lt;si, &lt;so will you, &lt;sounds wonderful, &lt;supposedly, &lt;sure, &lt;sure thing, &lt;surely, &lt;that is alright, &lt;that is correct, &lt;that is good, &lt;that is right, &lt;thats great , yes, &lt;thats great yes, &lt;they are>, &lt;they do>, &lt;thumbs up, &lt;totally, &lt;true>, &lt;two thumbs up, &lt;uh-huh, &lt;undoubtedly, &lt;unquestionably, &lt;very well, &lt;very well indeed, &lt;we can try>, &lt;we did>, &lt;we do>, &lt;we should try>, &lt;well maybe you are right, &lt;well perhaps you are right, &lt;whatever>, &lt;will do>, &lt;with pleasure, &lt;without a doubt, &lt;wonderful>, &lt;yah, &lt;yay, &lt;yea, &lt;yeah, &lt;yeah definitely, &lt;yeah sure, &lt;yeh, &lt;yep, &lt;yeppers, &lt;yes, &lt;yes please, &lt;yes really, &lt;yip, &lt;you are right, &lt;you bet>, &lt;you could say that>, &lt;you may, &lt;you may be right, &lt;you may have a point, &lt;yup, &lt;yuppers, I would say so, Y, d’accord, it_is_ok, its_ok, okay, okey, positive, right-o, touche, why_not, will_be_nice, ya, yes, yo, you_bet_you, ys_
 
        **For no:**  
                _&lt;I am afraid I disagree with you, &lt;I am afraid I do not agree, &lt;I am afraid not, &lt;I am not sure I agree, &lt;I am not sure that I, &lt;I could not disagree more, &lt;I disagree, &lt;I do not>, &lt;I do not agree, &lt;I do not believe it>, &lt;I do not believe so, &lt;I do not believe you>, &lt;I do not think so, &lt;I do not want to>, &lt;I dont think so, &lt;I doubt it, &lt;I just do not get it, &lt;I refuse>, &lt;I think not, &lt;I will not>, &lt;I would not>, &lt;but no, &lt;but of course not, &lt;by no means, &lt;come off it, &lt;did not>, &lt;disagree, &lt;do not be absurd, &lt;do not be ridiculous, &lt;do not be silly, &lt;do not be stupid, &lt;does not seem likely>, &lt;does not seem possible>, &lt;doubtful, &lt;false>, &lt;fat chance, &lt;fortune does not smile on that, &lt;get out>, &lt;get real, &lt;hardly, &lt;he does not>, &lt;he is not>, &lt;hell no, &lt;horse hockey, &lt;if you say so, &lt;iie, &lt;impossible, &lt;improbable, &lt;inconceivable>, &lt;it does not>, &lt;it is not>, &lt;it is not possible, &lt;it is unlikely>, &lt;me thinks not, &lt;most certainly not, &lt;naaah, &lt;naah, &lt;nah, &lt;naw, &lt;nay, &lt;neah, &lt;negative, &lt;neither, &lt;neither of these, &lt;never, &lt;never>, &lt;never mind>, &lt;no, &lt;no>, &lt;no !, &lt;no ,, &lt;no -, &lt;no ., &lt;no I am fine, &lt;no I am good, &lt;no I am ok, &lt;no can do, &lt;no chance>, &lt;no thank you, &lt;no thanks, &lt;no way, &lt;no way>, &lt;none, &lt;none of them, &lt;none of these, &lt;noo, &lt;nope, &lt;not a chance, &lt;not a prayer>, &lt;not a snowball ‘s chance in hell, &lt;not any of them, &lt;not at all, &lt;not at all>, &lt;not at the moment, &lt;not by a long shot, &lt;not by any means, &lt;not especially, &lt;not exactly, &lt;not in a million years, &lt;not likely>, &lt;not many>, &lt;not much>, &lt;not on your life, &lt;not particularly, &lt;not really, &lt;not so much>, &lt;not sure, &lt;not that I know of, &lt;not to my knowledge>, &lt;not to speak of, &lt;not very often>, &lt;nuts to you, &lt;of course not, &lt;oh come on, &lt;on the contrary>, &lt;rubbish, &lt;seldom, &lt;she does not>, &lt;she is not>, &lt;strange, &lt;surely not, &lt;that is impossible, &lt;that is rubbish, &lt;that is unbelievable, &lt;there is no reason to think so, &lt;they are not>, &lt;they do not>, &lt;thinks not, &lt;uh-hu, &lt;uh-uh, &lt;uhuh, &lt;unbelievable, &lt;unfortunately not, &lt;unlikely, &lt;unlikely>, &lt;we do not>, &lt;yeah yeah, &lt;you are dead wrong, &lt;you are having me on, &lt;you are joking, &lt;you are kidding, &lt;you are not serious, &lt;you are winding me up, &lt;you can not be serious, &lt;you have got that wrong, &lt;you have got to be kidding, &lt;you must be joking, &lt;you must be kidding, N, do_not, instead, maybe_at_another_time, n, neither, no, not_OK, not_at_a_time, not_ever, not_now, nothing_  

        In both cases, “&lt;” means the start of the sentence and “>” means the end of the sentence.  Many of these words are only treated as a _yes_ or _no_ if they appear at the start or the end of an utterance, not in the middle.

3. You can use **Rephrase Responses** to rewrite VA replies using AI based on conversation context and user emotions. For Confirmation nodes, this feature helps rephrase the responses entered under _User Prompts_. To see this feature in your node’s Component Properties, enable the [OpenAI](../../../../../app-settings/integrations/actions/open-ai/configuring-the-openai-action){:target="_blank"} or [Azure-OpenAI](../../../../../app-settings/integrations/actions/azure-open-ai/configuring-the-azure-openai-action){:target="_blank"} integration and the **Dynamic Prompt and Message Rephrasing** feature under [LLM and Generative AI](https://developer.kore.ai/docs/bots/nlp/llm-and-generative-ai/#Enable_LLM_Features){:target="_blank"}.  By default, this feature is disabled for each node. Turn on the toggle to enable Rephrase Responses.Configure the **number of previous user inputs** to define  how many previous user messages should be sent to OpenAI as context based on which to rephrase the response sent through the node. You can choose between 0 and 5, where 0 means that no previous input is considered, while 5 means that the previous 5 responses are sent as context.
    <p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image2.png "image_tooltip")

4. Add context-specific **Synonyms** for _Yes_ and _No_ within the Confirmation node to suit the dialog’s context. The Platform can identify the emojis in user utterance and consider them for confirmation/rejection, for example, a thumbs-up emoji will be taken to mean confirmation from the user.
    <p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image3.png "image_tooltip")
 
    !!! Note
    
        The Platform now supports additional Synonyms for Traditional Chinese language for Yes/No confirmation. [Learn more](#additional-synonyms-for-traditional-chinese-language).

5. In the **Variable Namespaces** section, associate the variable namespaces to execute this node and its transitions. This option is visible only when the **Variable Namespace** is enabled for the assistant you are working with. You can go with the task level settings or customize it for this node. For more information, refer to the [Managing Namespace](../../../../../app-settings/managing-namespace){:target="_blank"} article.
    <p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.gif). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image4.gif "image_tooltip")


#### Additional Synonyms for Traditional Chinese Language

For the **Traditional Chinese** language, the Platform provides the following additional synonyms for “_yes_” and “_no_” responses on the **Confirmation node**:

**Yes Confirmation**

```
"係", "係呀", "講得啱", "啱", "冇問題"
```

**No Confirmation**

```
"唔係", "冇", "無", "唔得", "唔可以", "唔使", "唔要", "唔想", "唔啱"
```

These synonyms can be configured on the confirmation node under **Component Properties** > **Synonyms** during the **Build** stage of a **Dialog Task**.  

<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image5.png "image_tooltip")

After detecting these additional synonyms, the **Confirmation** node extracts “_yes_” or “_no_” from the user utterance.


### Instance Properties

1. On the **Confirmation Component Properties** window, click the **Instance Properties** tab.
2. Under the **Interruptions Behavior** section, you can configure the interruptions behavior for this node.

    !!! Note
    
        The settings in the **Instance Properties** tab are specific to the current task and do not reflect in other dialog tasks that use this node
    
    1. **Use the task level ‘Interruptions Behavior’ setting**: The VA refers to the Interruptions Behavior settings set at the dialog task level.
    2. **Customize for this node option:** You can customize the **Interruptions Behavior** settings for this node by selecting this option and configuring it. For more information refer to the [Interruption Handling and Context Switching](../../../../intelligence/conversation-management/manage-interruptions){:target="_blank"} article.

3. Under the **Precedence** section, when the user’s input for an entity consists of a valid value for the entity and another intent, you can control the experience by choosing between _Intent over Entity_ or _Entity over Intent_ options. For example, if a _Flight Booking_ assistant prompts for the destination and the user enters, _Bangalore, how’s the weather there?_ you can define how the bot responds in such cases; pick the entity and add the intent to the follow-up intents stack or go ahead with the intent first based upon the **Interruptions Behavior** settings.
    <p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image6.png "image_tooltip")

4. Under the **Custom Tags** section, add tags to build custom profiles of your VA conversations. [Learn more](../../../../../analytics/automation/custom-dashboard/custom-meta-tags){:target="_blank"}.
    <p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image7.png "image_tooltip")


### IVR Properties

Use  the **IVR properties** tab on the Confirmation Node to define the initial prompts, timeout prompts, no match prompts, and error prompts with customization for the retries behavior, input mode, grammar settings for Global and Node level use cases, prompts, and call behavior parameters for this node to use in IVR Channel. These settings are defined at the Confirmation Node level. For more information, read the [Voice Call Properties](../../../../../channels/call-properties){:target="_blank"} article.

!!! Note

    The Confirmation Node supports all voice call properties for the  IVR, Audio Codes, Twilio Voice, and Voice Gateway channels. Except the IVR Data Extraction Key property is not supported.

<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.gif). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image8.gif "image_tooltip")


### Connections Properties

The Confirmation node’s conditional transitions go beyond the If-Else expressions used for the other nodes. You can define conditional expression based on a context object value, else a user assertion (yes), or else user negation (no). Beyond the three, you can define a fallback _Else_ condition to trigger. 

!!! Note

    These conditions are applicable only for this instance and will not affect the node when being used in any other dialog.

For details on how to work with connection conditions,  read the [Adding IF-Else Conditions to Node Connections](../../node-connections/nodes-conditions){:target="_blank"} article.

<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image9.png "image_tooltip")