<!-----

----->

# Raw Data API v2

This updated version of the Raw Data API offers the following additional conversation data for deeper insights into AgentAssist interactions and conversation flows:

* Feedback (reason code and feedback text in addition to like/dislike) from the agent.
* Complete generated answers with feedback
* Comprehensive agent activity tracking
* Full end-user utterances
* Dialog task execution details
* Agent search bar activity timing
* Name of the queue involved in the conversation
* Number of times an agent uses the scroll up and scroll down buttons
* Names of the URLs an agent clicks 
* Total number of words or phrases suggested to the agent
* Total number of words or phrases accepted by the agent
* Total number of words or phrases entered by the agent
* Total number of words suggested for correction by the agent
* Total number of auto-corrected words accepted by the agent



<table>
  <tr>
   <td>Method 
   </td>
   <td>GET
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamid}}/v2/agentassistinteractions?from=YYYY-MM-DD-HH24:mm:SS&to=YYYY-MM-DD-HH24:mm:SS&offset=NNNNN&limit=0..100</code>
   </td>
  </tr>
  <tr>
   <td>Content Type
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td>Authorization 
   </td>
   <td>auth: {{JWT}}
<p>
See <a href="../api-introduction/#generating-the-jwt-token">How to generate the JWT Token</a>.
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>AgentAssist Analytics
   </td>
  </tr>
</table>

## **Query Parameters**

<table>
  <tr>
   <td>PARAMETER
   </td>
   <td>DESCRIPTION
   </td>
   <td>MANDATE
   </td>
  </tr>
  <tr>
   <td>from
   </td>
   <td>Start date and time of the interactions in YYYY-MM-DD HH24:mm:SS format.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>to
   </td>
   <td>End date and time of the interactions in YYYY-MM-DD HH24:mm:SS format.
   </td>
   <td>Required
   </td>
  </tr>
</table>

## **Sample Request**

```
curl --location 'https://staging-agentassist.kore.ai/agentassist/api/v1/public/st-f6ea0c31-f910-5b8e-82d8-dcbbc63bdede/v2/agentassistinteractions?from=2024-07-10T06%3A49%3A45&to=2024-07-10T07%3A06%3A25' \
--header 'accountId: 65433af84e520234494caa86' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTE5ZjA0NzU0LWQ4MzQtNTgxOC04NzE0LWYyNGZlYzYxODgxNyJ9.DEVT2UGCTjryY_bDVGmun4-Vcp_R9-b0iRonWaB-xxx'
```

### **Headers**

* accountId (required): The account ID associated with the API request.
* auth (required): Authentication token in the format Bearer &lt;token>.

## **Sample Response**




```
{

    "numResults": 2,

    "data": [

        {

            "conversationID": "atesta-m8r0ii4o",

            "botSessionID": "67e4f9805622dd06277cdfc8",

            "channel": "chat",

            "segmentID": "ac-9c35de2-14b3-472e-bebc-3b5d0da928ec",

            "segmentStartTime": "2025-03-27T07:08:47.597Z",

            "segmentEndTime": "2025-03-27T07:10:36.738Z",

            "countScrollUp": 3,

            "countScrollDn": 2,

            "agent": {

                "agentId": "a-m8r0iiln"

            },

            "tags": [

                {

                    "type": "message",

                    "name": "MessageKey",

                    "value": "MessageKeyVALUE",

                    "messageID": "ms-50f37525-736d-5182-8a54-94711d442730",

                    "createdAt": "2025-03-27T07:08:49.286Z"

                },

                {

                    "type": "session",

                    "name": "SessionKey",

                    "value": "SessionKeyVALUE",

                    "createdAt": "2025-03-27T07:08:48.096Z"

                }

            ],

            "summary": {

                "summaryId": "smr-adab467-72e9-4ec5-8d7a-2aabd1ab2bb0",

                "participant": {

                    "identity": "a-m8r0iiln",

                    "type": "AGENT",

                    "startTime": [],

                    "endTime": []

                },

                "type": "final",

                "summary": "",

                "editedSummary": "We're sorry, but there was a problem generating the summary for this conversation. Please create your own summary",

                "isError": **true**,

                "isDisabled": **false**,

                "isEdited": **true**,

                "exeStartTime": 1743059436693,

                "positionId": "dg-5rp9haf9nn",

                "sumSubTime": 1743059460053,

                "time": 23.36,

                "feedback": {

                    "response": "Down",

                    "reasonCode": [],

                    "comment": "end of summary"

                }

            },

            "agentActions": [

                {

                    "actionType": "SearchBarEntry",

                    "action": {

                        "searchPhrase": "Healthcare System in India, Healthcare India - IBEF",

                        "typingStartTime": "2025-03-27T07:10:02.278Z",

                        "executionStartTime": "2025-03-27T07:10:22.234Z",

                        "displayTime": "2025-03-27T07:10:25.419Z",

                        "suggestionsShown": [

                            "tech are using the wrng worlkss  teh",

                            "teh are using wrnog workds for the tesnsig",

                            "Healthcare System in India, Healthcare India - IBEF"

                        ],

                        "suggestionUsed": 1,

                        "phraseInput": "health teh ",

                        "correctionsPresented": 5,

                        "correctionsAccepted": 0,

                        "countDisplayedAnswers": {

                            "countDialogTasks": 0,

                            "countFaqs": 4,

                            "countWebPages": 5,

                            "countFiles": 2,

                            "countAnswers": 0,

                            "countFromNonNativeDataSource": 0

                        },

                        "suggestions": {

                            "faqs": [

                                {

                                    "sources": [

                                        {

                                            "title": "Which Insurance Companies offer Health Insurance Policies in India?",

                                            "url": "",

                                            "sourceType": "searchassist"

                                        }

                                    ],

                                    "content": "Which Insurance Companies offer Health Insurance Policies in India?",

                                    "positionId": "dg-r74fpqb3at",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "Resend OTP",

                                            "url": "",

                                            "sourceType": "searchassist"

                                        }

                                    ],

                                    "content": "Resend OTP",

                                    "positionId": "dg-9d54h4frdq",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "What is AYUSH Hospital?",

                                            "url": "",

                                            "sourceType": "searchassist"

                                        }

                                    ],

                                    "content": "What is AYUSH Hospital?",

                                    "positionId": "dg-cxd507th16",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "What is AYUSH Treatment? Whether AYUSH Treatment is allowed in all Health Insurance Policies?",

                                            "url": "",

                                            "sourceType": "searchassist"

                                        }

                                    ],

                                    "content": "What is AYUSH Treatment? Whether AYUSH Treatment is allowed in all Health Insurance Policies?",

                                    "positionId": "dg-6xl89hve93h",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                }

                            ],

                            "web": [

                                {

                                    "sources": [

                                        {

                                            "title": "Healthcare System in India, Healthcare India - IBEF",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.ibef.org%2Findustry%2Fhealthcare-india&requestId=fsh-d3151f01-dd6d-5e3f-9229-956019b4343d&contentId=fc-00b44114-9bde-44ae-8084-9bb999676e8c&hId=955b136584ad076fd0309d69a6e3f3377e0920e960140f2cbdc955ca934d1c50"

                                        }

                                    ],

                                    "content": "",

                                    "positionId": "dg-ia5xj3w1yd",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "Healthcare in India - Wikipedia",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FHealthcare_in_India&requestId=fsh-d3151f01-dd6d-5e3f-9229-956019b4343d&contentId=fc-6a06e2f8-90d0-4786-95bc-e8a27c3ff07e&hId=9f48681f49da231e23e26f724b14982af0fab99e37481748b2270f90e7e6b7f7"

                                        }

                                    ],

                                    "content": "",

                                    "positionId": "dg-vhmrypq1wj",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "India's Ayush Industry & National AYUSH Mission | IBEF",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.ibef.org%2Findustry%2Fayush&requestId=fsh-d3151f01-dd6d-5e3f-9229-956019b4343d&contentId=fc-9a13b295-68c5-4557-94ba-81b6b7f07e90&hId=5aa0dcbff3bcac7296ea50804593759ffa5e2bda8f19abea62c626442657b2c0"

                                        }

                                    ],

                                    "content": "",

                                    "positionId": "dg-mtzuxnhj55l",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "Banking in India: Growth, Trends, and Opportunities | IBEF",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.ibef.org%2Findustry%2Fbanking-india&requestId=fsh-d3151f01-dd6d-5e3f-9229-956019b4343d&contentId=fc-22a47b6a-e277-4a0a-9461-b4d5a2892fa2&hId=80e6d5170e6c1fd3dba566ba55dbcc1e33cdd8fc46c6fc5649504140851ac1f4"

                                        }

                                    ],

                                    "content": "",

                                    "positionId": "dg-zhx6h4ouktk",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "Indian Agriculture Sector, Farming in India | IBEF",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.ibef.org%2Findustry%2Fagriculture-india&requestId=fsh-d3151f01-dd6d-5e3f-9229-956019b4343d&contentId=fc-ce79586c-3d4e-48a4-899c-7b149f2e5341&hId=8123ccc5b0412d4d6d3bee33e7ec97756c566921ad3a30907748426ade275aa6"

                                        }

                                    ],

                                    "content": "",

                                    "positionId": "dg-5vvxexjlll",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                }

                            ],

                            "file": [

                                {

                                    "sources": [

                                        {

                                            "title": "PM",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fnha.gov.in%2FPM-JAY&requestId=fsh-d3151f01-dd6d-5e3f-9229-956019b4343d&contentId=fc-5a9dc6d5-3eef-5401-94e8-713cf93ea19d&hId=b5806f5bfd92daf057022b418ea1b84043eb18a6d28050117f56671925bdc19f"

                                        }

                                    ],

                                    "content": "flag [img&#x2F;resources&#x2F;flag.jpg] भारत सरकार GOVERNMENT OF &lt;span class=\"highlightText\">INDIA&lt;/span> [https:&#x2F;&#x2F;www.mygov.in&#x2F;] * 14555 [tel:14555] * Screen Reader Access [https:&#x2F;&#x2F;pmjay.gov.in&#x2F;screen_reader] * Skip to main content * &#x2F;sitemap.xml * https:&#x2F;&#x2F;www.facebook.com&#x2F;AyushmanBharatGoI * https:&#x2F;&#x2F;twitter.com&#x2F;ayushmannha * https:&#x2F;&#x2F;www.youtube.com&#x2F;channel&#x2F;UCkd7w2rww0HQB4lZ-l3dB6g * https:&#x2F;&#x2F;www.linkedin.com&#x2F;company&#x2F;ayushmanbharatgoi&#x2F; * https:&#x2F;&#x2F;www.instagram.com&#x2F;ayushmanbharatnha&#x2F; * Quora image [img&#x2F;gallery&#x2F;quora.png] [https:&#x2F;&#x2F;www.quora.com&#x2F;profile&#x2F;Ayushman-Bharat-9?ch=3&amp;share=25d97ee9&amp;srid=bdecg] * A+ [javascript:;] * A [javascript:;] * A- [javascript:;] NHA [img&#x2F;resources&#x2F;logo.svg] [https:&#x2F;&#x2F;nha.gov.in&#x2F;] IYC [img&#x2F;resources&#x2F;iyc.png] [https:&#x2F;&#x2F;nha.gov.in&#x2F;] NATIONAL HEALTH AUTHORITY PM-JAY [img&#x2F;resources&#x2F;pmjay.png] [https:&#x2F;&#x2F;pmjay.gov.in&#x2F;] * index.php * Home [https:&#x2F;&#x2F;nha.gov.in&#x2F;] * About Us * NHA [NHA.php] * Who&#x27;s who [Whos-who.php] * PM-JAY [PM-JAY.php] * ABDM [NDHM.php] * PM-JAY [https:&#x2F;&#x2F;pmjay.gov.in&#x2F;] * ABDM [https:&#x2F;&#x2F;ndhm.gov.in&#x2F;] * Blog [https:&#x2F;&#x2F;pmjay.gov.in&#x2F;Blogs-list] * Connect with Us * Careers [Careers.php] * Contact Us [Contact-Us.php] * Tenders and Procurement [Tenders-Procurement.php] * Circulars [circulars.php] * PMJAY Dashboard [https:&#x2F;&#x2F;dashboard.pmjay.gov.in&#x2F;pmj&#x2F;#&#x2F;] * ABDM Dashboard [https:&#x2F;&#x2F;dashboard.abdm.gov.in&#x2F;abdm&#x2F;] * PMJAY for 70+ * Enrol for PMJAY for 70+ [https:&#x2F;&#x2F;beneficiary.nha.gov.in&#x2F;] * List of Empanelled Hospitals [https:&#x2F;&#x2F;hem.nha.gov.in&#x2F;search] * FAQs [img&#x2F;resources&#x2F;English_FAQs_related_to_the_benefits_for_senior_citizens.pdf] * How to Make Ayushman Card [https:&#x2F;&#x2F;youtube.com&#x2F;playlist?list=PLYcj0BpCoCc4yDCm7A4xxsjkg4gmxnWre&amp;si=6B2-_rj9TFB0fA-k] * Give a Missed Call [missedcall.php] * Am I Eligible [img&#x2F;resources&#x2F;am-i-eligible.png] [https:&#x2F;&#x2F;beneficiary.nha.gov.in&#x2F;] * find1 [img&#x2F;resources&#x2F;find1.png] [https:&#x2F;&#x2F;hospitals.pmjay.gov.in&#x2F;Search&#x2F;empnlWorkFlow.htm?actionFlag=ViewRegisteredHosptlsNew] * Grievance Portal [img&#x2F;resources&#x2F;grivence.png] [https:&#x2F;&#x2F;cgrms.pmjay.gov.in&#x2F;GRMS&#x2F;] [https:&#x2F;&#x2F;pmjay.gov.in&#x2F;MAP&#x2F;images&#x2F;icons&#x2F;inner_bg2.png] ABOUT PRADHAN MANTRI JAN AROGYA YOJANA (PM-JAY) * Home [index.php] * About Pradhan Mantri Jan Arogya Yojana (PM-JAY) * About Ayushman Bharat * Background * Criteria&#x2F;Coverage * Implementation * Financing * Hospital Empanelment * Packages and Rates * IT System * Awareness * Support Systems * Convergence AYUSHMAN BHARAT Ayushman Bharat, a flagship scheme of Government of India, was launched as",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "NLM",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fpmc.ncbi.nlm.nih.gov%2Farticles%2FPMC3093249%2F&requestId=fsh-d3151f01-dd6d-5e3f-9229-956019b4343d&contentId=fc-3137891f-fc01-5678-ba83-c6d6aaa910de&hId=bd9e0969b148275c4ce053ddc2c6b8a4bba1e21e1f6833cb6ef7cee9e023ed9b"

                                        }

                                    ],

                                    "content": "Skip to main content [/static/img/us_flag.svg] An official website of the United States government Here's how you know Here's how you know [/static/img/icon-dot-gov.svg] Official websites use .gov A .gov website belongs to an official government organization in the United States. [/static/img/icon-https.svg] Secure .gov websites use HTTPS A lock ( Locked padlock icon ) or https:// means you've safely connected to the .gov website. Share sensitive information only on official, secure websites. NCBI home page [/static/img/ncbi-logos/nih-nlm-ncbi--white.svg] [https://www.ncbi.nlm.nih.gov/] Search Log in * Dashboard [https://www.ncbi.nlm.nih.gov/myncbi/] * Publications [https://www.ncbi.nlm.nih.gov/myncbi/collections/bibliography/] * Account settings [https://www.ncbi.nlm.nih.gov/account/settings/] * Log out Search… Search NCBI Primary site navigation Close [/static/img/usa-icons/close.svg] Search Search [data:] Logged in as: * Dashboard [https://www.ncbi.nlm.nih.gov/myncbi/] * Publications [https://www.ncbi.nlm.nih.gov/myncbi/collections/bibliography/] * Account settings [https://www.ncbi.nlm.nih.gov/account/settings/] Log in Search PMC Full-Text Archive Search in PMC Search [/static/img/usa-icons-bg/search--white.svg] * Advanced Search [https://www.ncbi.nlm.nih.gov/pmc/advanced/] * Journal List [/journals/] * User Guide [/about/userguide/] * * https://doi.org/10.1016/S0140-6736(10)61894-6 * pdf/nihms292456.pdf * * * PERMALINK Copy As a library, NLM provides access to scientific literature. Inclusion in an NLM database does not imply endorsement of, or agreement with, the contents by NLM or the National Institutes of Health. Learn more: PMC Disclaimer [/about/disclaimer/] | PMC Copyright Notice [/about/copyright/] NIHPA Author Manuscripts logo [https://cdn.ncbi.nlm.nih.gov/pmc/banners/logo-nihpa.png] Lancet . Author manuscript; available in PMC: 2011 May 12. Published in final edited form as: Lancet. 2011 Jan 10;377(9764):505–515. doi: 10.1016/S0140-6736(10)61894-6 [https://doi.org/10.1016/S0140-6736(10)61894-6] * Search in PMC [https://www.ncbi.nlm.nih.gov/pmc/?term=%22Lancet%22%5Bjour%5D] * Search in PubMed [https://pubmed.ncbi.nlm.nih.gov/?term=%22Lancet%22%5Bjour%5D] * View in NLM Catalog [https://www.ncbi.nlm.nih.gov/nlmcatalog?term=%22Lancet%22%5BTitle%20Abbreviation%5D] * Add to search [?term=%22Lancet%22%5Bjour%5D] HEALTH CARE AND EQUITY IN INDIA Yarlini Balarajan [https://pubmed.ncbi.nlm.nih.gov/?term=%22Ba",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                }

                            ]

                        }

                    },

                    "used": []

                }

            ],

            "proActiveSuggestions": [

                {

                    "utterance": "purchase TV",

                    "countDisplayedAnswers": {

                        "countDialogTasks": 0,

                        "countFaqs": 0,

                        "countWebPages": 0,

                        "countFiles": 0,

                        "countAnswers": 0,

                        "countFromNonNativeDataSource": 0

                    },

                    "used": [

                        {

                            "targetType": "DialogTask",

                            "target": {

                                "positionId": "dg-3afuyhf79k",

                                "name": "purchase TV",

                                "runType": "assist",

                                "status": "completed",

                                "startTime": "2025-03-27T07:08:49.339Z",

                                "endTime": "2025-03-27T07:09:40.284Z",

                                "suggestionsCount": {

                                    "tellCustomer": 1,

                                    "askCustomer": 2,

                                    "tellUsed": 0,

                                    "askUsed": 0

                                },

                                "linksClicked": []

                            },

                            "feedback": {

                                "response": "Up",

                                "reasonCode": [],

                                "comment": ""

                            }

                        }

                    ]

                },

                {

                    "displayTime": "2025-03-27T07:09:43.222Z",

                    "utterance": "{\"type\":\"template\",\"payload\":{\"template_type\":\"quick_replies\",\"text\":\"Which TV would you like to buy ?\",\"quick_replies\":[{\"content_type\":\"text\",\"title\":\"Samsung\",\"payload\":\"Samsung\"},{\"content_type\":\"text\",\"title\":\"Sansui\",\"payload\":\"Sansui\"},{\"content_type\":\"text\",\"title\":\"LG\",\"payload\":\"LG\"},{\"content_type\":\"text\",\"title\":\"Onida\",\"payload\":\"Onida\"},{\"content_type\":\"text\",\"title\":\"Lava\",\"payload\":\"Lava\"}]}}",

                    "countDisplayedAnswers": {

                        "countDialogTasks": 1,

                        "countFaqs": 0,

                        "countWebPages": 0,

                        "countFiles": 0,

                        "countAnswers": 0,

                        "countFromNonNativeDataSource": 0

                    },

                    "suggestions": {

                        "dialogs": [

                            {

                                "name": "purchase TV"

                            }

                        ]

                    },

                    "used": []

                }

            ]

        },

        {

            "conversationID": "one",

            "botSessionID": "67e4faec5622dd06277ce9a6",

            "channel": "chat",

            "segmentID": "ac-71373a9-7ed4-44ed-add2-bb87b4d853ce",

            "segmentStartTime": "2025-03-27T07:14:52.453Z",

            "segmentEndTime": "2025-03-27T07:17:03.479Z",

            "countScrollUp": 2,

            "countScrollDn": 1,

            "agent": {

                "agentId": "a-m8r0qfq8"

            },

            "tags": [

                {

                    "type": "message",

                    "name": "MessageKey",

                    "value": "MessageKeyVALUE",

                    "messageID": "ms-48d4e698-a58f-5614-8dac-7b64830d266c",

                    "createdAt": "2025-03-27T07:14:54.054Z"

                },

                {

                    "type": "session",

                    "name": "SessionKey",

                    "value": "SessionKeyVALUE",

                    "createdAt": "2025-03-27T07:14:52.901Z"

                }

            ],

            "summary": {

                "summaryId": "smr-36447c3-6b19-4031-b308-0a16ba70cdb9",

                "participant": {

                    "identity": "a-m8r0qfq8",

                    "type": "AGENT",

                    "startTime": [],

                    "endTime": []

                },

                "type": "final",

                "summary": "The customer initiated the conversation by requesting to check their account balance. The agent confirmed they could assist and asked for the account number. The customer provided the account number, and the agent successfully retrieved and shared the account balance with the customer.",

                "editedSummary": "",

                "isError": **false**,

                "isDisabled": **false**,

                "isEdited": **false**,

                "time": 3.724,

                "exeStartTime": 1743059823434,

                "positionId": "dg-g7jtkdzfn3",

                "sumSubTime": 1743059827158,

                "feedback": {

                    "response": "Up",

                    "reasonCode": [],

                    "comment": ""

                }

            },

            "agentActions": [

                {

                    "actionType": "SearchBarEntry",

                    "action": {

                        "searchPhrase": "the health ",

                        "typingStartTime": "2025-03-27T07:15:56.154Z",

                        "executionStartTime": "2025-03-27T07:16:20.916Z",

                        "displayTime": "2025-03-27T07:16:23.527Z",

                        "suggestionsShown": [

                            "Healthcare System in India, Healthcare India - IBEF",

                            "Which Insurance Companies offer Health Insurance Policies in India?",

                            "Whether pre-existing diseases are covered under a health insurance policy?"

                        ],

                        "suggestionUsed": 0,

                        "phraseInput": "the health",

                        "correctionsPresented": 0,

                        "correctionsAccepted": 0,

                        "countDisplayedAnswers": {

                            "countDialogTasks": 0,

                            "countFaqs": 5,

                            "countWebPages": 5,

                            "countFiles": 2,

                            "countAnswers": 0,

                            "countFromNonNativeDataSource": 0

                        },

                        "suggestions": {

                            "faqs": [

                                {

                                    "sources": [

                                        {

                                            "title": "What is Health Insurance Business?",

                                            "url": "",

                                            "sourceType": "searchassist"

                                        }

                                    ],

                                    "content": "What is Health Insurance Business?",

                                    "positionId": "dg-ocauktyzxr",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "How Cost of pre-insurance health checkup is treated by Life, General and Health Insurers:",

                                            "url": "",

                                            "sourceType": "searchassist"

                                        }

                                    ],

                                    "content": "How Cost of pre-insurance health checkup is treated by Life, General and Health Insurers:",

                                    "positionId": "dg-de62u38hqm",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "What is the maximum age at entry for taking a Health Insurance policy? Whether Health Insurance is available lifelong once taken a policy?",

                                            "url": "",

                                            "sourceType": "searchassist"

                                        }

                                    ],

                                    "content": "What is the maximum age at entry for taking a Health Insurance policy? Whether Health Insurance is available lifelong once taken a policy?",

                                    "positionId": "dg-gvh4kxduz4",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "Are there any principles on charging premium for Health Insurance coverage?",

                                            "url": "",

                                            "sourceType": "searchassist"

                                        }

                                    ],

                                    "content": "Are there any principles on charging premium for Health Insurance coverage?",

                                    "positionId": "dg-0tfd1rmvx5",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "Whether pre-existing diseases are covered under a health insurance policy?",

                                            "url": "",

                                            "sourceType": "searchassist"

                                        }

                                    ],

                                    "content": "Whether pre-existing diseases are covered under a health insurance policy?",

                                    "positionId": "dg-46e9q4qbtu",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                }

                            ],

                            "web": [

                                {

                                    "sources": [

                                        {

                                            "title": "Healthcare in India - Wikipedia",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FHealthcare_in_India&requestId=fsh-3ee85986-9719-5f2f-af67-490b279bd14c&contentId=fc-6a06e2f8-90d0-4786-95bc-e8a27c3ff07e&hId=30122dfa0b72cdab55da0510bfd66f1aa35a9d21360139e68dcac9c97d914579"

                                        }

                                    ],

                                    "content": "",

                                    "positionId": "dg-1t7l31zscl",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "Healthcare System in India, Healthcare India - IBEF",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.ibef.org%2Findustry%2Fhealthcare-india&requestId=fsh-3ee85986-9719-5f2f-af67-490b279bd14c&contentId=fc-00b44114-9bde-44ae-8084-9bb999676e8c&hId=fa59bff40db0b1a2c4b7c09105a39b74ba54f1a10dc966fef3ecca0af51898eb"

                                        }

                                    ],

                                    "content": "",

                                    "positionId": "dg-qsszke3j3d",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "Wikipedia:Contents - Wikipedia",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FWikipedia%3AContents&requestId=fsh-3ee85986-9719-5f2f-af67-490b279bd14c&contentId=fc-1760b4b0-e054-4fc3-a923-3b95753054a8&hId=d1cfaa3793de681a6ebad627658ed148720743724ddd17cffad120ab3a8e9a82"

                                        }

                                    ],

                                    "content": "",

                                    "positionId": "dg-2y86t0d3s6",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "India's Ayush Industry & National AYUSH Mission | IBEF",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.ibef.org%2Findustry%2Fayush&requestId=fsh-3ee85986-9719-5f2f-af67-490b279bd14c&contentId=fc-9a13b295-68c5-4557-94ba-81b6b7f07e90&hId=7346e1f933e36977a8ae8d9783bfd44ddb2c5f02e12cbecbff7584c8ec6d8880"

                                        }

                                    ],

                                    "content": "",

                                    "positionId": "dg-gwthaiix84",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "Wikipedia:Community portal - Wikipedia",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FWikipedia%3ACommunity_portal&requestId=fsh-3ee85986-9719-5f2f-af67-490b279bd14c&contentId=fc-bf4bd8f3-cc7a-4576-998c-ea48c3e81c13&hId=3a9d3d5134bf24896d929efe396c8b3e4d69051db46a5c00439769654df9b19f"

                                        }

                                    ],

                                    "content": "",

                                    "positionId": "dg-aeb7kjnub",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                }

                            ],

                            "file": [

                                {

                                    "sources": [

                                        {

                                            "title": "PM",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fnha.gov.in%2FPM-JAY&requestId=fsh-3ee85986-9719-5f2f-af67-490b279bd14c&contentId=fc-5a9dc6d5-3eef-5401-94e8-713cf93ea19d&hId=f8fd33572eeb20cd65b7866fb184fbb911c18f9888ee2ae277402afac1d6490d"

                                        }

                                    ],

                                    "content": "flag [img&#x2F;resources&#x2F;flag.jpg] भारत सरकार GOVERNMENT OF INDIA [https:&#x2F;&#x2F;www.mygov.in&#x2F;] * 14555 [tel:14555] * Screen Reader Access [https:&#x2F;&#x2F;pmjay.gov.in&#x2F;screen_reader] * Skip to main content * &#x2F;sitemap.xml * https:&#x2F;&#x2F;www.facebook.com&#x2F;AyushmanBharatGoI * https:&#x2F;&#x2F;twitter.com&#x2F;ayushmannha * https:&#x2F;&#x2F;www.youtube.com&#x2F;channel&#x2F;UCkd7w2rww0HQB4lZ-l3dB6g * https:&#x2F;&#x2F;www.linkedin.com&#x2F;company&#x2F;ayushmanbharatgoi&#x2F; * https:&#x2F;&#x2F;www.instagram.com&#x2F;ayushmanbharatnha&#x2F; * Quora image [img&#x2F;gallery&#x2F;quora.png] [https:&#x2F;&#x2F;www.quora.com&#x2F;profile&#x2F;Ayushman-Bharat-9?ch=3&amp;share=25d97ee9&amp;srid=bdecg] * A+ [javascript:;] * A [javascript:;] * A- [javascript:;] NHA [img&#x2F;resources&#x2F;logo.svg] [https:&#x2F;&#x2F;nha.gov.in&#x2F;] IYC [img&#x2F;resources&#x2F;iyc.png] [https:&#x2F;&#x2F;nha.gov.in&#x2F;] NATIONAL &lt;span class=\"highlightText\">HEALTH&lt;/span> AUTHORITY PM-JAY [img&#x2F;resources&#x2F;pmjay.png] [https:&#x2F;&#x2F;pmjay.gov.in&#x2F;] * index.php * Home [https:&#x2F;&#x2F;nha.gov.in&#x2F;] * About Us * NHA [NHA.php] * Who&#x27;s who [Whos-who.php] * PM-JAY [PM-JAY.php] * ABDM [NDHM.php] * PM-JAY [https:&#x2F;&#x2F;pmjay.gov.in&#x2F;] * ABDM [https:&#x2F;&#x2F;ndhm.gov.in&#x2F;] * Blog [https:&#x2F;&#x2F;pmjay.gov.in&#x2F;Blogs-list] * Connect with Us * Careers [Careers.php] * Contact Us [Contact-Us.php] * Tenders and Procurement [Tenders-Procurement.php] * Circulars [circulars.php] * PMJAY Dashboard [https:&#x2F;&#x2F;dashboard.pmjay.gov.in&#x2F;pmj&#x2F;#&#x2F;] * ABDM Dashboard [https:&#x2F;&#x2F;dashboard.abdm.gov.in&#x2F;abdm&#x2F;] * PMJAY for 70+ * Enrol for PMJAY for 70+ [https:&#x2F;&#x2F;beneficiary.nha.gov.in&#x2F;] * List of Empanelled Hospitals [https:&#x2F;&#x2F;hem.nha.gov.in&#x2F;search] * FAQs [img&#x2F;resources&#x2F;English_FAQs_related_to_the_benefits_for_senior_citizens.pdf] * How to Make Ayushman Card [https:&#x2F;&#x2F;youtube.com&#x2F;playlist?list=PLYcj0BpCoCc4yDCm7A4xxsjkg4gmxnWre&amp;si=6B2-_rj9TFB0fA-k] * Give a Missed Call [missedcall.php] * Am I Eligible [img&#x2F;resources&#x2F;am-i-eligible.png] [https:&#x2F;&#x2F;beneficiary.nha.gov.in&#x2F;] * find1 [img&#x2F;resources&#x2F;find1.png] [https:&#x2F;&#x2F;hospitals.pmjay.gov.in&#x2F;Search&#x2F;empnlWorkFlow.htm?actionFlag=ViewRegisteredHosptlsNew] * Grievance Portal [img&#x2F;resources&#x2F;grivence.png] [https:&#x2F;&#x2F;cgrms.pmjay.gov.in&#x2F;GRMS&#x2F;] [https:&#x2F;&#x2F;pmjay.gov.in&#x2F;MAP&#x2F;images&#x2F;icons&#x2F;inner_bg2.png] ABOUT PRADHAN MANTRI JAN AROGYA YOJANA (PM-JAY) * Home [index.php] * About Pradhan Mantri Jan Arogya Yojana (PM-JAY) * About Ayushman Bharat * Background * Criteria&#x2F;Coverage * Implementation * Financing * Hospital Empanelment * Packages and Rates * IT System * Awareness * Support Systems * Convergence AYUSHMAN BHARAT Ayushman Bharat, a flagship scheme of Government of India, was launched as",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                },

                                {

                                    "sources": [

                                        {

                                            "title": "NLM",

                                            "url": "https://searchassist.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fpmc.ncbi.nlm.nih.gov%2Farticles%2FPMC3093249%2F&requestId=fsh-3ee85986-9719-5f2f-af67-490b279bd14c&contentId=fc-3137891f-fc01-5678-ba83-c6d6aaa910de&hId=f4ac9a56d3759aa3ec75c768cfb2c7dff73879dd4bec6169adc1438f20d7d545"

                                        }

                                    ],

                                    "content": "Skip to main content [/static/img/us_flag.svg] An official website of the United States government Here's how you know Here's how you know [/static/img/icon-dot-gov.svg] Official websites use .gov A .gov website belongs to an official government organization in the United States. [/static/img/icon-https.svg] Secure .gov websites use HTTPS A lock ( Locked padlock icon ) or https:// means you've safely connected to the .gov website. Share sensitive information only on official, secure websites. NCBI home page [/static/img/ncbi-logos/nih-nlm-ncbi--white.svg] [https://www.ncbi.nlm.nih.gov/] Search Log in * Dashboard [https://www.ncbi.nlm.nih.gov/myncbi/] * Publications [https://www.ncbi.nlm.nih.gov/myncbi/collections/bibliography/] * Account settings [https://www.ncbi.nlm.nih.gov/account/settings/] * Log out Search… Search NCBI Primary site navigation Close [/static/img/usa-icons/close.svg] Search Search [data:] Logged in as: * Dashboard [https://www.ncbi.nlm.nih.gov/myncbi/] * Publications [https://www.ncbi.nlm.nih.gov/myncbi/collections/bibliography/] * Account settings [https://www.ncbi.nlm.nih.gov/account/settings/] Log in Search PMC Full-Text Archive Search in PMC Search [/static/img/usa-icons-bg/search--white.svg] * Advanced Search [https://www.ncbi.nlm.nih.gov/pmc/advanced/] * Journal List [/journals/] * User Guide [/about/userguide/] * * https://doi.org/10.1016/S0140-6736(10)61894-6 * pdf/nihms292456.pdf * * * PERMALINK Copy As a library, NLM provides access to scientific literature. Inclusion in an NLM database does not imply endorsement of, or agreement with, the contents by NLM or the National Institutes of Health. Learn more: PMC Disclaimer [/about/disclaimer/] | PMC Copyright Notice [/about/copyright/] NIHPA Author Manuscripts logo [https://cdn.ncbi.nlm.nih.gov/pmc/banners/logo-nihpa.png] Lancet . Author manuscript; available in PMC: 2011 May 12. Published in final edited form as: Lancet. 2011 Jan 10;377(9764):505–515. doi: 10.1016/S0140-6736(10)61894-6 [https://doi.org/10.1016/S0140-6736(10)61894-6] * Search in PMC [https://www.ncbi.nlm.nih.gov/pmc/?term=%22Lancet%22%5Bjour%5D] * Search in PubMed [https://pubmed.ncbi.nlm.nih.gov/?term=%22Lancet%22%5Bjour%5D] * View in NLM Catalog [https://www.ncbi.nlm.nih.gov/nlmcatalog?term=%22Lancet%22%5BTitle%20Abbreviation%5D] * Add to search [?term=%22Lancet%22%5Bjour%5D] HEALTH CARE AND EQUITY IN INDIA Yarlini Balarajan [https://pubmed.ncbi.nlm.nih.gov/?term=%22Ba",

                                    "appInfo": {

                                        "appName": "Prod SA",

                                        "featureFlag": "external",

                                        "product": "searchai",

                                        "_id": "67d2bf2595de4b4d5bb32e84",

                                        "displayLines": 4

                                    }

                                }

                            ]

                        }

                    },

                    "used": [

                        {

                            "targetType": "faq",

                            "positionId": "dg-ocauktyzxr",

                            "target": {

                                "title": "What is Health Insurance Business?"

                            },

                            "feedback": {

                                "response": "Up",

                                "reasonCode": [],

                                "comment": ""

                            }

                        }

                    ]

                }

            ],

            "proActiveSuggestions": [

                {

                    "utterance": "purchase TV",

                    "countDisplayedAnswers": {

                        "countDialogTasks": 0,

                        "countFaqs": 0,

                        "countWebPages": 0,

                        "countFiles": 0,

                        "countAnswers": 0,

                        "countFromNonNativeDataSource": 0

                    },

                    "used": [

                        {

                            "targetType": "DialogTask",

                            "target": {

                                "positionId": "dg-vfi5an2rka",

                                "name": "purchase TV",

                                "runType": "assist",

                                "status": "completed",

                                "startTime": "2025-03-27T07:14:54.124Z",

                                "endTime": "2025-03-27T07:15:04.231Z",

                                "suggestionsCount": {

                                    "tellCustomer": 1,

                                    "askCustomer": 2,

                                    "tellUsed": 0,

                                    "askUsed": 0

                                },

                                "linksClicked": []

                            },

                            "feedback": {

                                "response": "Down",

                                "reasonCode": [

                                    "Time Taking"

                                ],

                                "comment": "Time taking feed back clicked thumbs downfor the dialog in the assist tab"

                            }

                        }

                    ]

                },

                {

                    "displayTime": "2025-03-27T07:15:07.120Z",

                    "utterance": "{\"type\":\"template\",\"payload\":{\"template_type\":\"quick_replies\",\"text\":\"Which TV would you like to buy ?\",\"quick_replies\":[{\"content_type\":\"text\",\"title\":\"Samsung\",\"payload\":\"Samsung\"},{\"content_type\":\"text\",\"title\":\"Sansui\",\"payload\":\"Sansui\"},{\"content_type\":\"text\",\"title\":\"LG\",\"payload\":\"LG\"},{\"content_type\":\"text\",\"title\":\"Onida\",\"payload\":\"Onida\"},{\"content_type\":\"text\",\"title\":\"Lava\",\"payload\":\"Lava\"}]}}",

                    "countDisplayedAnswers": {

                        "countDialogTasks": 1,

                        "countFaqs": 0,

                        "countWebPages": 0,

                        "countFiles": 0,

                        "countAnswers": 0,

                        "countFromNonNativeDataSource": 0

                    },

                    "suggestions": {

                        "dialogs": [

                            {

                                "name": "purchase TV"

                            }

                        ]

                    },

                    "used": []

                }

            ]

        },

        {

 

```




 




## **Response Body Parameters**


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>TYPE AND FORMAT</strong>
   </td>
   <td><strong>DESCRIPTION AND EXAMPLE</strong>
   </td>
  </tr>
  <tr>
   <td>numResults
   </td>
   <td>integer
   </td>
   <td>number of results sent in this response
   </td>
  </tr>
  <tr>
   <td>hasMore
   </td>
   <td>boolean (True / False)
   </td>
   <td>if there are any more pages left with results.
<p>
Example: “false” without the double-quotes
   </td>
  </tr>
  <tr>
   <td>data
   </td>
   <td>array of <em>segment </em>objects
   </td>
   <td>Each segment is a part of a conversation that is driven by one primary agent.
   </td>
  </tr>
  <tr>
   <td>data[].conversationID
   </td>
   <td>–
   </td>
   <td>unique id of the conversation – from customer
   </td>
  </tr>
  <tr>
   <td>data[].botSessionID
   </td>
   <td>alphanumeric string
   </td>
   <td>unique id of the session – from Kore.
<p>
Example: “667fc3b587b5fd0fbf97d4de”
   </td>
  </tr>
  <tr>
   <td>data[].channel
   </td>
   <td>string
   </td>
   <td>channel name – from customer.
<p>
Example: “chat”
   </td>
  </tr>
  <tr>
   <td>data[].segmentID
   </td>
   <td>type-prefixed uuid
   </td>
   <td>unique id of the segment, prefixed by “ac” – from Kore.
<p>
Example: “ac-de166b2-1e14-4141-9061-9bca0203b068”
   </td>
  </tr>
  <tr>
   <td>data[].agent
   </td>
   <td>object
   </td>
   <td>object containing data of the primary agent servicing this portion (aka segment) of the conversation.
<p>
All data is optional (except agentID), and comes from the customer via the process API
   </td>
  </tr>
  <tr>
   <td>data[].agent.firstName
   </td>
   <td>string
   </td>
   <td>agent’s first name – from customer.
<p>
Example: “John”
   </td>
  </tr>
  <tr>
   <td>data[].agent.lastName
   </td>
   <td>string
   </td>
   <td>agent’s last name – from customer.
<p>
Example: “Smith”
   </td>
  </tr>
  <tr>
   <td>data[].agent.email
   </td>
   <td>string of valid email address
   </td>
   <td>agent’s email address – from customer.
<p>
Example: “john.smith@example.com”
   </td>
  </tr>
  <tr>
   <td>data[].agent.name
   </td>
   <td>string
   </td>
   <td>agent name – from customer.
<p>
Example: “John Smith”
   </td>
  </tr>
  <tr>
   <td>data[].agent.agentId
   </td>
   <td>string
   </td>
   <td>unique id of the agent- from customer.
<p>
Example: “jsmith01”
   </td>
  </tr>
  <tr>
   <td>data[].tags
   </td>
   <td>array of tag objects
   </td>
   <td>Each tag is one created by bot developers at various points in the Dialog.
<p>
All tags emitted by the bot at any point during this portion of the conversation will be returned here.
   </td>
  </tr>
  <tr>
   <td>data[].tags[].type
   </td>
   <td>type of tag
   </td>
   <td>can be a message-level tag,a session-level or a user-level tag.
<p>
Example: one of “user”,”message”, “session”
   </td>
  </tr>
  <tr>
   <td>data[].tags[].name
   </td>
   <td>string
   </td>
   <td>key value of the tag – from the client’s bot developer
   </td>
  </tr>
  <tr>
   <td>data[].tags[].value
   </td>
   <td>string
   </td>
   <td>value of the tag – from the client’s bot developer
   </td>
  </tr>
  <tr>
   <td>data[].tags[].messageID
   </td>
   <td>type-prefixed uuid
   </td>
   <td>uuid of the message (prefix: “ms”) that emitted this tag – from Kore.
<p>
Example: “ms-de166b2-1e14-4141-9061-9bca0203b068”
   </td>
  </tr>
  <tr>
   <td>data[].tags[].createdAt
   </td>
   <td>Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
   </td>
   <td>UTC-based time when this tag was emitted.
<p>
Example: “2024-06-29T08:37:35.937Z”
   </td>
  </tr>
  <tr>
   <td>data[].segmentStartTime
   </td>
   <td>Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
   </td>
   <td>UTC-based time when this portion of the conversation began.
<p>
Example: “2024-06-29T08:37:35.937Z”
   </td>
  </tr>
  <tr>
   <td>data[].segmentEndTime
   </td>
   <td>Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
   </td>
   <td>UTC-based time when this portion of the conversation end.
<p>
Example: “2024-06-29T08:37:35.937Z”
   </td>
  </tr>
  <tr>
   <td>data[].agentActions
   </td>
   <td>array of objects
   </td>
   <td>array of objects each of which denotes an Agent’s action, which can be:
<p>
1. Attempt to Search via Search Bar
<p>
2. Running a DialogTask from the Library opening in Search bar
   </td>
  </tr>
  <tr>
   <td>data[].agentActions[].actionType
   </td>
   <td>string
   </td>
   <td>type of Agent’s action.
<p>
Example: one of “SearchBarEntry”, “LibrarySelection”
   </td>
  </tr>
  <tr>
   <td>data[].agentActions[].action
   </td>
   <td>object
   </td>
   <td>object containing data related to an Agent’s attempt to search.
<p>
Will be of type SearchBarEntry.
   </td>
  </tr>
  <tr>
   <td>data[].agentActions[].used
   </td>
   <td>array of objects
   </td>
   <td>objects detailing which of the SearchBarEntries or the DialogTasks
<p>
were used – as in Sent, Copied, Executed, given Feedback, or had their links clicked
   </td>
  </tr>
  <tr>
   <td>data[].agentActions[].used[].targetType
   </td>
   <td>string
   </td>
   <td>specifies the type of object used by the agent.
<p>
Example: one of “DialogTask”, “FAQ”, “Answer”, “File”, “WebPage”, “GeneralDataSource”
   </td>
  </tr>
  <tr>
   <td>data[].agentActions[].used[].target
   </td>
   <td>object
   </td>
   <td>object containing details of use of any DialogTask or data source
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions
   </td>
   <td>array of objects
   </td>
   <td>objects containing suggestions given proactively by Agent AI.
<p>
These can be:
<p>
1. Suggestions given proactively based on Customer’s latest utterance
<p>
2. Suggestions given proactively based on preshown text, such as Summary.
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions[].utterance
   </td>
   <td>string
   </td>
   <td>entire utterance by the end Customer – redacted if redaction is enabled.
<p>
Example: “What is my account balance?”
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions[].suggestions
   </td>
   <td><em>Suggestion </em>object
   </td>
   <td>each Suggestion by Agent AI, whether it is a DialogTask, an Answer, FAQ, Article or any other
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions[].displayTime
   </td>
   <td>Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
   </td>
   <td>time at which this list of suggestions was displayed (UTC).
<p>
Example: “2024-06-29T08:37:35.937Z”
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions[].countDisplayedAnswers
   </td>
   <td>object
   </td>
   <td>contains counts of all displayed suggestions by type
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions[].countDisplayedAnswers.countDialogTasks
   </td>
   <td>integer
   </td>
   <td>Number of DialogTasks suggested
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions[].countDisplayedAnswers.countFaqs
   </td>
   <td>integer
   </td>
   <td>Number of Faqs suggested
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions[].countDisplayedAnswers.countAnswers
   </td>
   <td>integer
   </td>
   <td>Number of Answers suggested
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions[].countDisplayedAnswers.countFiles
   </td>
   <td>integer
   </td>
   <td>Number of Files suggested
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions[].countDisplayedAnswers.countWebPages
   </td>
   <td>integer
   </td>
   <td>Number of Web pages suggested
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions[].countDisplayedAnswers.countFromNonNativeDataSource
   </td>
   <td>integer
   </td>
   <td>Number of suggestions from non-native data sources
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions[].used
   </td>
   <td>array of objects
   </td>
   <td>objects detailing which of the suggestions were used – as in Sent, Copied, Executed, given Feedback, or had their links clicked
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions[].used[].targetType
   </td>
   <td>string
   </td>
   <td>specifies the type of object used by the agent.
<p>
Example: one of “DialogTask”, “FAQ”, “Answer”, “File”, “WebPage”, “GeneralDataSource”
   </td>
  </tr>
  <tr>
   <td>data[].proActiveSuggestions[].used[].target
   </td>
   <td>object
   </td>
   <td>object containing details of use of any DialogTask or data source
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry
   </td>
   <td>object
   </td>
   <td>This details an action by the Agent – when he enters text on the Search Bar.
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.searchPhrase
   </td>
   <td>string
   </td>
   <td>The search query entered by the agent. Example: "Return string to the given question using the provided Content and source_name..."
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.typingStartTime
   </td>
   <td>string
   </td>
   <td>Timestamp of when typing started. Example: "2024-07-10T06:52:36.447Z"
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.executionStartTime
   </td>
   <td>string
   </td>
   <td>Timestamp of when the search execution began. Example: "2024-07-10T06:52:36.871Z"
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.displayTime
   </td>
   <td>string
   </td>
   <td>Timestamp of when the search results were displayed. Example: "2024-07-10T06:52:40.359Z"
   </td>
  </tr>
  <tr>
   <td>suggestionsShown
   </td>
   <td>Array of Strings
   </td>
   <td>List of suggestions shown during the agent action. Example: ["tech are using the wrng worlkss teh", "teh are using wrnog workds for the tesnsig", "Healthcare System in India, Healthcare India - IBEF"]
   </td>
  </tr>
  <tr>
   <td>suggestionUsed
   </td>
   <td>integer
   </td>
   <td>The number of suggestions used by the agent. Example: 1
   </td>
  </tr>
  <tr>
   <td>phraseInput
   </td>
   <td>string
   </td>
   <td>The phrases entered by the agent. Example: “health teh”
   </td>
  </tr>
    <tr>
   <td>correctionsPresented
   </td>
   <td>integer
   </td>
   <td>The number of corrections presented to the agent. Example: 5
   </td>
  </tr>
      <tr>
   <td>correctionsAccepted
   </td>
   <td>integer
   </td>
   <td>The number of corrections accepted by the agent. Example: 0
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.countDisplayedAnswers
   </td>
   <td>object
   </td>
   <td>contains counts of all displayed suggestions by type
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.countDisplayedAnswers.countDialogTasks
   </td>
   <td>integer
   </td>
   <td>Number of DialogTasks suggested
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.countDisplayedAnswers.countFaqs
   </td>
   <td>integer
   </td>
   <td>Number of Faqs suggested
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.countDisplayedAnswers.countAnswers
   </td>
   <td>integer
   </td>
   <td>Number of Answers suggested
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.countDisplayedAnswers.countFiles
   </td>
   <td>integer
   </td>
   <td>Number of Files suggested
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.countDisplayedAnswers.countWebPages
   </td>
   <td>integer
   </td>
   <td>Number of Web pages suggested
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.countDisplayedAnswers.countFromNonNativeDataSource
   </td>
   <td>integer
   </td>
   <td>Number of suggestions from non-native data sources
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.suggestions
   </td>
   <td><em>Suggestion </em>object
   </td>
   <td>each Suggestion by Agent AI, whether it is a DialogTask, an Answer, FAQ, Article or any other
   </td>
  </tr>
  <tr>
   <td>DialogTask
   </td>
   <td>object
   </td>
   <td>This object is shown in a used array when a DialogTask is run.
   </td>
  </tr>
  <tr>
   <td><a href="http://dialogtask.name/">DialogTask.name</a>
   </td>
   <td>string
   </td>
   <td>name of the DialogTask – from the client’s bot developer.
<p>
Example: “Cancel account”
   </td>
  </tr>
  <tr>
   <td>DialogTask.runType
   </td>
   <td>string
   </td>
   <td>How did the agent run it? Using the “Run” button, or the “Run with Agent input” button.
<p>
Example: one of “RunAssist”, “RunWithAgentInput”
   </td>
  </tr>
  <tr>
   <td>DialogTask.status
   </td>
   <td>string
   </td>
   <td>Outcome of the DialogTask.
<p>
Example: one of “Completed”, “PrematurelyTerminated”, “TimedOut”, “Error”
   </td>
  </tr>
  <tr>
   <td>DialogTask.SuggestionsCount
   </td>
   <td>object
   </td>
   <td>count of suggestions made by DialogTask by ask/tell prompt type.
   </td>
  </tr>
  <tr>
   <td>DialogTask.SuggestionsCount.askSuggestions
   </td>
   <td>integer
   </td>
   <td>count of suggestions that prompt with “Ask Customer”
   </td>
  </tr>
  <tr>
   <td>DialogTask.SuggestionsCount.tellSuggestions
   </td>
   <td>integer
   </td>
   <td>count of suggestions that prompt with “Tell Customer”
   </td>
  </tr>
  <tr>
   <td>DialogTask.SuggestionsCount.askUsed
   </td>
   <td>integer
   </td>
   <td>count of “Ask” suggestions that were sent or copied over to Customer
   </td>
  </tr>
  <tr>
   <td>DialogTask.SuggestionsCount.tellUsed
   </td>
   <td>integer
   </td>
   <td>count of “Tell” suggestions that were sent or copied over to Customer
   </td>
  </tr>
  <tr>
   <td>DialogTask.startTime
   </td>
   <td>Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
   </td>
   <td>time at which this DialogTask began to run
<p>
Example: “2024-06-29T08:37:35.937Z”
   </td>
  </tr>
  <tr>
   <td>DialogTask.endTime
   </td>
   <td>Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
   </td>
   <td>time at which this DialogTask ended its run.
<p>
Example: “2024-06-29T08:37:35.937Z”
   </td>
  </tr>
  <tr>
   <td>DialogTask.feedback
   </td>
   <td>object
   </td>
   <td>feedback given by Agent to this DialogTask
   </td>
  </tr>
  <tr>
   <td>faq
   </td>
   <td>object
   </td>
   <td>this object is shown in a used array when an faq Q&A pair is used
   </td>
  </tr>
  <tr>
   <td>faq.title
   </td>
   <td>string
   </td>
   <td>Title of the FAQ Q&A pair.
<p>
Example: “FAQ 3.2”
   </td>
  </tr>
  <tr>
   <td>faq.status
   </td>
   <td>string
   </td>
   <td>How was it used? Sent or Copied?
<p>
Example: one of “Sent”, “Copied”
   </td>
  </tr>
  <tr>
   <td>faq.usedTime
   </td>
   <td>Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
   </td>
   <td>time at which this FAQ was sent or copied.
<p>
Example: “2024-06-29T08:37:35.937Z”
   </td>
  </tr>
  <tr>
   <td>answer
   </td>
   <td>object
   </td>
   <td>this object is shown in a used array when an Answer from Search AI is used
   </td>
  </tr>
  <tr>
   <td>answer.status
   </td>
   <td>string
   </td>
   <td>shows if the Answer has been Sent or Copied. If not sent or copied, but used otherwise, it will be blank. “Used Otherwise” means its “Show more” may have been clicked, one of its links may have been clicked, or the Agent gave feedback to it.
<p>
Example: one of “Sent”, “Copied”, or blank
   </td>
  </tr>
  <tr>
   <td>answer.usedTime
   </td>
   <td>Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
   </td>
   <td>time at which this Answer was sent or copied. If not, it will be blank.
<p>
Example: “2024-06-29T08:37:35.937Z”
   </td>
  </tr>
  <tr>
   <td>answer.showMoreClicked
   </td>
   <td>boolean (True / False)
   </td>
   <td>if the Show More button for this answer was clicked.
<p>
Example: “false” without the double-quotes
   </td>
  </tr>
  <tr>
   <td>answer.answerLinkClicked
   </td>
   <td>array of URL links
   </td>
   <td>links in the Answer clicked by the Agent.
<p>
Example: [“<a href="http://www.google.com/">http://www.google.com</a>“]
   </td>
  </tr>
  <tr>
   <td>answer.internalInfoMoreClicked
   </td>
   <td>boolean (True / False)
   </td>
   <td>if the Show More button for this answer was clicked.
<p>
Example: “false” without the double-quotes
   </td>
  </tr>
  <tr>
   <td>answer.positionId
   </td>
   <td>type-prefixed uuid
   </td>
   <td>prefixed by “dg-“, a position ID referring to a displayed suggestion in the “suggestions” object.
<p>
Example: “dg-3id77hn44k”
   </td>
  </tr>
  <tr>
   <td>answer.feedback
   </td>
   <td>object
   </td>
   <td>feedback given by Agent to this Answer
   </td>
  </tr>
  <tr>
   <td>webpage
   </td>
   <td>object
   </td>
   <td>this object is shown in a used array when a webpage is used by the Agent
   </td>
  </tr>
  <tr>
   <td>webpage.url
   </td>
   <td>string – URL
   </td>
   <td>URL of the webpage
   </td>
  </tr>
  <tr>
   <td>webpage.status
   </td>
   <td>string
   </td>
   <td>How was it used? Sent or Copied?
<p>
Example: one of “Sent”, “Copied”
   </td>
  </tr>
  <tr>
   <td>webpage.usedTime
   </td>
   <td>Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
   </td>
   <td>time at which this webpage was sent or copied.
<p>
Example: “2024-06-29T08:37:35.937Z”
   </td>
  </tr>
  <tr>
   <td>file
   </td>
   <td>object
   </td>
   <td>this object is shown in a used array when a file is used by the Agent
   </td>
  </tr>
  <tr>
   <td>file.path
   </td>
   <td>string – filepath
   </td>
   <td>path of the file.
<p>
Example: “/home/docs/configuration_parameters.doc”
   </td>
  </tr>
  <tr>
   <td>file.status
   </td>
   <td>string
   </td>
   <td>How was it used? Sent or Copied?
<p>
Example: one of “Sent”, “Copied”
   </td>
  </tr>
  <tr>
   <td>file.usedTime
   </td>
   <td>Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
   </td>
   <td>time at which this file was sent or copied.
<p>
Example: “2024-06-29T08:37:35.937Z”
   </td>
  </tr>
  <tr>
   <td>general-data-source
   </td>
   <td>object
   </td>
   <td>this object is shown in a used array when a non-native data source is used by the Agent
   </td>
  </tr>
  <tr>
   <td>general-data-source.connector
   </td>
   <td>string
   </td>
   <td>name of the data source.
<p>
Example: “MSSharepoint”
   </td>
  </tr>
  <tr>
   <td>general-data-source.uri
   </td>
   <td>URI
   </td>
   <td>URI of the resource.
<p>
Example: “<a href="https://testserver/TestSite/Reports/Doc/Company%20Sales.rdl">https://TestServer/TestSite/Reports/Doc/Company%20Sales.rdl</a>“
   </td>
  </tr>
  <tr>
   <td>general-data-source.status
   </td>
   <td>string
   </td>
   <td>How was it used? Sent or Copied?
<p>
Example: one of “Sent”, “Copied”
   </td>
  </tr>
  <tr>
   <td>general-data-source.usedTime
   </td>
   <td>Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
   </td>
   <td>time at which this resource was sent or copied.
<p>
Example: “2024-06-29T08:37:35.937Z”
   </td>
  </tr>
  <tr>
   <td>feedback
   </td>
   <td>object
   </td>
   <td>contains feedback from an Agent to certain suggestions.
   </td>
  </tr>
  <tr>
   <td>feedback.response
   </td>
   <td>string
   </td>
   <td>The Agent can choose Thumbs Up or Down.
<p>
Example: one of “up”, “down”
   </td>
  </tr>
  <tr>
   <td>feedback.reasonCode
   </td>
   <td>array of strings
   </td>
   <td>the Agent may choose multiple reason codes, and these are configurable.
<p>
Example: [“Wrong Intent”, “Missed Context”]
   </td>
  </tr>
  <tr>
   <td>feedback.comment
   </td>
   <td>string
   </td>
   <td>freeform textual feedback from the Agent.
<p>
Example: “This is not the correct Dialog. The customer said ‘Cancel account’, and the Dialog is about renewal”.
   </td>
  </tr>
  <tr>
   <td>suggestions
   </td>
   <td>object
   </td>
   <td>containing all displayed suggestions, whether from a SearchBarEntry action by the Agent or a proActiveSuggestion triggered by a Customer’s utterance
   </td>
  </tr>
  <tr>
   <td>suggestions.dialogs
   </td>
   <td>array of objects
   </td>
   <td>each object contains the particulars of a DialogTask displayed to Agent
   </td>
  </tr>
  <tr>
   <td>suggestions.dialogs[].name
   </td>
   <td>string
   </td>
   <td>name of the DialogTask – from the client’s bot developer.
<p>
Example: “Cancel Account”
   </td>
  </tr>
  <tr>
   <td>suggestions.answers
   </td>
   <td>array of objects
   </td>
   <td>each object contains details of an Answer displayed
   </td>
  </tr>
  <tr>
   <td>suggestions.answers[].content
   </td>
   <td>string
   </td>
   <td>Generated Answer content.
<p>
Example: “A potentially very long answer that may be generated by an LLM”.
   </td>
  </tr>
  <tr>
   <td>suggestions.answers[].positionId
   </td>
   <td>type-prefixed uuid
   </td>
   <td>prefixed by “dg-“, this field acts as a key for this particular answer, later referred to by an Answer object in a used array.
<p>
Example: “dg-3id77hn44k”
   </td>
  </tr>
  <tr>
   <td>suggestions.answers[].sources
   </td>
   <td>array of objects
   </td>
   <td>array of source links from which the Answer was generated.
   </td>
  </tr>
  <tr>
   <td>suggestions.answers[].sources[].title
   </td>
   <td>string
   </td>
   <td>Title of the page linked, that was one of the sources for the Answer.
<p>
Example: AWS EC2 On-demand pricing
   </td>
  </tr>
  <tr>
   <td>suggestions.answers[].sources[].url
   </td>
   <td>string – URL
   </td>
   <td>The link itself.
<p>
Example: “<a href="https://aws.amazon.com/ec2/pricing/on-demand/">https://aws.amazon.com/ec2/pricing/on-demand/
</a>“
</p>
   </td>
  </tr>
  <tr>
   <td>suggestions.answers[].internalFlag
   </td>
   <td>boolean (True / False)
   </td>
   <td>Example: “false” without the double-quotes
   </td>
  </tr>
  <tr>
   <td>queueInfo
   <ul>
   <li> queueId </li>
   <li> queueName </li>
    </ul>
   </td>
   <td>string
   </td>
   <td>Unique name and ID number of the queue involved in the conversation.
   <P>
   Example: “CreditCard”, “qu-2335c1-8et33-33535-133535”
    </P>
   </td>
  </tr>
  <tr>
   <td>countScrollUp and countScrollDn
   </td>
   <td>integer
   </td>
   <td>Number of times an agent clicks the scroll up and/or scroll down buttons.
   </td>
  </tr>
  <tr>
   <td>linksClicked
   </td>
   <td>string
   </td>
   <td>List of the URL/s an agent clicks with   timestamps during a conversation.
   <p>
   Example: “https://www.apple.com/in/”, 2024-12-17T11:04:37.163Z
    </p>
   </td>
  </tr>
</table>




