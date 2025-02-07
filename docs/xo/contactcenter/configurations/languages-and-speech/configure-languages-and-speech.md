# Languages and Speech

This feature lets you configure the language and speech settings within Contact Center module, to manage how your contact center uses languages and speech recognition.

Go to **Contact Center AI** > **CONFIGURATIONS** > **Languages & Speech** to access Languages and Speech settings.
<img src="../images/languages-and-speech-page.png" alt="
Languages & Speech Page" title="Languages & Speech Page" style="border: 1px solid gray; zoom:80%;">

This section of the Contact Center AI module provides access to the following settings:

* **[Supported languages for Bots and Agents](#list-of-supported-languages-for-bots-and-agents)**: Define the languages you want agents and automation to work with.
* **[Voice Preferences](#voice-preferences)**: Choose the engines to use with Contact Center AI for Automated Speech Recognition (ASR) and Text-to-Speech (TTS).
* **[List of Supported Dialects](#list-of-supported-dialects)**: Choose the supported dialects.
* **[Hold Audio](#hold-audio)**: Define the default audio that plays to callers while on hold or waiting in the queue.

## Language Management

This feature helps manage the languages that are supported by the contact center infrastructure. You can add support for specific languages and enable, disable or delete specific languages.

To manage languages, click **Supported Languages**.
<img src="../images/supported-languages.png" alt="
Supported Languages Panel" title="Supported Languages Panel" style="border: 1px solid gray; zoom:80%;">

### Add a Language

To add a new language, follow these steps:

1. In the **Language** panel, select the language and click on **Agent, Call Automation, Chat Automation** or _select all_ to enable the language for each functionality.
2. Click **Save** to save your new language.
<img src="../images/add-language-window.png" alt="
Add Language Window" title="Add Language Window" style="border: 1px solid gray; zoom:80%;">

### Disable and Re-Enable a Language

To disable a language and its access flows, uncheck its corresponding checkbox, then click **Save**. This will deactivate the language, and it will no longer be available within the selected access channels; however, it will not be completely removed.

You can enable the language again later by selecting its corresponding checkbox, then saving.
<img src="../images/language-checkbox.png" alt="
Enable Language Check-box" title="Enable Language Check-box" style="border: 1px solid gray; zoom:80%;">

### Delete a Language

In the **Language** panel, click the **Delete (bin)** icon for the language you want to remove. This removes the language completely from all your workflows.
<img src="../images/delete-language.png" alt="
Delete Language" title="Delete Language" style="border: 1px solid gray; zoom:80%;">

### List of Supported Languages for Bots and Agents

The following languages are supported for bots and agents:

| Afrikaans       | English        | Indonesian      | Malayalam       | Sesotho         | Ukrainian       |
|-----------------|----------------|-----------------|-----------------|-----------------|-----------------|
| Albanian        | Esperanto      | Irish           | Maltese         | Sona            | Urdu            |
| Amharic         | Estonian       | Italian         | Maori           | Sinhala (Sinhalese) | Uyghur          |
| Arabic          | Filipino       | Japanese        | Marathi         | Slovak          | Uzbek (Latin)   |
| Armenian        | Finnish        | Javanese        | Mongolian (Cyrillic) | Slovenian      | Vietnamese      |
| Assamese        | French         | Kannada         | Myanmar (Burmese) | Somali         | Welsh           |
| Azerbaijani     | Galician       | Kazakh          | Nepali          | Spanish         | Wolof           |
| Basque          | German         | Khmer           | Norwegian       | Sudanese        | Xhosa           |
| Belarusian      | Georgian       | Kinyarwanda     | Nyanja (Chichewa) | Swahili        | Yiddish         |
| Bangla          | Greek          | Korean          | Odia            | Swedish         | Yoruba          |
| Bosnian         | Gujarati       | Kurdish (Central) | Persian       | Tagalog         | Zulu            |
| Bulgarian       | Haitian Creole | Kyrgyz          | Polish          | Tajik           |                 |
| Catalan         | Hausa          | Lao             | Portuguese (Brazil) | Tamil         |                 |
| Cebuano         | Hawaiian       | Latin           | Portuguese (European) | Tatar         |                 |
| Chinese Simplified | Hebrew     | Latvian         | Punjabi         | Telugu          |                 |
| Corsican        | Hindi          | Lithuanian      | Russian         | Thai            |                 |
| Croatian        | Hmong Daw      | Luxembourgish   | Romanian        | Tibetian        |                 |
| Czech           | Hungarian      | Macedonian      | Samoan          | Traditional Chinese |                 |
| Danish          | Icelandic      | Malagasy        | Scots Gaelic    | Turkish         |                 |
| Dutch           | Igbo           | Malay           | Serbian (Cyrillic) | Turkmen       |                 |

## Hold Audio

This option helps configure the audio played to a caller while on hold or waiting in the queue.

To configure the **Hold Audio**, go to **Languages & Speech** and select the **Hold Audio** option.  
<img src="../images/hold-audio.png" alt="
Hold Audio" title="Hold Audio" style="border: 1px solid gray; zoom:80%;">

### Add Hold Audio Files

1. In the **Hold Audio** panel, click **Browse** to select and upload your _.WAV_ audio file. Alternatively, you can drag and drop the file to the panel.
1. Once the file uploads, you can adjust the audio file name in the **Rename Audio** text area.
2. Click **Save** to add the new audio file and it is automatically added to the **Hold Audio** list. The uploaded audio plays to the caller while on hold or waiting in the queue.
<img src="../images/configure-hold-tone.gif" alt="
Add Hold Audio" title="Add Hold Audio" style="border: 1px solid gray; zoom:80%;">

### Delete Hold Audio Files

The available audio file deletion methods are listed below and illustrated in the following screenshot:

1. Delete a file from the saved list by clicking the **Delete (bin)** icon next to it. You will be asked to confirm your choice. Files deleted from the list have to be reuploaded if you change your mind.
2. Remove an uploaded file that has not yet been saved to the list by clicking the **Delete (x)** button on the top right corner of the upload panel.
<img src="../images/delete-audio-file.png" alt="
Delete Audio File" title="Delete Audio File" style="border: 1px solid gray; zoom:80%;">