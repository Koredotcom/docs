# Use Patterns for Intents & Entities

Using patterns can help to improve NLP interpreter accuracy.

In this document, we will elaborate on the various pattern syntax and how they can be used in intent detection and entity extraction.

**Things to Remember:**

* Patterns are to be used as a last resort only for cases where ML engine cannot be used. Examples of such cases would be to train bot in recognizing idiomatic utterances, command like utterances.
* Patterns are evaluated in the order of their listing. Once a match is found the rest of the patterns are not evaluated. So ensure when adding patterns to add in the order of most restrictive to least restrictive.
* Only one wildcard (*) is allowed in a pattern.
* While most of the features are supported in all languages, there are some exceptions, click <a href="https://docsinternal-kore.github.io/docs/xo/app-settings/language-management/multi-lingual-bot-behavior/" target="_blank">here</a> for more details.

The following are some general guideline for creating intent patterns:

* Use a minimum of 3 words.
* Use words in their canonical forms (i.e. infinitive verbs, singular nouns).
* Use lowercase both for words and their synonyms.
* Use the US spelling of words (i.e. _normalize_ instead of _normalise_).
* Avoid using determiners and pronouns (the, a, my, that).
* Avoid using digits.
* Avoid using entity values in defining a task pattern.
* Don’t use elision (i.e. what’s ).
* Don’t use special characters such as () & / \ $ [ ] + *.
* Don’t use punctuation such as – , . ! ? ‘ “.


## Patterns for Intent Detection

The following is a list of the pattern syntaxes available on the XO Platform that can be configured for intent detection with examples:

!!!note
    
    Pattern matching occurs in the canonical form of a sentence. Therefore, the words in a pattern should be in their canonical form.

<table>
  <tr>
   <td><strong>PATTERN</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>PATTERN EXAMPLES</strong>
   </td>
  </tr>
  <tr>
   <td><strong>word1</strong>
<p>
<strong>word2 …</strong>
<p>
<strong>wordn</strong>
   </td>
   <td>This mandates all the words defined to be available in the user utterance in the same consecutive order with upto 3 (language specific) additional words allowed between any two consecutive words mentioned in the pattern and infinite number of words before and after those specified set of words.
<p>
<strong><em>Note: The three wildcard words are configurable as advanced NLP options</em></strong>.
   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>credit card limit</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>



<pre class="prettyprint">– "can you please let me know my credit card limit?"
– "What is the credit card limit for Priority customers?"
– "I would like to know how to enhance my credit card with a new limit."</pre>


   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>– “<em>I want to know what the credit limit on my Priority Privilege Card is.</em>“
<p>
– “<em>Can I enhance the credit limit after one year on my card?</em>“
<p>
– “<em>Will the credit card I’m using be eligible for a limit increase next month?</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1_word2</b>

   </td>
   <td>Compound words:  A compound word is treated as one word and that impacts how the canonical form is constructed. No additional words allowed in between word1 and word2. This is to ensure that a sequence of tokens are read as a phrase. Usage is restricted to words, concepts not allowed.

<b>Note</b>: There should be no space between the word1, word2 and _.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>credit_card</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>“<em>can you help me with my credit card balance?</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>can you please let me know when I would receive the credit on my card?</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>_word1</b>

   </td>
   <td>_word1 ensures that the word1 in the user utterance is <span style="text-decoration:underline;">not marked</span> as <span style="text-decoration:underline;">Used Up</span> by the platform and is to be considered for entity extraction. This is useful when entity words are used in the intent pattern.

For e.g., the pattern (buy ~number ticket) will match “buy 2 tickets for the show at 7”; each of the three pattern words internally will be tracked as used up, but a ticket number entity will first consider “7” and not “2” because “7” is not used up. If the pattern is changed to (buy _~number ticket), then “2” is still matched for the intent pattern but the word is not marked as used up and the entity would consider it, hence the leading underscore is useful for pattern tokens that constitute important data.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“b<em>uy _~number tickets</em>”
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>“<em>Can you help me to buy 2 tickets for the show at 7 P.M.?</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>NA
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1 *n word2</b>

   </td>
   <td>Exactly <b>n</b> number of additional words between the specified words/phrases

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>credit *3 card</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>can you tell me what the credit limit on my card will be if I upgrade to Platinum?</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>– “<em>can you tell me what the credit limit on my new card will be if I upgrade to Platinum?</em>“
<p>
– “<em>can you please tell me how many points I can earn for each transaction on my Credit Card?</em>“
<p>
– “<em>can my credit card’s limit be enhanced further?</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1 *~n word2</b>

   </td>
   <td>Up to <b>n</b> number of additional words between the specified words/phrases.

!!!note

    FM engine automatically generates variations with this wildcard and unless it is a special scenario, developers do not further perform any action.

    An advanced NLP configuration setting allows developers to change the default number of possible wildcards between tokens.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>credit *~3 card</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>can you tell me what the credit limit on my card will be if I upgrade to Platinum?</em>“
<p>
_“<em>can you tell me what the credit on my card is</em>?”
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>– “<em>can you tell me what the credit limit on my new card will be if I upgrade to Platinum?</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1 *0 word2</b>

   </td>
   <td>To disable wildcards between two tokens. Similar to the underscore between two words but can be used between two concepts or within [  ], {  } groups.

(available 7.1 onwards).

<b>Note</b>: If a phrase needs to be treated as an idiom or  a complete unit, then instead of using an _ or the *0 syntax, the phrase can be used in concept. The advantages of this usage are having a specific sequence of words, correct canonical handling, easy reuse, and better performance.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>credit *0 card</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>can you please check on my credit card usage last week?</em>“
<p>
– “<em>can you help me with this merchant transaction ID on my credit card?</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>I want to enhance the credit limit on this card next month.</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td> <b>< word1 word2</b>

   </td>
   <td>Indicates the match for word1 should start from the beginning of a sentence. Add a space after the angular bracket.

<b>Note</b>: ‘<’ indicates the start of the sentence. The next token would match the first word.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“< cancel card”
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>cancel my credit card.</em>”
<p>
– “<em>please cancel my credit card.</em>”
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>I want to check my credit balance before knowing how to cancel the card</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1 word2 ></b>

   </td>
   <td>Indicates that the next word or phrase after detecting the exact match is the end of the sentence.

Add a space before closing the angular bracket

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>credit card ></em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>I can’t see the balance on my credit card.</em>“
<p>
– “What are the <em>standing instructions on my credit card?</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>The credit limit on the card is not showing.</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>!abc</b>

   </td>
   <td>Indicates the word/concept “abc” should not exist anywhere in the user utterance.

No space between ! and word/concept.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>– “<em>!block my credit card”</em>
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>“<em>I want to know the balance on my credit card.</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>– “<em>How to block my credit card? </em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>!!abc</b>

   </td>
   <td>The very next word/concept should not be “abc”.

No space between !! and word/concept.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>credit card !!balance</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>I want to check my credit card limit.</em>“
<p>
– “<em>What is the limit on my credit card?”</em>
<p>
– “<em>I want to check if there is any amount due on my corporate credit card.</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>What is my credit card balance?</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>[ … ]</b>

   </td>
   <td>Used to define a group of words/concepts and the match should be against exactly one of the group declared in [ ]. Be aware that when a match is found the rest of the group is ignored, so order the words accordingly.

<b>Note</b>: The brackets should not be clubbed with the word, i.e. maintain a space between the parenthesis and the adjacent word.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>credit card [ limit balance expire ]</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>When will my credit card limit be increased? </em>“
<p>
– “<em>What is my credit card balance as on date?</em>“
<p>
– “<em>When will my credit card expire?”</em>
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>What is the process for credit card replacement?</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>{ … }</b>

   </td>
   <td>Used to define an optional group or words/concepts and the match would be against zero or one of the words/patterns declared in { }. Be aware that when a match is found, rest of the group is ignored, so order the words accordingly.

<b>Note</b>: The brackets should not be clubbed with the word, i.e. maintain a space between the parenthesis and the adjacent word.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“w<em>hat balance { husband wife } credit card</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>What is the balance on my husband’s credit card?</em>”
<p>
–  “What balance does my credit card show<em>?</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>– “<em>What is the name on my credit card?”</em>
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>( … )</b>

   </td>
   <td>Contains a sub-pattern i.e. when a pattern or part of a pattern is enclosed in these parentheses, we treat it as a pattern unlike [ ] and { }.

This is the default setting i.e. when a pattern _word1 word2_ it is treated as <i>( word1 word2 )</i>

Commonly used explicitly to define sub pattern inside [ ] or { }

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>( credit card )</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>“<em>I don’t have my credit card with me right now.</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>If I am upgraded to a Gold membership, will the credit limit on the new card be increased?”</em>
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b><< … >></b>

   </td>
   <td>Used to find words in any order anywhere in the sentence.

Due to the risk of running into false positives, you are advised <span style="text-decoration:underline;">not</span> to use this pattern.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em><< credit limit on the card >></em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>can the credit limit on the card be enhanced?</em>“
<p>
– <em>“On Tuesday I got a new card with a raised limit, so I would like to apply some in-store credit to it.“</em>
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>Please confirm my outstanding amount.</em>
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>‘word1</b>

   </td>
   <td>If you quote words or use words that are not in canonical form, the system will restrict itself to what you used in the pattern.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“c<em>ancel ‘the transaction”</em>
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>“<em>I want to cancel the transaction.</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>I would like to cancel a transaction.”</em>
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1~concept2</b>

<b>~concept1~concept2</b>

(from ver8.0)

   </td>
   <td>A word (word1) or concept (concept1) can be matched only if it is also a member of another concept (concept2). The most common usage of this is through the system concepts that are dynamically added for each POS tag.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>credit~verb</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>“<em>Can you credit this amount to my source account please?</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>This is a credit and not a debit transaction.</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1 * word2</b>

   </td>
   <td>0 to infinite number of additional words between the specified words/phrases.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>credit * card</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>can you please confirm if the credit limit on my priority card can be enhanced this month?</em>“
<p>
– “<em>can you help me understand if the credit limit will get affected if I do not use my card for more than six months?</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“I<em> want to understand your credit limit enhancement policy.</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
</table>

## Pattern Operators

**AND: ( X Y )**: An ordered relationship of words in sequence. This is the default setting. i.e. when you specify a pattern as _cancel order_ it is the same as _(cancel order)._

For example, _(Cancel Order)_ matches _Cancel my phone order_ but doesn’t match _I have a pending order for an iPhone X, can I cancel_. Bot Builder tool uses patterns with increasing numbers of wildcards between words (up to 3 for an intent). So a pattern of _Cancel Order_ can match:

* Cancel order
* Cancel my order
* Cancel that last order
* Cancel last weeks big order

**OR: [X Y Z]**: Any of these can be interchangeably used in the user utterance. For example, ([get make] me [food drink dessert]) will match any of the below utterances:

* Get me food
* Make me a drink
* Get me a drink
* Get me a dessert
* Make me some quick food

**NOT: !X**: Words that should not appear in the user utterance for an intent match. For example, (!forecast) is marked as a pattern for intent named _Get current weather_ and the bot supports another intent called _Get 3-day weather forecast._

* User utterance: _Planning a trip to California get me the forecast_
    * Will not match _Get current weather_
    * Will match _Get 3-day weather forecast 
Note that the _!word_ means _not after this point_.

So (!forecast the weather) and (get the weather !forecast) are different. The utterance _get the forecast for the weather_ matches the second but not the first.

**Optional: {X}**: For example, {phone} If the user utterance is _Get me a phone number_ or _get me a number_ the platform will treat it equally.

* **Enforce Phrase:** X_Y: To enforce occurrence of the phrase as is in the user utterance, without any words in between. For example, transfer_funds. The utterance _transfer funds_ or _I want to transfer funds_ will match but not _Can I transfer some funds_.
* **Concepts: ~**: Platform has a large set of inbuilt concepts that developers can use to define a pattern. For example, (I [like love] ~world_country) will match
    * I like India
    * I love traveling to Australia
    * I would like to visit an African country
* **Unordered: <<, >>**: Used to find words in any order. For example, <<Cancel Order>> matches _Cancel my phone order_ and also _I have a pending order for an iPhone X, can I cancel_
* **Start/End of Statement: <, >:** For example, ( _transfer fund >_ ) will match _I want to transfer funds_ but will not match _transfer funds today._
* **Quote**: **‘–**: If you quote words or use words that are not in canonical form, the system will restrict itself to what you used in the pattern. For example, (_like to transfer funds_) This matches _I would like to transfer funds from my account_ but not _I really liked transfer funds process_.

## Negative Patterns

Negative Patterns can be used to eliminate intents detected in the presence of a phrase. This will help filter the matched intents for false positives.

* **User Utterance**: “_I was transferring funds when I got network failure error_”.
* **Intent Detected**: _Transfer Funds_ .
* **Intended Intent**: _Register Complaint_

Add a **Negative Pattern** (_network failure) (error) (technical issue)_ for the intent _Transfer Funds_.

* **User Utterance**: “_I was transferring funds when I got network failure error_.” 
or “_I was transferring funds when I faced a technical issue_.”
or “_I got an error during transfer funds process._” 
* **Intent Rejected**: _Transfer Funds_.
* **Intent Triggered**: _Register Complaint_.

!!!note
    
    The negative pattern is not supported for FAQs in any language.

## Patterns for Entity Extraction

Patterns can be used to identify the values for entities in user utterance based upon their position and occurrence in user utterance.

Intent patterns operators like _{…}_, _[…]_, _!_, _~concepts_ can be used for entity extraction. The following are some use cases how the patterns can be applied.

Every entity pattern has to include a * (of some form) to represent where the platform should look for an entity value.

Continuing with the Banking Bot example with _Transfer Funds_ intent. This intent needs two entities – _ToAccount_ and _FromAccount_. We will see how to achieve this.

### Pattern 1: word1 * word2

This can be used as a positional wildcard that indicates the expected position of the entity.
* **Pattern for _ToAccount_ entity**: _to * from_.

* **User Utterance**: _Transfer funds to ABC123 from my account._ 
* **Entity Extracted**: _ToAccount = ABC123_
* **User Utterance not resulting in entity extraction**: “_transfer funds for ABC123 from my account”_.

### Pattern 2: word1 *n

This can be used as a positional wildcard * that indicates the expected position of the entity based upon the number of words after the specified word1. That is, _n_ words after the _word1_ are to be considered for the entity, if _n_ words are not present then look for the next occurrence of _word1_.

* **Pattern for _ToAccount_ entity**: _from *2_
* **User Utterance**: _Transfer funds to ABC123 from my account._ 
* **Entity Extracted**: _FromAccount = my account_. 
* **User Utterance**: Transfer funds to ABC123 from XYZ321 that is from my account. 
* **Entity Extracted**: _FromAccount = my account_.
* **User Utterance not resulting in entity extraction**: “_transfer funds to  ABC123 using< my account”_.

#### Extension to Pattern 2: word1 *~n

Similar to above (pattern 2) but extracts up to n number, if that number of words are available. Note that entities need to extract something so *~1 is really the same as *1.

#### Pattern 3: a combination of word1 * word2 and word3 *n

This can be used as a combination of patterns for the likely location in the user utterance that the entity value could be found and the number of words contributing to the entity.

* **Pattern for _ToAccount_ entity**: _“to * from”_ and _“from to *1”_.
* **Pattern for FromAccount entity**: “_from * to” and “to from *2”_.
* **User Utterance**: _Transfer funds to ABC123 from my account._ 
or _Transfer funds from my account to ABC123._ 
* **Entity Extracted**: _ToAccount = ABC123_ and _FromAccount = my account 
**User Utterance not resulting in entity extraction**: “transfer funds <span style="text-decoration:underline;">for</span> ABC123 using my account”_

### Pattern 4: [ word1 word2 ] *

This can be for patterns using a group of words or concepts of which at least one should be present in the utterance. The order within the group is important (See <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/train-the-assistant/using-patterns/?h=use+pattern#patterns-for-intent-detection" target="_blank">intent detection</a> for details). 

* **Pattern for _ToAccount_ entity**: _“to * [ using from ]”_ and _“[ using from ] to *1”_. 
* **Pattern for FromAccount entity**: “_[using from] * to” and “to [using from] *_” .
* **User Utterance**: _Transfer funds to ABC123 from my account._
or _Transfer funds using my account to ABC123._
* **Entity Extracted**: _ToAccount = ABC123_ and _FromAccount = my account_.
* **User Utterance not resulting in entity extraction**: “transfer funds for _ABC123 using my account”_.

### Pattern 5: ~CustomConcept *

This can be for using concepts. You can create your own custom concepts and use them to define patterns. 
**Pattern for _ToAccount_ entity**: _“to * from”_ and _“from to *”_.

* **Pattern for FromAccount entity**: _“~in * to”_ and _“to ~in *”_.
_Custom Concept_: _~in – (using) (from)_ 
* **User Utterance**: _Transfer funds to ABC123 using my account._
or _Transfer funds from my account to ABC123._ 
* **Entity Extracted**: _ToAccount = ABC123_ and _FromAccount = my account_.
* **User Utterance not resulting in entity extraction**: “_transfer funds to ABC123 <span style="text-decoration:underline;">of</span> my account_”

### Pattern 6: ~intent

Useful in entity patterns and custom entities 
Words that are used in the intent identification are dynamically marked with the _~intent_ concept. This can then be used as an anchor or reference point for some entity patterns.

* **Sample Pattern**: “_~intent~meeting~plural_”.
* **User Utterance not resulting in entity extraction**: _show my meetings._ 
* **User Utterance might mark the entity**: “_schedule a presentation called Meeting the Sales Goals_.”

### Pattern 7: $currentEntity

Useful in delaying the evaluation of a pattern until the entity is actually processed. Normally entity patterns are evaluated when a dialog starts and on new input to see if any words need to be protected until that entity is processed. This might not always desirable, especially for strings. 

* **Pattern**: _“$currentEntity=TaskTitle ‘called *”_.

The above rule will result in evaluating the pattern when the dialog flow has reached the TaskTitle node.
