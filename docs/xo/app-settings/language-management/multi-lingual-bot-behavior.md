# Multilingual Virtual Assistant Behavior

In the case of multi-lingual bots, while much of the bot behavior does not change with the language, but the language semantics does impose some restrictions. In this document we will list out the different behaviors that would be language-dependent, so you as bot developer can cater for such scenarios.


## Pattern Support

We have seen in [this document](../../../how-tos/build-a-banking-assistant/train-the-assistant/use-patterns-for-intents-and-entities/){:target="_blank"}, how Patterns can be used for Intent detection and Entity extraction. Those rules are for bots in the English language. Though the multilingual bots honor those rules, the language semantics impose some restrictions.

Also, patterns can also be used in [Small Talk](../../../automation/use-cases/small-talk/#terminology){:target="_blank"} (while defining queries), [Knowledge Graph](../../../automation/knowledge-ai/build-a-knowledge-graph/){:target="blank"} (using alternate question field), and [Trait](../../../automation/natural-language/training/traits/#trait-definition){:target="_blank"} identification but their behavior might differ slightly.


<table border="1">
<tr>
<td><strong>PATTERN SYNTAX</strong>
</td>
<td colspan="2" ><strong>INTENT DETECTION AND ENTITY EXTRACTION</strong>
</td>
<td><strong>SMALL</strong>

<strong>TALK</strong>
</td>
<td><strong>TRAITS</strong>
</td>
<td><strong>KNOWLEDGE</strong>

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
<br>
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
<br>
Enforce phrase, no additional words allowed in between word1 and word2.
</td>
<td>All languages
</td>
<td> –
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
<br>
0 to infinite number of additional words between the specified words/phrases
</td>
<td>All languages
</td>
<td> –
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
<br>
Exactly <em>n</em> number of additional words between the specified words/phrases
</td>
<td>All languages
</td>
<td> –
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
<br>
To disable wildcards between two tokens.
</td>
<td>All languages
</td>
<td> –
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
<br>
Indicates the match for word2 should start from the beginning of a sentence.
</td>
<td>All languages
</td>
<td> –
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
<br>
Indicates the end of the sentence and no words are allowed after it.
</td>
<td>All languages
</td>
<td> –
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
<br>
Indicates the word/concept “abc” should not exist anywhere in the user utterance after this token
</td>
<td>All languages
</td>
<td> –
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
<br>
The very next word/concept should not be “abc”
</td>
<td>All languages
</td>
<td> –
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
<br>
Used to define a group of words/concepts and the match should be against exactly one of the group declared in [ ].
</td>
<td>All languages
</td>
<td> –
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
<br>
Used to define an optional group or words/concepts and the match would be against zero or one of the words/patterns declared in { }.
</td>
<td>All languages
</td>
<td> –
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
<br>
contain a pattern i.e when a pattern or part of a pattern is enclosed in these parentheses, we treat it as a pattern unlike [ ] and { }.
</td>
<td>All languages
</td>
<td> –
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
<br>
Used to find words in any order
</td>
<td>All languages
</td>
<td> –
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
<br>
If you quote words or use words that are not in canonical form, the system will restrict itself to what you used in the pattern
</td>
<td>All languages
</td>
<td>  –
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
<br>
Support for built-in concepts
</td>
<td>

English,
<br><br>
German,
<br><br>
Spanish,
<br><br>
French
</td>
<td>

Portuguese (Brazilian),
<br><br>
Italian,
<br><br>
Chinese simplified,
<br><br>
Chinese traditional,
<br><br>
Indonesian,
<br><br>
Korean,
<br><br>
Dutch,
<br><br>
Japanese,
<br><br>
Arabic,
<br><br>
Finnish,
<br><br>
Russian,
<br><br>
Polish,
<br><br>
Ukrainian,
<br><br>
Swedish,
<br><br>
Kazakh,
<br><br>
Norwegian,
<br><br>
Hindi,
<br><br>
Telugu,
<br><br>
Tamil,
<br><br>
Marathi,
<br><br>
Catalan,
<br><br>
Tagalog,
<br><br>
Portuguese (European)
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
<br>
Support for developer-defined concepts
</td>
<td>

English,
<br><br>
German,
<br><br>
Spanish,
<br><br>
French,
<br><br>
Portuguese (Brazilian)*,
<br><br>
Italian*,
<br><br>
Chinese simplified*,
<br><br>
Chinese traditional*,
<br><br>
Indonesian*,
<br><br>
Korean*,
<br><br>
Dutch*,
<br><br>
Japanese*,
<br><br>
Arabic*,
<br><br>
Finnish*,
<br><br>
Russian*,
<br><br>
Polish*,
<br><br>
Ukrainian*,
<br><br>
Swedish*,
<br><br>
Kazakh*,
<br><br>
Norwegian*,
<br><br>
Hindi*,
<br><br>
Telugu*,
<br><br>
Tamil*,
<br><br>
Marathi*,
<br><br>
Catalan*
</td>
<td> –
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
<br>
Like Mo for Monday, Tu for Tuesday, etc
</td>
<td>

English,
<br><br>
German,
<br><br>
Spanish,
<br><br>
Portuguese (Brazilian),
<br><br>
Italian,
<br><br>
Chinese simplified,
<br><br>
Chinese traditional,
<br><br>
Indonesian,
<br><br>
Korean,
<br><br>
Dutch,
<br><br>
Japanese,
<br><br>
Arabic,
<br><br>
Finnish,
<br><br>
Russian,
<br><br>
Polish,
<br><br>
Ukrainian,
<br><br>
Swedish,
<br><br>
Kazakh,
<br><br>
Norwegian,
<br><br>
Hindi
</td>
<td>

French,
<br><br>
Telugu,
<br><br>
Tamil,
<br><br>
Marathi,
<br><br>
Catalan,
<br><br>
Tagalog,
<br><br>
Portuguese (European)
</td>
<td>–
</td>
<td>–
</td>
<td>No
</td>
</tr>
</table>


‘*’ - In these cases, developer concepts are not supported in entity extraction


## NLP Support

Here we will list out the NLP features and their support.

!!! Note

      The Spell Correction feature is not supported in Universal bots.


<table border="1">
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
<td> All languages
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
<td> All languages
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
<td> All languages
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
<td> All languages
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
<td> English
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
<td>

English,
<br><br>
German,
<br><br>
Spanish,
<br><br>
French,
<br><br>
Portuguese (Brazilian),
<br><br>
Portuguese (European),
<br><br>
Italian,
<br><br>
Indonesian,
<br><br>
Korean (from ver7.3),
<br><br>
Dutch,
<br><br>
Arabic,
<br><br>
Finnish,
<br><br>
Russian
<br><br>
Polish,
<br><br>
Ukrainian,
<br><br>
Swedish,
<br><br>
Kazakh,
<br><br>
Norwegian
</td>
<td>

Chinese simplified,
<br><br>
Chinese traditional,
<br><br>
Japanese,
<br><br>
Hindi,
<br><br>
Telugu,
<br><br>
Tamil,
<br><br>
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
<td>

English,
<br><br>
German,
<br><br>
Spanish,
<br><br>
French,
<br><br>
Dutch,
<br><br>
Korean (from ver7.3),
<br><br>
Japanese (from ver8.0),
<br><br>
Russian (from ver8.0),
<br><br>
Kazakh (from ver8.0),
<br><br>
Polish (from ver9.2),
<br><br>
Norwegian,
<br><br>
Portuguese (European)
</td>
<td>

Portuguese (Brazilian),
<br><br>
Italian,
<br><br>
Chinese simplified,
<br><br>
Chinese traditional
<br><br>
Indonesian,
<br><br>
Arabic,
<br><br>
Finnish,
<br><br>
Ukrainian,
<br><br>
Swedish,
<br><br>
Hindi,
<br><br>
Telugu,
<br><br>
Tamil,
<br><br>
Marathi,
<br><br>
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
<td>

English,
<br><br>
German,
<br><br>
Spanish,
<br><br>
French
</td>
<td>

Portuguese (Brazilian),
<br><br>
Portuguese (European),
<br><br>
Italian,
<br><br>
Chinese simplified,
<br><br>
Chinese traditional
<br><br>
Indonesian,
<br><br>
Korean,
<br><br>
Dutch,
<br><br>
Japanese,
<br><br>
Arabic,
<br><br>
Finnish,
<br><br>
Russian
<br><br>
Polish,
<br><br>
Ukrainian,
<br><br>
Swedish,
<br><br>
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
<td>

English,
<br><br>
German (from ver7.3),
<br><br>
Spanish (from ver7.3),
<br><br>
French (from ver7.3),
<br><br>
Portuguese (Brazilian) (from ver7.3),
<br><br>
Italian (from ver7.3),
<br><br>
Indonesian (from ver7.3),
<br><br>
Dutch (from ver7.3),
<br><br>
Finnish (from ver7.3),
<br><br>
Polish (from ver7.3),
<br><br>
Swedish (from ver7.3),
</td>
<td>

Chinese simplified,
<br><br>
Chinese traditional,
<br><br>
Korean,
<br><br>
Japanese,
<br><br>
Arabic,
<br><br>
Russian,
<br><br>
Ukrainian,
<br><br>
Kazakh,
<br><br>
Portuguese (European)
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
<td>

English,
<br><br>
German,
<br><br>
Spanish,
<br><br>
French,
<br><br>
Portuguese (Brazilian),
<br><br>
Portuguese (European),
<br><br>
Italian,
<br><br>
Indonesian,
<br><br>
Korean,
<br><br>
Dutch,
<br><br>
Arabic,
<br><br>
Finnish,
<br><br>
Polish,
<br><br>
Swedish,
<br><br>
Ukrainian
<br><br>
Russian (from ver8.0),
<br><br>
Kazakh (from ver8.0),
<br><br>
Japanese (from ver8.0),
</td>
<td>

Chinese simplified,
<br><br>
Chinese traditional,
<br><br>
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
<td>

German (from ver7.3),
<br><br>
French (from ver7.3),
<br><br>
Italian (from ver8.0)
</td>
<td>

English,
<br><br>
Spanish,
<br><br>
Portuguese (Brazilian),
<br><br>
Chinese simplified,
<br><br>
Chinese traditional
<br><br>
Indonesian,
<br><br>
Korean,
<br><br>
Dutch,
<br><br>
Japanese,
<br><br>
Arabic,
<br><br>
Finnish,
<br><br>
Russian
<br><br>
Polish,
<br><br>
Ukrainian,
<br><br>
Swedish,
<br><br>
Kazakh,
<br><br>
Norwegian,
<br><br>
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



## Universal Bot Support

Here we will list out, language-wise, the trigger phrases used in training the Universal bot ([see here](../../../universal-bots/training-a-universal-bot){:target="_blank"}) in the supported languages.


<table border="1">
<tr>
<td><strong>PHRASE</strong>
</td>
<td colspan="6" ><strong>LANGUAGE SUPPORT</strong>
</td>
</tr>
<tr>
<td><strong>ENGLISH</strong>
</td>
<td><strong>GERMAN</strong>
</td>
<td><strong>SPANISH</strong>
</td>
<td><strong>FRENCH</strong>
</td>

<td><strong>ITALIAN</strong>
</td>
<td><strong>CHINESE</strong>

<strong>SIMPLIFIED</strong>
</td>
<td><strong>CHINESE</strong>

<strong>TRADITIONAL</strong>
</td>
</tr>
<tr>
<td>Ask
</td>
<td>Fragen
</td>
<td>Pedir
</td>
<td>Demander
</td>

<td>Chiedi
</td>
<td>问
</td>
<td>問
</td>
</tr>
<tr>
<td>Tell
</td>
<td>Sagen
</td>
<td>Contar
</td>
<td>Dire
</td>

<td>Raccontare
</td>
<td>告诉
</td>
<td>告訴
</td>
</tr>
<tr>
<td>Search
</td>
<td>Suche
</td>
<td>Buscar
</td>
<td>Chercher
</td>

<td>Ricerca
</td>
<td>搜索
</td>
<td>搜索
</td>
</tr>
<tr>
<td>Open
</td>
<td>Öffnen
</td>
<td>Abierto
</td>
<td>Ouvert
</td>

<td>Aperto
</td>
<td>打开
</td>
<td>打開
</td>
</tr>
<tr>
<td>Load
</td>
<td>Belastung
</td>
<td>Carga
</td>
<td>Charge
</td>

<td>Caricare
</td>
<td>加载
</td>
<td>加載
</td>
</tr>
<tr>
<td>Begin
</td>
<td>Start
</td>
<td>Empezar
</td>
<td>Commencer
</td>

<td>Inizio
</td>
<td>开始
</td>
<td>開始
</td>
</tr>
<tr>
<td>Launch
</td>
<td>Starten
</td>
<td>Lanzamiento
</td>
<td>lancement
</td>

<td>Lanciare
</td>
<td>发射
</td>
<td>發射
</td>
</tr>
<tr>
<td>Talk to
</td>
<td>Reden mit
</td>
<td>Hablar con
</td>
<td>Parler à
</td>

<td>Parlare a
</td>
<td>交谈
</td>
<td>交談
</td>
</tr>
<tr>
<td>Run
</td>
<td>Lauf
</td>
<td>correr
</td>
<td>Courir
</td>

<td>Correre
</td>
<td>跑
</td>
<td>跑
</td>
</tr>
<tr>
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
<td>
</td>
<td>
</td>
</tr>
<tr>
<td>Exit
</td>
<td>ausgang
</td>
<td>salida
</td>
<td>sortie
</td>

<td>uscita
</td>
<td>出口
</td>
<td>出口
</td>
</tr>
</table>



<table border="1">
<tr>
<td><strong>PHRASE</strong>
</td>
<td colspan="6" ><strong>LANGUAGE SUPPORT</strong>
</td>
</tr>
<tr>
<td><strong>ENGLISH</strong>
</td>
<td><strong>INDONESIAN</strong>
</td>
<td><strong>KOREAN</strong>
</td>
<td><strong>DUTCH</strong>
</td>
<td><strong>JAPANESE</strong>
</td>

<td><strong>FINNISH</strong>
</td>
<td><strong>RUSSIAN</strong>
</td>
</tr>
<tr>
<td>Ask
</td>
<td>Meminta
</td>
<td>물어보기
</td>
<td>Vragen
</td>
<td>頼みます
</td>

<td>Kysyä
</td>
<td>Спросить
</td>
</tr>
<tr>
<td>Tell
</td>
<td>Menceritakan
</td>
<td>텔
</td>
<td>Vertellen
</td>
<td>伝えます
</td>

<td>Kertoa
</td>
<td>сказать
</td>
</tr>
<tr>
<td>Search
</td>
<td>Cari
</td>
<td>검색
</td>
<td>Zoeken
</td>
<td>探す
</td>

<td>Hae
</td>
<td>Поиск
</td>
</tr>
<tr>
<td>Open
</td>
<td>Buka
</td>
<td>열다
</td>
<td>Open
</td>
<td>開いた
</td>

<td>Avata
</td>
<td>открыто
</td>
</tr>
<tr>
<td>Load
</td>
<td>Beban
</td>
<td>하중
</td>
<td>Laden
</td>
<td>負荷
</td>

<td>Ladata
</td>
<td>нагрузка
</td>
</tr>
<tr>
<td>Begin
</td>
<td>Mulai
</td>
<td>시작
</td>
<td>Beginnen
</td>
<td>ベギン
</td>

<td>Alkaa
</td>
<td>Начать
</td>
</tr>
<tr>
<td>Launch
</td>
<td>Meluncurkan
</td>
<td>시작하다
</td>
<td>Lancering
</td>
<td>打ち上げ
</td>

<td>Tuoda markkinoille
</td>
<td>запуск
</td>
</tr>
<tr>
<td>Talk to
</td>
<td>Berbicara dengan
</td>
<td>로 토크
</td>
<td>Praten met
</td>
<td>に話す
</td>

<td>Puhua
</td>
<td>Говорить с
</td>
</tr>
<tr>
<td>Run
</td>
<td>Lari
</td>
<td>운영
</td>
<td>Rennen
</td>
<td>ラン
</td>

<td>Juosta
</td>
<td>Запустить
</td>
</tr>
<tr>
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
<td>
</td>
<td>
</td>
</tr>
<tr>
<td>Exit
</td>
<td>keluar
</td>
<td>출구
</td>
<td>uitgang
</td>
<td>出口
</td>

<td>poistuminen
</td>
<td>выход
</td>
</tr>
</table>



<table border="1">
<tr>
<td><strong>PHRASE</strong>
</td>
<td colspan="6" ><strong>LANGUAGE SUPPORT</strong>
</td>
</tr>
<tr>
<td><strong>ENGLISH</strong>
</td>
<td><strong>ARABIC</strong>
</td>
<td><strong>PORTUGUESE</strong>
<strong>(BRAZILIAN)</strong>
</td>
<td><strong>POLISH</strong>
</td>
<td><strong>UKRAINIAN</strong>
</td>
<td><strong>SWEDISH</strong>
</td>
<td><strong>KAZAKH</strong>
</td>
</tr>
<tr>
<td>Ask
</td>
<td>يطلب
</td>
<td>perguntar
</td>
<td>Zapytać
</td>
<td>запитати
</td>
<td>Fråga
</td>
<td>сұрау
</td>
</tr>
<tr>
<td>Tell
</td>
<td>يخبار
</td>
<td>Contar
</td>
<td>Powiedzieć
</td>
<td>сказати
</td>
<td>Säga
</td>
<td>Tell
</td>
</tr>
<tr>
<td>Search
</td>
<td>بحث
</td>
<td>Procurar
</td>
<td>Szukaj
</td>
<td>Пошук
</td>
<td>Sök
</td>
<td>іздеу
</td>
</tr>
<tr>
<td>Open
</td>
<td>افتح
</td>
<td>Aberto
</td>
<td>otwarty
</td>
<td>відчинено
</td>
<td>Öppna
</td>
<td>ашық
</td>
</tr>
<tr>
<td>Load
</td>
<td>حمل
</td>
<td>Carga
</td>
<td>Załaduj
</td>
<td>навантаження
</td>
<td>Ladda
</td>
<td>жүк
</td>
</tr>
<tr>
<td>Begin
</td>
<td>ابدأ
</td>
<td>Início
</td>
<td>Zaczynać
</td>
<td>почати
</td>
<td>Börja
</td>
<td>Баста
</td>
</tr>
<tr>
<td>Launch
</td>
<td>إطلاق
</td>
<td>Lançamento
</td>
<td>Uruchomić
</td>
<td>запуск
</td>
<td>Lansera
</td>
<td>ұшыру
</td>
</tr>
<tr>
<td>Talk to
</td>
<td>تحدث الي
</td>
<td>Falar com
</td>
<td>Mówić do
</td>
<td>Розмовляти з
</td>
<td>Prata med
</td>
<td>Сөйлесу
</td>
</tr>
<tr>
<td>Run
</td>
<td>يركض
</td>
<td>Corre
</td>
<td>Biegać
</td>
<td>пробіг
</td>
<td>Springa
</td>
<td>жүгіру
</td>
</tr>
<tr>
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
<td>
</td>
<td>
</td>
</tr>
<tr>
<td>Exit
</td>
<td>خروج
</td>
<td>saída
</td>
<td>wyjście
</td>
<td>вихід
</td>
<td>utgång
</td>
<td>шығу
</td>
</tr>
</table>

