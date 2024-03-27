


# Multilingual VAs: Components & Feature Support

In the case of multilingual VAs, while much of the assistant’s behavior does not change with the language, the semantics does impose some restrictions. In this document we will list out the different behaviors that would be language-dependent, so you can cater for such scenarios.

This article discusses language-specific components for multilingual VAs, as well as feature support and behavior, as compared to single language assistants. 

This article lists the VA elements for which you can provide language-specific values. You need not translate Standard Responses as the Platform automatically translates them when you enable a language.


## Metadata

JSON object consisting of the following translatable elements.


<table>
  <tr>
   <td><strong>FIELD NAME</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Bot Name
   </td>
   <td>String
   </td>
   <td>Name of the assistant
   </td>
  </tr>
  <tr>
   <td>Bot Description
   </td>
   <td>String
   </td>
   <td>Description of the assistant
   </td>
  </tr>
  <tr>
   <td>Bot Synonyms
   </td>
   <td>Object
   </td>
   <td>Arrays of important words in the task names and their corresponding synonyms. Enter translation of the words as well as their synonyms. Refer to<a href="https://developer.kore.ai/docs/bots/nlp/fundamental-meaning/#Manage_Synonyms"> Managing Synonyms</a> to learn more about bot synonyms.
   </td>
  </tr>
  <tr>
   <td>Bot Error Codes
   </td>
   <td>Object
   </td>
   <td>Arrays of error codes and their corresponding messages. Enter translations of the error message. Refer to<a href="https://developer.kore.ai/docs/bots/bot-settings/customizing-error-messages/"> Customizing Error Messages</a> to learn more about error messages.
   </td>
  </tr>
</table>



## Dialog Tasks

JSON object consisting of the following translatable components of your VA’s[ Dialog Tasks](https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/dialog-tasks/).


<table>
  <tr>
   <td><strong>FIELD NAME</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Dialog Task Name
   </td>
   <td>String
   </td>
   <td>Name of the dialog task
   </td>
  </tr>
  <tr>
   <td>Dialog Task Desc
   </td>
   <td>String
   </td>
   <td>Description of the dialog task
   </td>
  </tr>
  <tr>
   <td>Dialog Task Upgrade Message
   </td>
   <td>String
   </td>
   <td>Message displayed to the developer on the History page for the upgraded task
   </td>
  </tr>
</table>



## Dialog Components

JSON object consisting of the following translatable components related to the NLP settings of a dialog task.


<table>
  <tr>
   <td><strong>FIELD NAME</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Dialog Component Intent
   </td>
   <td>String
   </td>
   <td>Name of the User Intent node
   </td>
  </tr>
  <tr>
   <td>Dialog Component Description
   </td>
   <td>String
   </td>
   <td>Description of the User Intent node
   </td>
  </tr>
  <tr>
   <td>Dialog Component Synonyms
   </td>
   <td>Object
   </td>
   <td>Synonyms for the words in the entity node names. Refer to<a href="https://developer.kore.ai/docs/bots/nlp/fundamental-meaning/#Manage_Synonyms"> Managing Synonyms</a> to learn more.
   </td>
  </tr>
  <tr>
   <td>Dialog Component Patterns
   </td>
   <td>Object
   </td>
   <td>Patterns for the User Intent and Entity nodes in the dialog task. Refer to<a href="https://developer.kore.ai/docs/bots/nlp/fundamental-meaning/#Manage_Patterns_and_Rules"> Managing Patterns</a> to learn more.
   </td>
  </tr>
</table>



## Message Templates

JSON object with arrays of Message Template IDs and Message Template Text values. They correspond to the **User Responses** field in the Message node and the **Bot Prompts** and **Error Prompts** fields in the[ Entity node](https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/working-with-the-entity-node/) of the dialog tasks.


<table>
  <tr>
   <td><strong>FIELD NAME</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Message Template Text
   </td>
   <td>String
   </td>
   <td>The text entered in User Responses, Bot Prompts, or Error Prompts fields in any Message or Entity node of a dialog task.
   </td>
  </tr>
</table>



## Alert Task

JSON object consisting of the following translatable components of your assistant’s Alert Tasks.


<table>
  <tr>
   <td><strong>FIELD NAME</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Alert Name
   </td>
   <td>String
   </td>
   <td>Name of the alert task
   </td>
  </tr>
  <tr>
   <td>Alert Short Desc
   </td>
   <td>String
   </td>
   <td>Description of the alert task
   </td>
  </tr>
  <tr>
   <td>Alert Keywords
   </td>
   <td>Array
   </td>
   <td>The search keywords entered for the alert task
   </td>
  </tr>
  <tr>
   <td>Alert Patterns
   </td>
   <td>Array
   </td>
   <td>Array of patterns related to the alert task’s name. Replace the pattern text with the translated text. Refer to<a href="https://developer.kore.ai/docs/bots/nlp/fundamental-meaning/#Manage_Patterns_and_Rules"> Managing Patterns</a> to learn more.
   </td>
  </tr>
  <tr>
   <td>Alert Field Synonyms
   </td>
   <td>Object
   </td>
   <td>Arrays consisting of synonyms for each task field. Replace the field name and the synonyms with the translated text. Refer to<a href="https://developer.kore.ai/docs/bots/nlp/fundamental-meaning/#Manage_Synonyms"> Managing Synonyms</a> to learn more.
   </td>
  </tr>
  <tr>
   <td>Alert Field Patterns
   </td>
   <td>Object
   </td>
   <td>Arrays consisting of patterns for each task field. Replace the pattern text with the translated text. Refer to<a href="https://developer.kore.ai/docs/bots/nlp/fundamental-meaning/#Manage_Patterns_and_Rules"> Managing Patterns</a> to learn more.
   </td>
  </tr>
  <tr>
   <td>Alert Ignore Words
   </td>
   <td>Array
   </td>
   <td>Arrays of ignore words related to the alert task. Replace the words with the translated text. Refer to<a href="https://developer.kore.ai/docs/bots/bot-builder-tool/alert/manage-intents-entities/"> Managing Ignore Words and Field Memory</a> to learn more.
   </td>
  </tr>
  <tr>
   <td>Alert Upgrade Short Message
   </td>
   <td>String
   </td>
   <td>Upgrade short message related to the alert task.
   </td>
  </tr>
  <tr>
   <td>Alert Upgrade Long Message
   </td>
   <td>String
   </td>
   <td>Upgrade long message related to the alert task.
   </td>
  </tr>
  <tr>
   <td>Alert Query Fields
   </td>
   <td>Object
   </td>
   <td>Arrays consisting of key-value pairs of Alert Field Help and Alert Field Title. Replace the text with the translated text.
   </td>
  </tr>
  <tr>
   <td>Alert Payload Fields
   </td>
   <td>Object
   </td>
   <td>Arrays consisting of key-value pairs of Alert Payload fields. Replace the text with the translated text.
   </td>
  </tr>
</table>



## Alert Fields

JSON object consisting of the following translatable components in the[ API Request tab](https://developer.kore.ai/docs/bots/bot-builder-tool/alert/notification-tasks/) of the Alert task.


<table>
  <tr>
   <td><strong>FIELD NAME</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Alert Field Title
   </td>
   <td>String
   </td>
   <td>The title of the user input field related to the alert task, for example, <em>Choose city</em>
   </td>
  </tr>
  <tr>
   <td>Alert Field Help
   </td>
   <td>String
   </td>
   <td>The help text displayed below the field title to describe the task, for example, <em>Which city would you like to get weather alerts for?</em>
   </td>
  </tr>
  <tr>
   <td>Alert Field Placeholder
   </td>
   <td>String
   </td>
   <td>The placeholder text displayed inside the field.
   </td>
  </tr>
</table>



## Bot Filters

JSON object consisting of the following translatable components related to Bot filters


<table>
  <tr>
   <td><strong>FIELD NAME</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>Filter Name
   </td>
   <td>String
   </td>
   <td>Name of the task filter
   </td>
  </tr>
</table>



## IDP Config Form Fields

JSON object consisting of the following translatable components related to IDP configuration form


<table>
  <tr>
   <td><strong>Field Name</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>IDP Form Field
   </td>
   <td>String
   </td>
   <td>Name of the IDP Form Field displayed to the end-user in the authentication dialog
   </td>
  </tr>
</table>



## Pattern Support

We have seen in[ this document](https://developer.kore.ai/docs/bots/how-tos/how-to-use-patterns-for-intents-entities/), how Patterns can be used for Intent detection and Entity extraction. These rules are for VAs in the English language. In other languages, there may be differences. 

Patterns can be used in[ Small Talk](https://developer.kore.ai/docs/bots/bot-builder-tool/small-talk/#Terminology) (while defining queries),[ Knowledge Graph](https://developer.kore.ai/docs/bots/bot-builder-tool/knowledge-task/creating-a-knowledge-graph/#Adding_FAQs) (using alternate question fields), and[ Trait](https://developer.kore.ai/docs/bots/nlp/traits/#Trait_Definition) identification but their behavior might differ slightly. The table below provides an overview of how this may occur.


<table>
  <tr>
   <td><strong>PATTERN SYNTAX</strong>
   </td>
   <td colspan="2" ><strong>INTENT DETECTION AND ENTITY EXTRACTION</strong>
   </td>
   <td><strong>SMALL</strong>
<p>
<strong>TALK</strong>
   </td>
   <td><strong>TRAITS</strong>
   </td>
   <td><strong>KNOWLEDGE</strong>
<p>
<strong>GRAPH</strong>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td><strong>SUPPORTED IN LANGUAGES</strong>
   </td>
   <td><strong>NOT SUPPORTED IN LANGUAGES</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td><strong>word1 word2 … wordn</strong>
<p>
This mandates all the words defined to be available in the user utterance in the same consecutive order with additional words allowed in between, before and after
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>word1_word2</strong>
<p>
Enforce phrase, no additional words allowed in between word1 and word2.
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>word1 * word2</strong>
<p>
0 to infinite number of additional words between the specified words/phrases
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>word1 *n word2</strong>
<p>
Exactly <em>n</em> number of additional words between the specified words/phrases
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>word1 *0 word2</strong>
<p>
To disable wildcards between two tokens.
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>word1 &lt; word2</strong>
<p>
Indicates the match for word2 should start from the beginning of a sentence.
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>word1 > word2</strong>
<p>
Indicates the end of the sentence and no words are allowed after it.
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>!abc</strong>
<p>
Indicates the word/concept “abc” should not exist anywhere in the user utterance after this token
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>!!abc</strong>
<p>
The very next word/concept should not be “abc”
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>[ … ]</strong>
<p>
Used to define a group of words/concepts and the match should be against exactly one of the group declared in [ ].
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>{ … }</strong>
<p>
Used to define an optional group or words/concepts and the match would be against zero or one of the words/patterns declared in { }.
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>( … )</strong>
<p>
contain a pattern i.e when a pattern or part of a pattern is enclosed in these parentheses, we treat it as a pattern unlike [ ] and { }.
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong><&lt; … >></strong>
<p>
Used to find words in any order
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>‘word1</strong>
<p>
If you quote words or use words that are not in canonical form, the system will restrict itself to what you used in the pattern
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>System Concepts</strong>
<p>
Support for built-in concepts
   </td>
   <td>English,
<p>
German,
<p>
Spanish,
<p>
French
   </td>
   <td>Portuguese(Brazilian),
<p>
Italian,
<p>
Chinese simplified,
<p>
Chinese traditional,
<p>
Indonesian,
<p>
Korean,
<p>
Dutch,
<p>
Japanese,
<p>
Arabic,
<p>
Finnish,
<p>
Russian,
<p>
Polish,
<p>
Ukrainian,
<p>
Swedish,
<p>
Kazakh,
<p>
Norwegian,
<p>
Hindi,
<p>
Telugu,
<p>
Tamil,
<p>
Marathi,
<p>
Catalan,
<p>
Tagalog
   </td>
   <td>No
   </td>
   <td>No
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Developer concepts</strong>
<p>
Support for developer-defined concepts
   </td>
   <td>English,
<p>
German,
<p>
Spanish,
<p>
FrenchPortuguese(Brazilian)*,
<p>
Italian*,
<p>
Chinese simplified*,
<p>
Chinese traditional*,
<p>
Indonesian*,
<p>
Korean*,
<p>
Dutch*,
<p>
Japanese*,
<p>
Arabic*,
<p>
Finnish*,
<p>
Russian*,
<p>
Polish*,
<p>
Ukrainian*,
<p>
Swedish*,
<p>
Kazakh*,
<p>
Norwegian*,
<p>
Hindi*,
<p>
Telugu*,
<p>
Tamil*,
<p>
Marathi*,
<p>
Catalan*
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
   <td>Yes
   </td>
   <td>Yes*
   </td>
  </tr>
  <tr>
   <td><strong>Two-letter identifiers for Dates</strong>
<p>
Like Mo for Monday, Tu for Tuesday, etc
   </td>
   <td>English,
<p>
German,
<p>
Spanish,
<p>
Portuguese(Brazilian),
<p>
Italian,
<p>
Chinese simplified,
<p>
Chinese traditional,
<p>
Indonesian,
<p>
Korean,
<p>
Dutch,
<p>
Japanese,
<p>
Arabic,
<p>
Finnish,
<p>
Russian,
<p>
Polish,
<p>
Ukrainian,
<p>
Swedish,
<p>
Kazakh,
<p>
Norwegian,
<p>
Hindi
   </td>
   <td>French,
<p>
Telugu,
<p>
Tamil,
<p>
Marathi,
<p>
Catalan,
<p>
Tagalog
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>No
   </td>
  </tr>
</table>


\* in these cases, developer concepts are not supported in entity extraction


## NLP Support

Here are the NLP features supported by Multilingual VAs:


<table>
  <tr>
   <td><strong>NLP FEATURE</strong>
   </td>
   <td><strong>SUPPORTED IN LANGUAGES</strong>
   </td>
   <td><strong>NOT SUPPORTED IN LANGUAGES</strong>
   </td>
   <td><strong>SMALL TALK</strong>
   </td>
   <td><strong>TRAITS</strong>
   </td>
   <td><strong>KNOWLEDGE GRAPH</strong>
   </td>
  </tr>
  <tr>
   <td><strong>List of Values</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Full Match
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Partial Match
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Exact Match
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Ambiguity behavior
   </td>
   <td>All languages
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>Ambiguity with multi-item selection
   </td>
   <td>English
   </td>
   <td>Not supported in any language except English
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td><strong>Spell Correction</strong>
   </td>
   <td>English,
<p>
German,
<p>
Spanish,
<p>
French,
<p>
Portuguese(Brazilian),
<p>
Italian,
<p>
Indonesian,
<p>
Korean (from ver7.3),
<p>
Dutch,
<p>
Arabic,
<p>
Finnish,
<p>
Russian
<p>
Polish,
<p>
Ukrainian,
<p>
Swedish,
<p>
Kazakh,
<p>
Norwegian
   </td>
   <td>Chinese simplified,
<p>
Chinese traditional,
<p>
Japanese,
<p>
Hindi,
<p>
Telugu,
<p>
Tamil,
<p>
Marathi
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Amend Entities</strong>
   </td>
   <td>English
   </td>
   <td>Not supported in any language except English
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Sentiment Analysis</strong>
   </td>
   <td>English,
<p>
German,
<p>
Spanish,
<p>
French,
<p>
Dutch,
<p>
Korean (from ver7.3),
<p>
Japanese (from ver8.0),
<p>
Russian (from ver8.0),
<p>
Kazakh (from ver8.0),
<p>
Norwegian,
<p>
Tagalog
   </td>
   <td>Portuguese(Brazilian),
<p>
Italian,
<p>
Chinese simplified,
<p>
Chinese traditional
<p>
Indonesian,
<p>
Arabic,
<p>
Finnish,
<p>
Polish,
<p>
Ukrainian,
<p>
Swedish,
<p>
Hindi,
<p>
Telugu,
<p>
Tamil,
<p>
Marathi,
<p>
Catalan
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Bot Synonyms (default)</strong>
   </td>
   <td>English,
<p>
German,
<p>
Spanish,
<p>
French,
<p>
Tagalog
   </td>
   <td>Portuguese(Brazilian),
<p>
Italian,
<p>
Chinese simplified,
<p>
Chinese traditional
<p>
Indonesian,
<p>
Korean,
<p>
Dutch,
<p>
Japanese,
<p>
Arabic,
<p>
Finnish,
<p>
Russian
<p>
Polish,
<p>
Ukrainian,
<p>
Swedish,
<p>
Kazakh
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>Knowledge Graph</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Patterns
   </td>
   <td>All Languages
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Search in Answer
   </td>
   <td>English,
<p>
German (from ver7.3),
<p>
Spanish (from ver7.3),
<p>
French (from ver7.3),
<p>
Portuguese(Brazilian) (from ver7.3),
<p>
Italian (from ver7.3),
<p>
Indonesian (from ver7.3),
<p>
Dutch (from ver7.3),
<p>
Finnish (from ver7.3),
<p>
Polish (from ver7.3),
<p>
Swedish (from ver7.3),
<p>
Tagalog
   </td>
   <td>Chinese simplified,
<p>
Chinese traditional,
<p>
Korean,
<p>
Japanese,
<p>
Arabic,
<p>
Russian,
<p>
Ukrainian,
<p>
Kazakh
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Spell Correction
   </td>
   <td>English,
<p>
German,
<p>
Spanish,
<p>
French,
<p>
Portuguese(Brazilian),
<p>
Italian,
<p>
Indonesian,
<p>
Korean,
<p>
Dutch,
<p>
Arabic,
<p>
Finnish,
<p>
Polish,
<p>
Swedish,
<p>
Ukrainian
<p>
Russian (from ver8.0),
<p>
Kazakh (from ver8.0),
<p>
Japanese (from ver8.0),
   </td>
   <td>Chinese simplified,
<p>
Chinese traditional,
<p>
Catalan,
<p>
Tagalog
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>Special Character support
   </td>
   <td>All languages except English
   </td>
   <td>English
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td><strong>NL Engines</strong>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Dependency Parser Model
   </td>
   <td>German (from ver7.3),
<p>
French (from ver7.3),
<p>
Italian (from ver8.0)
   </td>
   <td>English,
<p>
Spanish,
<p>
Portuguese(Brazilian),
<p>
Chinese simplified,
<p>
Chinese traditional
<p>
Indonesian,
<p>
Korean,
<p>
Dutch,
<p>
Japanese,
<p>
Arabic,
<p>
Finnish,
<p>
Russian
<p>
Polish,
<p>
Ukrainian,
<p>
Swedish,
<p>
Kazakh,
<p>
Norwegian,
<p>
Hindi
   </td>
   <td>–
   </td>
   <td>–
   </td>
   <td>–
   </td>
  </tr>
</table>

