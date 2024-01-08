
# Multilingual Virtual Assistant Behavior

	

		

			

In the case of multi-lingual bots, while much of the bot behavior does not change with the language, but the language semantics does impose some restrictions. In this document we will list out the different behaviors that would be language-dependent, so you as bot developer can cater for such scenarios.

		

	

	

		

			


## Pattern Support

We have seen in [this document](https://developer.kore.ai/docs/bots/how-tos/how-to-use-patterns-for-intents-entities/), how Patterns can be used for Intent detection and Entity extraction. Those rules are for bots in the English language. Though the multilingual bots honor those rules, the language semantics impose some restrictions.

Also, patterns can also be used in[ Small Talk](https://developer.kore.ai/docs/bots/bot-builder-tool/small-talk/#Terminology) (while defining queries),[ Knowledge Graph](https://developer.kore.ai/docs/bots/bot-builder-tool/knowledge-task/creating-a-knowledge-graph/#Adding_FAQs) (using alternate question field), and[ Trait](https://developer.kore.ai/docs/bots/nlp/traits/#Trait_Definition) identification but their behavior might differ slightly.

		

	

	

		

			


<table>
  <tr>
   <td><strong>Pattern Syntax</strong>
   </td>
   <td colspan="2" ><strong>Intent detection and Entity extraction</strong>
   </td>
   <td><strong>Small</strong>
<p>
<strong>Talk</strong>
   </td>
   <td><strong>Traits</strong>
   </td>
   <td><strong>Knowledge</strong>
<p>
<strong>Graph</strong>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td><strong>Supported in Languages</strong>
   </td>
   <td><strong>Not Supported in Languages</strong>
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
<p>
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
<p>
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
<p>
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
<p>
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
<p>
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
<p>
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
<p>
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
<p>
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
<p>
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
<p>
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
<p>
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
<p>
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
   <td> French,
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


\* in these cases, developer concepts are not supported in entity extraction.

		

	

	

		

			


## NLP Support

Here we will list out the NLP features and their support.

		

	

	

		

			


<table>
  <tr>
   <td><strong>NLP Feature</strong>
   </td>
   <td><strong>Supported in Languages</strong>
   </td>
   <td><strong>Not Supported in Languages</strong>
   </td>
   <td><strong>Small Talk</strong>
   </td>
   <td><strong>Traits</strong>
   </td>
   <td><strong>Knowledge Graph</strong>
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
Polish (from ver9.2),
<p>
Norwegian
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
French
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


		

	

	

		

			


## Universal Bot Support

Here we will list out, language-wise, the trigger phrases used in training the Universal bot ([see here](https://developer.kore.ai/docs/bots/advanced-topics/universal-bot/training-a-universal-bot/)) in the supported languages.


<table>
  <tr>
   <td><strong>Phrase</strong>
   </td>
   <td colspan="7" ><strong>Language Support</strong>
   </td>
  </tr>
  <tr>
   <td><strong>English</strong>
   </td>
   <td><strong>German</strong>
   </td>
   <td><strong>Spanish</strong>
   </td>
   <td><strong>French</strong>
   </td>
   <td><strong>Portuguese</strong>
<p>
<strong>(Brazilian)</strong>
   </td>
   <td><strong>Italian</strong>
   </td>
   <td><strong>Chinese</strong>
<p>
<strong>Simplified</strong>
   </td>
   <td><strong>Chinese</strong>
<p>
<strong>Traditional</strong>
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
   <td>perguntar
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
   <td>Contar
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
   <td>Procurar
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
   <td>Aberto
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
   <td>Carga
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
   <td>Início
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
   <td>Lançamento
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
   <td>Falar com
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
   <td>Corre
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
   <td>saída
   </td>
   <td>uscita
   </td>
   <td>出口
   </td>
   <td>出口
   </td>
  </tr>
</table>


		

	

	

		

			


<table>
  <tr>
   <td><strong>Phrase</strong>
   </td>
   <td colspan="7" ><strong>Language Support</strong>
   </td>
  </tr>
  <tr>
   <td><strong>English</strong>
   </td>
   <td><strong>Indonesian</strong>
   </td>
   <td><strong>Korean</strong>
   </td>
   <td><strong>Dutch</strong>
   </td>
   <td><strong>Japanese</strong>
   </td>
   <td><strong>Arabic</strong>
   </td>
   <td><strong>Finnish</strong>
   </td>
   <td><strong>Russian</strong>
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
   <td>يطلب
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
   <td>يخبار
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
   <td>بحث
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
   <td>افتح
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
   <td>حمل
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
   <td>ابدأ
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
   <td>إطلاق
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
   <td>تحدث الي
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
   <td>يركض
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
   <td>خروج
   </td>
   <td>poistuminen
   </td>
   <td>выход
   </td>
  </tr>
</table>


		

	

	

		

			


<table>
  <tr>
   <td><strong>Phrase</strong>
   </td>
   <td colspan="4" ><strong>Language Support</strong>
   </td>
  </tr>
  <tr>
   <td><strong>English</strong>
   </td>
   <td><strong>Polish</strong>
   </td>
   <td><strong>Ukrainian</strong>
   </td>
   <td><strong>Swedish</strong>
   </td>
   <td><strong>Kazakh</strong>
   </td>
  </tr>
  <tr>
   <td>Ask
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
  </tr>
  <tr>
   <td>Exit
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

