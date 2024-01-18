

# Managing Translation Services


The Kore.ai XO Platform offers multiple ways to train your virtual assistant for language understanding. One of the ways is to use translation services to translate the user input. In this approach, you can train the virtual assistant in a language (NLU Language) other than the interaction language. For example, you can enable Spanish as an interaction language but train the assistant using English language training data.

Translation services can also be used for translating the bot responses if they are defined in a language other than the conversation language. The Platform allows you to define language-specific responses for each of the languages enabled for the assistant. However, you may choose to write responses in a language other than the enabled language.

The Platform provides out-of-the-box support for Microsoft Translator and Google Translation APIs. You can also use the Custom Translation Engine feature to integrate with any other translation services or your in-house translation services.


## Configuring Microsoft Translator Service

To enable automatic translation using Microsoft Translation Services, please follow the steps below:



1. Go to **Build > Configurations > Languages > Translation Configurations**.
2. Select **Microsoft Translator**.
3. Provide the **API Key** of your Microsoft Translator API service.
4. Click **Save** to complete the setup.

    ![alt_text](images/mts(8).png "image_tooltip")



## Configuring Google Translation Service

To enable automatic translation using Google Translation Services, please follow the steps below: 



1. Go to **Build > Configurations > Languages > Translation Configurations**.
2. Select **Google Translator**.
3. Provide the **API Key** of your Google Translation API service.
4. Click **Save** to complete the setup.
![alt_text](images/mts(1).png "image_tooltip")



## Configuring Custom Translation Service

The **Custom Translation Service** allows you to use translation services by integrating with other translation providers or to integrate with any in-house translation services you may have.


### How it works

Here is how custom translation services work:



1. Follow the instructions below to enable the **Custom Translation Engine** feature.
2. You can set up the integration with your translation service APIs using the **Get** or **Post** method.
3. Refer to your translation service documentation for the authentication mechanism, request payload, and response payload.
4. This integration is used for translating both the user input as well as the bot responses. The platform will automatically make the following information available in the context during runtime.
5. It will make use of the following functions while defining the request payload.
    1. koreUtil.conversation.sourceText()– This function will return the text to be translated.
        1. If the user’s input is being translated, then the function will return the user’s input.
        2. If the bot response is being translated, then the function will return the bot response.
    2. For translating user input, this function will return the user input. For translating the bot response, the function will return the bot response text.
    3. koreUtil.conversation.getSourceLanguage() – This function returns the current language of the text to be translated.
        3. If the user input is being translated, then the function will return the language in which the user is interacting.
        4. If the bot response is being translated, then the function will return the language in which the response is written.
    4. koreUtil.conversation.getTargetLanguage() – This function returns the language to which the text should be translated to.
        5. If the user input is being translated, then the function will return the language to which the input should be translated.
        6. If the bot response is being translated, then the function will return the language to which the response should be translated.The platform invokes the translation service using the defined configurations.
6. The translation engine should share the translated text as part of the API response.
7. Map the relevant field from the response payload to be used as the translated text.


### Enabling a Custom Translation Engine



1. Go to **Build > Configurations > Languages > Translation Configurations**.
2. Select **Custom**, and choose **Add Custom Engine** from the dropdown. 
![alt_text](images/mts(7).png "image_tooltip")

3. Provide a name for the **Custom Translation Engine**.
4. Define the request payload for sending the text to be translated. Refer to the details provided above for defining the request payload.
5. Refer to the[ Service Node](https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/working-with-the-service-node/#Define_a_Custom_Service) documentation to learn more about how to configure service integrations. 
![alt_text](images/mts(3).png "image_tooltip")

6. After defining the request payload, you can test the integration by providing the required details from the Test Request tab. Provide the sample values for the variables shown under the Sample Context Values sections, click **Test** to verify if the custom translation connection is established. 
![alt_text](images/mts(2).png "image_tooltip")

7. After a successful test, the platform displays the API response received from the translation service.
8. Verify the response payload and map the translated text from the payload in the **Translated Output** field. ![alt_text](images/mts(5).png "image_tooltip")

9. Click the **Extract** button to verify if the translation output is correctly mapped. 
![alt_text](images/mts(6).png "image_tooltip")

10. Click **Save & Exit** to return to the Languages page.
11. Click **Save** to complete the configuration. 
![alt_text](images/mts(4).png "image_tooltip")

