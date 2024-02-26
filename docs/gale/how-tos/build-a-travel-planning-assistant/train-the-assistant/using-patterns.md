# Travel VA: Using Patterns for Intents & Entities

Using patterns can help to improve NLP interpreter accuracy.

In this document, we will elaborate on the various pattern syntax and how they can be used in intent detection and entity extraction.

<div class="admonition note">
<p class="admonition-title">Important</p>
<p><ul><li>Patterns are to be used as a last resort, only for cases where the ML engine cannot be used. Examples of such cases would be to train the VA in recognizing idiomatic utterances, command like utterances.</li>
<li>Patterns are evaluated in the order of their listing. Once a match is found the rest of the patterns are not evaluated. So ensure when adding patterns to add in the order of most restrictive to least restrictive.</li>
<li>Only one wildcard (*) is allowed in a pattern.</li>
<li>While most of the features are supported in all languages, there are some exceptions, see <a href="https://docsinternal-kore.github.io/docs/xo/app-settings/language-management/multi-lingual-bot-behavior/" target="_blank">here</a> for more details.</li></p>
</div>

## Pattern Creation Guidelines

The following are some general guideline for creating intent patterns:

* Use a minimum of 3 words.
* Use words in their canonical forms (i.e. infinitive verbs, singular nouns).
* Use lowercase both for words and their synonyms.
* Use the US spelling of words (i.e. _normalize_ instead of _normalize_).
* Avoid using determiners and pronouns (the, a, my, that).
* Avoid using digits.
* Avoid using entity values in defining a task pattern.
* Don’t use elision (i.e. what’s ).
* Don’t use special characters such as () & / \ $ [ ] + *.
* Don’t use punctuation such as – , . ! ? ‘ “.

### Patterns for Intent Detection

Following is a list of pattern syntax, along with examples, that can be configured for intent detection.

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
   <td><strong>word1 word2 … wordn</strong>
   </td>
   <td>This mandates all the words defined to be available in the user utterance in the same consecutive order with upto 3 (language specific) additional words allowed between any two consecutive words mentioned in the pattern and infinite number of words before and after those specified set of words.
   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>Book flight</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>can you please book a flight for me?</em>“
<p>
– “<em>I want to book a flight</em>“
<p>
– “<em>Book flight</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>– “<em>i want to book</em>“
<p>
– “<em>Can I make a flight booking?</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1_word2</b></td>
   <td>Enforce phrase, no additional words allowed in between word1 and word2. This is to ensure a sequence of tokens are read as a phrase. Usage restricted to words, concepts not allowed.

Note: There should be no space between the word1, word2 and _. Also be aware that “_word1” is to ensure that the word1 in the user utterance is not marked as Used Up by the Platform and is to be considered for entity extraction. This is useful when entity words are used in the intent pattern.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>check_in</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>“<em>Can you help me check in?</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>Can you please check me in for my flight? </em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1 * word2</b>

   </td>
   <td>0 to infinite number of additional words between the specified words/phrases

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>Book * flight *</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>can you please book me a flight? </em>“
<p>
– “<em>Can you help me book tomorrow’s flight to London?</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>i want to book</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1 *n word2</b>

   </td>
   <td>Exactly <i>n</i> number of additional words between the specified words/phrases

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>Book *2 flight *2 fund</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “Can you help me book an economy flight?“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>– “<em>i want to book </em>“
<p>
– “<em>Can you please book me a first class flight? </em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1 *0 word2</b>

   </td>
   <td>To disable wildcards between two tokens. Similar to the underscore between two words but can be used between two concepts or within [  ], {  } groups.

(available 7.1 onwards)

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>Check *0 in </em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>Can you please show me how to check in?</em>“
<p>
– “<em>Can you help me check in?</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>Can you check me in for my flight?</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1 < word2</b>

   </td>
   <td>Indicates that the match for word2 should start from the beginning of a sentence. It is useful especially when the word2 appears in the middle of the utterance.

Add a space after the angular bracket

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>Change < seat t</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>want to change seat</em>“
<p>
– “<em>I want a seat change.</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>i want another seat</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1 > word2</b>

   </td>
   <td>Indicates the end of the sentence and no words are allowed after it.

Add a space before closing the angular bracket

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>Book * flight >  </em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>book flight</em>“
<p>
– “<em>book a flight</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>Book flight for tomorrow</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>!abc</b>

   </td>
   <td>Indicates the word/concept “abc” should not exist anywhere in the user utterance after this token

No space between ! and word/concept

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>– “<em>!status check in </em>“
<p>
– “<em>check  !status in</em>“
<p>
– “<em>check in !status</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>“<em>i want to check in </em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>– “<em>what is the status of my check in</em>“
<p>
– “<em>i want to find my check in status</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>!!abc</b>

   </td>
   <td>The very next word/concept should not be “abc”

No space between !! and word/concept

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>Flight booking !!status</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>i want to make a flight booking</em>“
<p>
– “<em>What is the status of my flight booking?</em>“
<p>
– <em>I made a flight booking yesterday and I want to know the status.</em>
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>I want to check my flight booking status.</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>[ … ]</b></td>
   <td>Used to define a group of words/concepts and the match should be against exactly one of the groups declared in [ ]. Be aware that when a match is found the rest of the group is ignored, so order the words accordingly.

<b>Note</b>: the parentheses should not be clubbed with the word, i.e maintain a space between the parenthesis and the adjacent word.

<i>Due to the difficulty in maintaining and tracking, it is recommended you use concept instead of this pattern. This pattern also has a detrimental effect on the VA’s performance.</i>

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>Book [flight ticket seat]”  </em>
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>book flight</em>“
<p>
– “<em>Can I book a ticket? </em>“
<p>
– “<em>I want to book a seat.</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>Book a trip</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>{ … }</b></td>
   <td>Used to define an optional group or words/concepts and the match would be against zero or one of the words/patterns declared in { }. Be aware that when a match is found, the rest of the group is ignored, so order the words accordingly.

<b>Note</b>: the parentheses should not be clubbed with the word, i.e maintain a space between the parenthesis and the adjacent word.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>Check { the a my } flight status</em>.“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>How do I check the flight status?</em>“
<p>
– “<em>I need to check a flight status</em>.”
<p>
– “<em>Can I check my flight status? </em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>I want my flight status. </em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>( … )</b>

   </td>
   <td>Contain a pattern – i.e when a pattern or part of a pattern is enclosed in these parentheses, we treat it as a pattern unlike [ ] and { }.

This is the default setting i.e. when a pattern _word1 word2_ it is treated as _( word1 word2 )_

Commonly used explicitly to define sub pattern inside [ ] or { }

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>( check in )</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>“<em>Check in for my flight. </em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>Can you check me in for my flight? </em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b><< … >></b>

   </td>
   <td>Used to find words in any order

Due to the risk of running into false positives, you are advised not to use this pattern.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em><< change seat  >></em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>– “<em>change seat for my flight </em>“
<p>
– “<em>I would like to make a seat change. </em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>i want another seat</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1</b>

   </td>
   <td>If you quote words or use words that are not in canonical form, the system will restrict itself to what you used in the pattern

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>Like to book a flight.</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>“<em>I would like to book a flight. </em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>I really liked how easy it was to book a flight in your app. </em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
  <tr>
   <td><b>word1~concept2</b>

**~concept1~concept2**

(from ver8.0)

   </td>
   <td>A word (word1) or concept (concept1) can be matched only if it is also a member of another concept (concept2). The most common usage of this is through the system concepts that are dynamically added for each POS tag.

   </td>
   <td>

<table>
  <tr>
   <td><strong>Sample Pattern</strong>
   </td>
   <td>“<em>book~verb</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance Match</strong>
   </td>
   <td>“<em>Book a flight</em>“
   </td>
  </tr>
  <tr>
   <td><strong>Utterance not Matching</strong>
   </td>
   <td>“<em>Can I bring a book on board?</em>“
   </td>
  </tr>
</table>


   </td>
  </tr>
</table>

### Pattern Operators

* **AND: ( X Y )**: An ordered relationship of words in sequence. This is the default setting. i.e. when you specify a pattern as _cancel order_ it is the same as _(cancel order)_. 
For example, _(Cancel Booking)_ matches _Cancel my flight booking_ but doesn’t match _I have a pending booking for flight can I cancel?_. The XO Platform uses patterns with increasing numbers of wildcards between words (up to 3 for an intent). So a pattern of _Cancel Order_ can match:
    * cancel order
    * cancel my order
    * cancel that last order
    * cancel last weeks big order
* **OR: [X Y Z]**: Any of these can be interchangeably used in the user utterance. For example, ([get make] me [food drink dessert]) will match any of the below utterances:
    * Get me food
    * Make me a drink
    * Get me a drink
    * Get me a dessert
    * Make me some quick food
* **NOT: !X**: Words that should not appear in the user utterance for an intent match. For example, (!forecast) is marked as a pattern for an intent named _Get current weather_ and the assistant supports another intent called _Get 3-day weather forecast._
    * will not match _Get current weather_
    * will match _Get 3-day weather forecast_

<div class="admonition note">
<p class="admonition-title">Note</p>
<p><code>!word</code> means not after this point. So (<i>!forecast the weather</i>) and (get the weather !forecast) are different. The utterance Get the forecast for the weather matches the second but not the first.</p></div>

* User utterance: _Planning a trip to California get me the forecast_.
* **Optional: {X}**: For example, {phone} If the user utterance is _Get me a phone number_ or _get me a number_ the Platform will treat it equally.
* **Enforce Phrase:** X_Y: To enforce occurrence of the phrase as is in the user utterance, without any words in between. For example, check_in. The utterance _check in_ or _I want to check in_ will match but not _Can you check me in for my flight?_ 
* **Concepts: ~**: The Platform has a large set of inbuilt concepts that developers can use to define a pattern. For example, (I [like love] ~world_country) will match.
    * I like India
    * I love traveling to Australia
    * I would like to visit an African country
* **Unordered: <<, >>**: Used to find words in any order. For example, <<Cancel Booking>> matches _Cancel my flight booking_ and also _I have a pending booking for a flight, can I cancel_
* **Start/End of Statement: <, >:** For example, ( _check in >_ ) will match _I want to check in,_ but will not match _I want to check in now.._
* **Quote: ‘ –**: If you quote words or use words that are not in canonical form, the system will restrict itself to what you used in the pattern. For example, (_like to book a flight_) This matches _I would like to book a flight_ but not _I really liked how easy it was to book a flight on your app_.


### Negative Patterns

Negative Patterns can be used to eliminate intents detected in the presence of a phrase. This will help filter the matched intents for false positives.

**User Utterance**: “_I was booking a flight  when I got network failure error”_

**Intent Detected**: _Book a flight_

**Intended Intent**: _Issue Resolution_

Add a **Negative Pattern** (_network failure) (error) (technical issue)_ for the intent _Book a Flight_.

**User Utterance**: “_I was booking a flight when I got network failure error”_, or “I was booking a flight when I faced a technical issue”_, or “I got an error while booking a flight.”_

**Intent Rejected**: _Book a Flight_

**Intent Triggered: _Issue Resolution_**


### Patterns for Entity Extraction

Patterns can be used to identify the values for entities in user utterance based upon their position and occurrence in user utterance.

Intent patterns operators like _{…}_, _[…]_, _!_, _~concepts_ can be used for entity extraction. The following are some use cases where patterns can be applied.

Every entity pattern has to include a * (of some form) to represent where the Platform should look for an entity value.

Continuing with the Travel Planning Assistant example with the _Book Flight_ intent. This intent needs two entities – _DepartureCity_ and _ArrivalCity_. We will see how to achieve this.


####  Pattern 1: word1 * word2

This can be used as a positional wildcard that indicates the expected position of the entity.

**Pattern for _ArrivalCity_ entity**: "_to * from_"

**User Utterance**: _Book a flight to London.._

**Entity Extracted**: _ArrivalCity = London_

**User Utterance not resulting in entity extraction**: “_Book a flight for London”_

### Pattern 2: word1 *n

This can be used as a positional wildcard * that indicates the expected position of the entity based upon the number of words after the specified word1. That is, _n_ words after the _word1_ are to be considered for the entity, if _n_ words are not present then look for the next occurence of _word1_.

**Pattern for _DepartureCity_ entity**: "_from *2_"

**User Utterance**: "_Book flight from Paris._"

**Entity Extracted**: _DepartureCity = Paris_

**_User Utterance not resulting in entity extraction: “Book flight flying from Paris towards London”_**


#### Extension to Pattern 2: word1 *~n

Similar to above (pattern 2) but extracts up to n number, if that number of words are available.


!!!note 

    Entities need to extract something so *~1 is really the same as *1.

### Pattern 3: a combination of word1 * word2 and word3 *n

This can be used as a combination of patterns for the likely location in the user utterance that the entity value could be found and the number of words contributing to the entity.

**Pattern for _ArrivalCity_ entity**: _“to * from”_ and _“from to *1”_

**Pattern for DepartureCity entity**: “_from * to” and “to from *2”_

**User Utterance**: "_Book flight to London from Paris_." or _Book flight from Paris to London._

**Entity Extracted**: _ArrivalCity_ = _London_ and _DepartureCity_= Paris

**User Utterance not resulting in entity extraction**: “_book flight for London from Paris_."

### Pattern 4: [ word1 word2 ] *

This can be for patterns using a group of words or concepts of which at least one should be present in the utterance. The order within the group is important (see above in <a href="https://docsinternal-kore.github.io/docs/xo/how-tos/build-a-travel-planning-assistant/train-the-assistant/using-patterns/" target="_blank">intent detection</a> .

**Pattern for _ArrivalCity_ entity**: _“to * [ from ]”_ and _“[ from ] to *1”_

**Pattern for _DepartureCity_ entity**: “[ from ] * to” and “to [ from ] *”

**User Utterance**: _Book flight to London from Paris_ or _Book flight from London to Paris._

**Entity Extracted**: ArrivalCity = _London_, DepartureCity = _Paris_

**_User Utterance not resulting in entity extraction: “Book flight for London from Paris._**

### Pattern 5: ~CustomConcept *

This can be for using concepts. You can create your own custom concepts and use them to define patterns.

**Pattern for _ArrivalCity_ entity**: _“to * from”_ and _“from to *”_

**Pattern for _DepartureCity_ entity**: “~in * to” and “to ~in *”

Custom Concept: _~in_ – _(from)_

**User Utterance**: _Book flight landing in London and taking off from Paris._ or _Book flight with takeoff from Paris and landing in London_

**Entity Extracted**: ArrivalCity = _London_, DepartureCity = _Paris_

**User Utterance not resulting in entity extraction**: “_book flight landing in London taking off in Paris._“

### Pattern 6: ~intent

Useful in entity patterns and custom entities

Words that are used in the intent identification are dynamically marked with the _~intent_ concept. This can then be used as an anchor or reference point for some entity patterns.

**Sample Pattern**: “<i>~intent~trip~plural</i>“

**User Utterance not resulting in entity extraction**: _show my trips._

**User Utterance might mark the entity**: “_Show me the Trip of a Lifetime in-flight magazine_.“

### Pattern 7: $currentEntity

Useful in delaying the evaluation of a pattern until the entity is actually processed. Normally entity patterns are evaluated when a dialog starts and on new input to see if any words need to be protected until that entity is processed. This might not always be desirable, especially for strings.

**Pattern**: _“$currentEntity=TaskTitle ‘called *“_

The above rule will result in evaluating the pattern when the dialog flow has reached the TaskTitle node.
