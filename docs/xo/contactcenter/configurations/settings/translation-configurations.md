# Translation Configurations

Using configurable translation services, agents and supervisors can translate call transcripts into their preferred language, improving comprehension and global team collaboration while maintaining accuracy. [Learn more](../../../console/additional-tools.md#translate-internal-chats).

Steps to configure translation:

1. Go to **Contact Center AI** > **CONFIGURATIONS** > **Settings** > **Advanced Settings** > **Translation Configurations**.  
    <img src="../images/transaltion-configurations.png" alt="Translation Configurations" title="Translation Configurations" style="border: 1px solid gray; zoom:70%;">

2. Enable translations by turning on the toggle. Administrators can then choose one of the following options:

    * Google Translator  
    * Microsoft Translator  
    * Custom  

    If Google or Microsoft Translator is selected, enter the access key. If Custom is selected, open the dropdown and click Add Custom Engine to configure the endpoint.  
    <img src="../images/custom-engine.png" alt="Configurations" title="Configurations" style="border: 1px solid gray; zoom:70%;">  

    The Configure Translation Engine pop-up appears. Refer to [Manage Translation Services](../../../app-settings/language-management/managing-translation-services.md) for steps to configure the translation engine.  
    <img src="../images/custom-configuration.png" alt="Configuration Window" title="Configuration Window" style="border: 1px solid gray; zoom:70%;"> 

3. Click **Save**. Translation is enabled in the dashboard interactions.  
    <img src="../images/translation.png" alt="Translation Configurations" title="Translation Configurations" style="border: 1px solid gray; zoom:70%;">

!!! Note

    Template messages will not be translated in the conversation transcripts.