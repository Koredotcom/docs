

# Configure Speech Recognition

After you configure the Voice channel, you can personalize the ASR Engine by configuring speech recognition preference and language for speech-to-text conversion. You can also add call control parameters.

Steps to configure or modify the ASR Engine settings:



1. Log in to [AgentAssist](https://agentassist.kore.ai/koreagentassist/) using your credentials.
2. Click **Configuration > Speech Recognition**. \
    ![Alt text](../assets/images/asr-engine/image_1.png)

3. Click **Speech Recognition** on the ASR engine page. \
    ![Alt text](../assets/images/asr-engine/image_2.png)
4. Select your preference in the **Speech Recognition Preference** list. \
    ![Alt text](../assets/images/asr-engine/image_3.png)
5. Select the language-specific dialect in the **Dialect** list. \
    ![Alt text](../assets/images/asr-engine/image_4.png)
6. Click the **Add** button against **Call Control Parameters** to add a new call parameter. This helps you to control the call flow behavior using the added parameter(s) in the VoiceXML file. \
    ![Alt text](../assets/images/asr-engine/image_5.png)
    1. Enter a parameter name and value in the **Name** and **Value** fields. \
    ![Alt text](../assets/images/asr-engine/image_6.png)
The names and values are used to include the corresponding property in the VoiceXML definition in the IVR system and Session Parameters in the AudioCodes channel. These values defined for a node or a standard response override the global Call Control Parameters defined in the VA IVR /AudioCodes settings page.
    2. Click **Confirm**.
    Checking out how a note looks like in MD.
7. Click **Save** to complete the process.
    ![Alt text](../assets/images/asr-engine/image_7.png)
  

