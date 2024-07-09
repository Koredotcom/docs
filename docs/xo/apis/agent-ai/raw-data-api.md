<!-----

----->

# Raw Data APIv2

This updated version of the Raw Data API offers the following additional conversation data for deeper insights into AgentAssist interactions and conversation flows:

* Feedback (reason code and feedback text in addition to like/dislike) from the agent.
* Complete generated answers with feedback
* Comprehensive agent activity tracking
* Full end-user utterances
* Dialog task execution details
* Agent search bar activity timing

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
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamid}}/v2/agentassistinteractions?from=YYYY-MM-DD&to=YYYY-MM-DD</code>
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
See <a href="https://developer.kore.ai/docs/bots/api-guide/apis/#Generating_the_JWT_Token">How to generate the JWT Token</a>.
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
   <td>Start date of the interactions in YYYY-MM-DD format.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>to
   </td>
   <td>End date of the interactions in YYYY-MM-DD format.
   </td>
   <td>Required
   </td>
  </tr>
</table>

## **Sample Request**


```
curl -X GET \
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamID}}/v2/agentassistinteractions?from=YYYY-MM-DD&to=YYYY-MM-DD' \
--header 'accountId: 65433af84e520234494caaxx' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTE5ZjA0NzU0LWQ4MzQtNTgxOC04NzE0LWYyNGZlYzYxODgxNyJ9.DEVT2UGCTjryY_bDVGmun4-Vcp_R9-b0iRonWaB-xxx'
```

### **Headers**

* accountId (required): The account ID associated with the API request.
* auth (required): Authentication token in the format Bearer &lt;token>.

## **Sample Response**

```
{

    "numResults": 7,

    "data": [

        {

            "conversationID": "atesta-lxvincrb",

            "botSessionID": "667bc3bf417bcb81fd3dc629",

            "channel": "chat",

            "segmentID": "ac-2b978cc-3705-4a1c-be5c-72bd526ea9d0",

            "segmentStartTime": "2024-06-26T07:30:44.801Z",

            "segmentEndTime": "2024-06-26T07:32:02.755Z",

            "agent": {

                "agentId": "agentID1"

            },

            "tags": [],

            "agentActions": [],

            "proActiveSuggestions": [

                {

                    "displayTime": "2024-06-26T07:31:20.514Z",

                    "utterance": "pizza",

                    "countDisplayedAnswers": {

                        "countDialogTasks": 2,

                        "countFaqs": 3,

                        "countWebPages": 0,

                        "countFiles": 0,

                        "countAnswers": 1,

                        "countFromNonNativeDataSource": 0

                    },

                    "suggestions": {

                        "dialogs": [

                            {

                                "name": "Pizza"

                            },

                            {

                                "name": "cancel Pizza"

                            }

                        ],

                        "answers": [

                            {

                                "positionId": "dg-fuezumlguo",

                                "content": "Executive Vice President and Chief Customer Officer, CVS Health and Co-President, CVS Pharmacy Read Michelle Peluso's bio",

                                "sources": [

                                    {

                                        "title": "Michelle Peluso",

                                        "url": "https://www.cvshealth.com/about-cvs-health/leadership#:~:text=Executive%20Vice%20President%20and%20Chief%20Customer%20Officer%2C%20CVS%20Health%20and%20Co%2DPresident%2C%20CVS%20Pharmacy%20Read%20Michelle%20Peluso%E2%80%99s%20bio"

                                    }

                                ],

                                "internalFlag": false

                            }

                        ],

                        "faqs": [

                            {

                                "sources": [

                                    {

                                        "title": "",

                                        "url": "",

                                        "sourceType": ""

                                    }

                                ],

                                "content": "",

                                "positionId": "dg-09qypeeluf"

                            },

                            {

                                "sources": [

                                    {

                                        "title": "",

                                        "url": "",

                                        "sourceType": ""

                                    }

                                ],

                                "content": "",

                                "positionId": "dg-0ba500iuk1"

                            },

                            {

                                "sources": [

                                    {

                                        "title": "",

                                        "url": "",

                                        "sourceType": ""

                                    }

                                ],

                                "content": "",

                                "positionId": "dg-j0bw0bh7gm"

                            }

                        ]

                    },

                    "used": [

                        {

                            "targetType": "DialogTask",

                            "target": {

                                "positionId": "dg-8vskupb2y5",

                                "name": "cancel Pizza",

                                "runType": "assist",

                                "status": "",

                                "startTime": "2024-06-26T07:31:33.804Z",

                                "endTime": null,

                                "suggestionsCount": {

                                    "tellCustomer": 0,

                                    "askCustomer": 1,

                                    "tellUsed": 0,

                                    "askUsed": 0

                                }

                            }

                        },

                        {

                            "targetType": "Answer",

                            "positionId": "dg-fuezumlguo",

                            "target": {

                                "title": ""

                            },

                            "feedback": {

                                "response": "Down",

                                "reasonCode": [

                                    "Time Taking"

                                ],

                                "comment": "Answer thumbs down ( option selected Time taking)"

                            }

                        }

                    ]

                }

            ]

        },

        {

            "conversationID": "atesta-lxvl0iq7",

            "channel": "chat",

            "segmentID": "ac-603a215-24ba-49ec-8492-8e79e8b4380e",

            "segmentStartTime": "2024-06-26T08:50:10.416Z",

            "segmentEndTime": "2024-06-26T08:52:58.747Z",

            "agent": {

                "agentId": "Agent_AA_1"

            },

            "tags": [],

            "agentActions": [],

            "proActiveSuggestions": []

        },

        {

            "conversationID": "atesta-lxvlnjey",

            "botSessionID": "667bd7d9ef6f577b78301387",

            "channel": "chat",

            "segmentID": "ac-1aba6ed-4bd9-483c-a985-0dabc3c030ea",

            "segmentStartTime": "2024-06-26T08:54:54.812Z",

            "segmentEndTime": "2024-06-26T09:06:59.988Z",

            "agent": {

                "agentId": "agentID1"

            },

            "tags": [],

            "agentActions": [

                {

                    "actionType": "SearchBarEntry",

                    "action": {

                        "searchPhrase": "cancel pizza",

                        "typingStartTime": "2024-06-26T08:55:29.851Z",

                        "executionStartTime": "2024-06-26T08:55:32.800Z",

                        "displayTime": "2024-06-26T08:55:34.749Z",

                        "countDisplayedAnswers": {

                            "countDialogTasks": 1,

                            "countFaqs": 0,

                            "countWebPages": 0,

                            "countFiles": 0,

                            "countAnswers": 1,

                            "countFromNonNativeDataSource": 0

                        },

                        "suggestions": {

                            "dialogs": [

                                {

                                    "name": "cancel Pizza"

                                }

                            ],

                            "answers": [

                                {

                                    "positionId": "dg-d9ij1qejf2",

                                    "content": "Executive Vice President and Chief Customer Officer, CVS Health and Co-President, CVS Pharmacy Read Michelle Peluso's bio",

                                    "sources": [

                                        {

                                            "title": "Michelle Peluso",

                                            "url": "https://www.cvshealth.com/about-cvs-health/leadership#:~:text=Executive%20Vice%20President%20and%20Chief%20Customer%20Officer%2C%20CVS%20Health%20and%20Co%2DPresident%2C%20CVS%20Pharmacy%20Read%20Michelle%20Peluso%E2%80%99s%20bio"

                                        }

                                    ],

                                    "internalFlag": false

                                }

                            ]

                        }

                    },

                    "used": [

                        {

                            "targetType": "Answer",

                            "target": {

                                "positionId": "dg-d9ij1qejf2",

                                "title": "Executive Vice President and",

                                "status": "send",

                                "displayTime": "2024-06-26T08:55:44.739Z",

                                "showmoreClicked": false,

                                "internalInfoClicked": false,

                                "answerLinkClicked": []

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

                    "actionType": "SearchBarEntry",

                    "action": {

                        "searchPhrase": "agent 2 cold transfer",

                        "typingStartTime": "2024-06-26T09:05:32.780Z",

                        "executionStartTime": "2024-06-26T09:05:39.707Z",

                        "displayTime": "2024-06-26T09:05:41.453Z",

                        "countDisplayedAnswers": {

                            "countDialogTasks": 1,

                            "countFaqs": 0,

                            "countWebPages": 0,

                            "countFiles": 0,

                            "countAnswers": 1,

                            "countFromNonNativeDataSource": 0

                        },

                        "suggestions": {

                            "dialogs": [

                                {

                                    "name": "Agent transfer"

                                }

                            ],

                            "answers": [

                                {

                                    "positionId": "dg-6gf9lmsq8j",

                                    "content": "COVID‐19 testing does not eliminate the risk of transmission of SARSCoV-2 or Coronavirus Disease 2019. Further, available testing procedures may produce false negative or false positive results due to a variety of factors. Clients should consider these factors in developing their return to workplace, campus or event policies and procedures. The COVID‐19 pandemic has created an unprecedented and still-evolving legal landscape for clients. You may need to consider various federal, state, and local laws, regulations, or other mandates when developing your return to worksite, campus or event plans. Competent legal counsel should be consulted. This is not intended to be a complete description of the terms and conditions of the Return Ready program. Services described would be provided by CVS Pharmacy, Inc. or a subsidiary, including but not limited to MinuteClinic, LLC and its subsidiaries and managed entities. In addition, access to additional health and safety solutions such as contact ...",

                                    "sources": [

                                        {

                                            "title": "Important information",

                                            "url": "https://www.cvshealth.com/covid-19/return-ready#:~:text=COVID%E2%80%9019%20testing%20does%20not%20eliminate%20the%20risk%20of%20transmission%20of%20SARSCoV%2D2%20or%20Coronavirus%20Disease%202019"

                                        }

                                    ],

                                    "internalFlag": false

                                }

                            ]

                        }

                    },

                    "used": []

                }

            ],

            "proActiveSuggestions": [

                {

                    "displayTime": "2024-06-26T08:56:58.862Z",

                    "utterance": "flight status",

                    "countDisplayedAnswers": {

                        "countDialogTasks": 1,

                        "countFaqs": 0,

                        "countWebPages": 0,

                        "countFiles": 0,

                        "countAnswers": 1,

                        "countFromNonNativeDataSource": 0

                    },

                    "suggestions": {

                        "dialogs": [

                            {

                                "name": "flight status"

                            }

                        ],

                        "answers": [

                            {

                                "positionId": "dg-nunis2sjj3",

                                "content": "COVID‐19 testing does not eliminate the risk of transmission of SARSCoV-2 or Coronavirus Disease 2019. Further, available testing procedures may produce false negative or false positive results due to a variety of factors. Clients should consider these factors in developing their return to workplace, campus or event policies and procedures. The COVID‐19 pandemic has created an unprecedented and still-evolving legal landscape for clients. You may need to consider various federal, state, and local laws, regulations, or other mandates when developing your return to worksite, campus or event plans. Competent legal counsel should be consulted. This is not intended to be a complete description of the terms and conditions of the Return Ready program. Services described would be provided by CVS Pharmacy, Inc. or a subsidiary, including but not limited to MinuteClinic, LLC and its subsidiaries and managed entities. In addition, access to additional health and safety solutions such as contact ...",

                                "sources": [

                                    {

                                        "title": "Important information",

                                        "url": "https://www.cvshealth.com/covid-19/return-ready#:~:text=COVID%E2%80%9019%20testing%20does%20not%20eliminate%20the%20risk%20of%20transmission%20of%20SARSCoV%2D2%20or%20Coronavirus%20Disease%202019"

                                    }

                                ],

                                "internalFlag": false

                            }

                        ]

                    },

                    "used": [

                        {

                            "targetType": "DialogTask",

                            "target": {

                                "positionId": "dg-hrj2raevkz",

                                "name": "flight status",

                                "runType": "assist",

                                "status": "",

                                "startTime": "2024-06-26T08:57:08.518Z",

                                "endTime": null,

                                "suggestionsCount": {

                                    "tellCustomer": 1,

                                    "askCustomer": 7,

                                    "tellUsed": 0,

                                    "askUsed": 1

                                }

                            },

                            "feedback": {

                                "response": "Down",

                                "reasonCode": [

                                    "Confusing"

                                ],

                                "comment": "Flight status dialog option confusing feed back down thumb"

                            }

                        }

                    ]

                },

                {

                    "displayTime": "2024-06-26T08:59:04.356Z",

                    "utterance": "yes",

                    "countDisplayedAnswers": {

                        "countDialogTasks": 1,

                        "countFaqs": 0,

                        "countWebPages": 0,

                        "countFiles": 0,

                        "countAnswers": 1,

                        "countFromNonNativeDataSource": 0

                    },

                    "suggestions": {

                        "dialogs": [

                            {

                                "name": "summary testing"

                            }

                        ],

                        "answers": [

                            {

                                "positionId": "dg-q29dyq6tqc",

                                "content": "Shopify's FAQ page is an example of one FAQ page that doesn't necessarily require a search bar. Since there isn't a surplus of questions — just 14 in total — visitors may not need to search their question at all. You can click one of the four topics on the left-hand side or scroll down to view all questions and answers on the same page. Image Source",

                                "sources": [

                                    {

                                        "title": "9. Shopify",

                                        "url": "https://blog.hubspot.com/service/faq-page#:~:text=Shopify%27s%20FAQ%20page%20is%20an%20example%20of%20one%20FAQ%20page%20that%20doesn%27t%20necessarily%20require%20a%20search%20bar"

                                    }

                                ],

                                "internalFlag": false

                            }

                        ]

                    },

                    "used": []

                },

                {

                    "displayTime": "2024-06-26T09:00:37.190Z",

                    "utterance": "how do i swithcoff my phone",

                    "countDisplayedAnswers": {

                        "countDialogTasks": 0,

                        "countFaqs": 1,

                        "countWebPages": 0,

                        "countFiles": 0,

                        "countAnswers": 1,

                        "countFromNonNativeDataSource": 0

                    },

                    "suggestions": {

                        "answers": [

                            {

                                "positionId": "dg-mpjb0o7728",

                                "content": "FAQ pages are intended as an initial support option for customers looking for an immediate answer to a quick question or problem. It shouldn't replace your knowledge base or your entire support team, but rather supplement your support channels as an additional, lightweight resource. When customers do have questions that extend beyond the range of your FAQ page, you should have options available that directly connect them with your support team. You could add a link that opens a new support ticket or even just list your call center's phone number at the bottom of the page. The idea is that customers shouldn't have to navigate back to your home page just to locate your company's email or phone number.",

                                "sources": [

                                    {

                                        "title": "3. Include space for live support options.",

                                        "url": "https://blog.hubspot.com/service/faq-page#:~:text=FAQ%20pages%20are%20intended%20as%20an%20initial%20support%20option%20for%20customers%20looking%20for%20an%20immediate%20answer%20to%20a%20quick%20question%20or%20problem"

                                    }

                                ],

                                "internalFlag": false

                            }

                        ],

                        "faqs": [

                            {

                                "sources": [

                                    {

                                        "title": "",

                                        "url": "",

                                        "sourceType": ""

                                    }

                                ],

                                "content": "",

                                "positionId": "dg-o7jayj8hpn"

                            }

                        ]

                    },

                    "used": [

                        {

                            "targetType": "Answer",

                            "positionId": "dg-o7jayj8hpn",

                            "target": {

                                "title": "How do I switch off my phone?"

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

                    "displayTime": "2024-06-26T09:02:51.512Z",

                    "utterance": "aadhar",

                    "countDisplayedAnswers": {

                        "countDialogTasks": 1,

                        "countFaqs": 0,

                        "countWebPages": 0,

                        "countFiles": 0,

                        "countAnswers": 1,

                        "countFromNonNativeDataSource": 0

                    },

                    "suggestions": {

                        "dialogs": [

                            {

                                "name": "Aadhar"

                            }

                        ],

                        "answers": [

                            {

                                "positionId": "dg-skmk596vgo",

                                "content": "Executive Vice President, Chief Data, Digital and Technology Officer, CVS Health Read Tilak Mandadi's bio",

                                "sources": [

                                    {

                                        "title": "Tilak Mandadi",

                                        "url": "https://www.cvshealth.com/about-cvs-health/leadership#:~:text=Executive%20Vice%20President%2C%20Chief%20Data%2C%20Digital%20and%20Technology%20Officer%2C%20CVS%20Health%20Read%20Tilak%20Mandadi%E2%80%99s%20bio"

                                    }

                                ],

                                "internalFlag": false

                            }

                        ]

                    },

                    "used": [

                        {

                            "targetType": "Answer",

                            "positionId": "dg-1tvm2pd7ukk",

                            "target": {

                                "title": ""

                            },

                            "feedback": {

                                "response": "Up",

                                "reasonCode": [],

                                "comment": ""

                            }

                        },

                        {

                            "targetType": "Answer",

                            "positionId": "dg-skmk596vgo",

                            "target": {

                                "title": ""

                            },

                            "feedback": {

                                "response": "Down",

                                "reasonCode": [

                                    "Inaccurate Content"

                                ],

                                "comment": "thumbs down. for answers option \"inaccurate content\""

                            }

                        }

                    ]

                }

            ]

        },

        {

            "conversationID": "atesta-lxvlnjey",

            "botSessionID": "667bd7d9ef6f577b78301387",

            "channel": "chat",

            "segmentID": "ac-9ae0209-685a-459b-9c8c-581919d2e959",

            "segmentStartTime": "2024-06-26T09:01:36.507Z",

            "segmentEndTime": "2024-06-26T09:06:59.993Z",

            "agent": {

                "agentId": "Agent_ID_AA_2"

            },

            "tags": [],

            "agentActions": [

                {

                    "actionType": "SearchBarEntry",

                    "action": {

                        "searchPhrase": "agent 2 cold transfer",

                        "typingStartTime": "2024-06-26T09:05:32.780Z",

                        "executionStartTime": "2024-06-26T09:05:39.707Z",

                        "displayTime": "2024-06-26T09:05:41.453Z",

                        "countDisplayedAnswers": {

                            "countDialogTasks": 1,

                            "countFaqs": 0,

                            "countWebPages": 0,

                            "countFiles": 0,

                            "countAnswers": 1,

                            "countFromNonNativeDataSource": 0

                        },

                        "suggestions": {

                            "dialogs": [

                                {

                                    "name": "Agent transfer"

                                }

                            ],

                            "answers": [

                                {

                                    "positionId": "dg-6gf9lmsq8j",

                                    "content": "COVID‐19 testing does not eliminate the risk of transmission of SARSCoV-2 or Coronavirus Disease 2019. Further, available testing procedures may produce false negative or false positive results due to a variety of factors. Clients should consider these factors in developing their return to workplace, campus or event policies and procedures. The COVID‐19 pandemic has created an unprecedented and still-evolving legal landscape for clients. You may need to consider various federal, state, and local laws, regulations, or other mandates when developing your return to worksite, campus or event plans. Competent legal counsel should be consulted. This is not intended to be a complete description of the terms and conditions of the Return Ready program. Services described would be provided by CVS Pharmacy, Inc. or a subsidiary, including but not limited to MinuteClinic, LLC and its subsidiaries and managed entities. In addition, access to additional health and safety solutions such as contact ...",

                                    "sources": [

                                        {

                                            "title": "Important information",

                                            "url": "https://www.cvshealth.com/covid-19/return-ready#:~:text=COVID%E2%80%9019%20testing%20does%20not%20eliminate%20the%20risk%20of%20transmission%20of%20SARSCoV%2D2%20or%20Coronavirus%20Disease%202019"

                                        }

                                    ],

                                    "internalFlag": false

                                }

                            ]

                        }

                    },

                    "used": []

                }

            ],

            "proActiveSuggestions": [

                {

                    "displayTime": "2024-06-26T09:02:51.512Z",

                    "utterance": "aadhar",

                    "countDisplayedAnswers": {

                        "countDialogTasks": 1,

                        "countFaqs": 0,

                        "countWebPages": 0,

                        "countFiles": 0,

                        "countAnswers": 1,

                        "countFromNonNativeDataSource": 0

                    },

                    "suggestions": {

                        "dialogs": [

                            {

                                "name": "Aadhar"

                            }

                        ],

                        "answers": [

                            {

                                "positionId": "dg-skmk596vgo",

                                "content": "Executive Vice President, Chief Data, Digital and Technology Officer, CVS Health Read Tilak Mandadi's bio",

                                "sources": [

                                    {

                                        "title": "Tilak Mandadi",

                                        "url": "https://www.cvshealth.com/about-cvs-health/leadership#:~:text=Executive%20Vice%20President%2C%20Chief%20Data%2C%20Digital%20and%20Technology%20Officer%2C%20CVS%20Health%20Read%20Tilak%20Mandadi%E2%80%99s%20bio"

                                    }

                                ],

                                "internalFlag": false

                            }

                        ]

                    },

                    "used": [

                        {

                            "targetType": "DialogTask",

                            "target": {

                                "positionId": "dg-1tvm2pd7ukk",

                                "name": "Aadhar",

                                "runType": "assist",

                                "status": "completed",

                                "startTime": "2024-06-26T09:03:09.654Z",

                                "endTime": "2024-06-26T09:03:48.762Z",

                                "suggestionsCount": {

                                    "tellCustomer": 2,

                                    "askCustomer": 2,

                                    "tellUsed": 1,

                                    "askUsed": 1

                                }

                            },

                            "feedback": {

                                "response": "Up",

                                "reasonCode": [],

                                "comment": ""

                            }

                        },

                        {

                            "targetType": "Answer",

                            "positionId": "dg-skmk596vgo",

                            "target": {

                                "title": ""

                            },

                            "feedback": {

                                "response": "Down",

                                "reasonCode": [

                                    "Inaccurate Content"

                                ],

                                "comment": "thumbs down. for answers option \"inaccurate content\""

                            }

                        }

                    ]

                }

            ]

        },

        {

            "conversationID": "atesta-lxvnoqmc",

            "botSessionID": "667be4b958379977dd59c7f3",

            "channel": "chat",

            "segmentID": "ac-64626d6-bbda-409e-878b-544e4de5da20",

            "segmentStartTime": "2024-06-26T09:51:46.444Z",

            "segmentEndTime": "2024-06-26T09:55:35.291Z",

            "agent": {

                "agentId": "agentID1"

            },

            "tags": [],

            "agentActions": [

                {

                    "actionType": "SearchBarEntry",

                    "action": {

                        "searchPhrase": "payment dispute",

                        "typingStartTime": "2024-06-26T09:55:11.067Z",

                        "executionStartTime": "2024-06-26T09:55:15.323Z",

                        "displayTime": "2024-06-26T09:55:17.467Z",

                        "countDisplayedAnswers": {

                            "countDialogTasks": 1,

                            "countFaqs": 0,

                            "countWebPages": 0,

                            "countFiles": 0,

                            "countAnswers": 1,

                            "countFromNonNativeDataSource": 0

                        },

                        "suggestions": {

                            "dialogs": [

                                {

                                    "name": "Payment dispute"

                                }

                            ],

                            "answers": [

                                {

                                    "positionId": "dg-ud0cllg2hh",

                                    "content": "Bank of America's FAQ page is excellent. First, before accessing the page, it allows you to select your state of residence. Then, you have several options to search on the FAQ page. You can scroll through topics and select the one that best fits your question or you can search your question in the search bar. And there are links on the right side that help you perform some important actions like reporting fraudulent activity. Image Source",

                                    "sources": [

                                        {

                                            "title": "3. Bank of America",

                                            "url": "https://blog.hubspot.com/service/faq-page#:~:text=Bank%20of%20America%27s%20FAQ%20page%20is%20excellent"

                                        }

                                    ],

                                    "internalFlag": false

                                }

                            ]

                        }

                    },

                    "used": [

                        {

                            "targetType": "Answer",

                            "target": {

                                "positionId": "dg-ud0cllg2hh",

                                "title": "Bank of America's FAQ page is",

                                "status": "send",

                                "displayTime": "2024-06-26T09:55:24.104Z",

                                "showmoreClicked": false,

                                "internalInfoClicked": false,

                                "answerLinkClicked": []

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

                    "displayTime": "2024-06-26T09:52:18.817Z",

                    "utterance": "pizza",

                    "countDisplayedAnswers": {

                        "countDialogTasks": 2,

                        "countFaqs": 3,

                        "countWebPages": 0,

                        "countFiles": 0,

                        "countAnswers": 1,

                        "countFromNonNativeDataSource": 0

                    },

                    "suggestions": {

                        "dialogs": [

                            {

                                "name": "Pizza"

                            },

                            {

                                "name": "cancel Pizza"

                            }

                        ],

                        "answers": [

                            {

                                "positionId": "dg-w9gbz1wyech",

                                "content": "Executive Vice President and Chief Customer Officer, CVS Health and Co-President, CVS Pharmacy Read Michelle Peluso's bio",

                                "sources": [

                                    {

                                        "title": "Michelle Peluso",

                                        "url": "https://www.cvshealth.com/about-cvs-health/leadership#:~:text=Executive%20Vice%20President%20and%20Chief%20Customer%20Officer%2C%20CVS%20Health%20and%20Co%2DPresident%2C%20CVS%20Pharmacy%20Read%20Michelle%20Peluso%E2%80%99s%20bio"

                                    }

                                ],

                                "internalFlag": false

                            }

                        ],

                        "faqs": [

                            {

                                "sources": [

                                    {

                                        "title": "",

                                        "url": "",

                                        "sourceType": ""

                                    }

                                ],

                                "content": "",

                                "positionId": "dg-n4k9q25p7f"

                            },

                            {

                                "sources": [

                                    {

                                        "title": "",

                                        "url": "",

                                        "sourceType": ""

                                    }

                                ],

                                "content": "",

                                "positionId": "dg-y6gzdfon79"

                            },

                            {

                                "sources": [

                                    {

                                        "title": "",

                                        "url": "",

                                        "sourceType": ""

                                    }

                                ],

                                "content": "",

                                "positionId": "dg-4nng5iltnn"

                            }

                        ]

                    },

                    "used": []

                }

            ]

        },

        {

            "conversationID": "atesta-lxvnoqmc1",

            "botSessionID": "667be5e47206a7bc885113c7",

            "channel": "chat",

            "segmentID": "ac-b81825e-b793-436e-972e-18b0c76815a2",

            "segmentStartTime": "2024-06-26T09:56:46.323Z",

            "segmentEndTime": "2024-06-26T09:57:13.039Z",

            "agent": {

                "agentId": "agentID1"

            },

            "tags": [],

            "agentActions": [],

            "proActiveSuggestions": [

                {

                    "displayTime": "2024-06-26T09:56:54.969Z",

                    "utterance": "payment dispute",

                    "countDisplayedAnswers": {

                        "countDialogTasks": 1,

                        "countFaqs": 0,

                        "countWebPages": 0,

                        "countFiles": 0,

                        "countAnswers": 1,

                        "countFromNonNativeDataSource": 0

                    },

                    "suggestions": {

                        "dialogs": [

                            {

                                "name": "Payment dispute"

                            }

                        ],

                        "answers": [

                            {

                                "positionId": "dg-ya7d7p8y7m",

                                "content": "Bank of America's FAQ page is excellent. First, before accessing the page, it allows you to select your state of residence. Then, you have several options to search on the FAQ page. You can scroll through topics and select the one that best fits your question or you can search your question in the search bar. And there are links on the right side that help you perform some important actions like reporting fraudulent activity. Image Source",

                                "sources": [

                                    {

                                        "title": "3. Bank of America",

                                        "url": "https://blog.hubspot.com/service/faq-page#:~:text=Bank%20of%20America%27s%20FAQ%20page%20is%20excellent"

                                    }

                                ],

                                "internalFlag": false

                            }

                        ]

                    },

                    "used": [

                        {

                            "targetType": "Answer",

                            "target": {

                                "positionId": "dg-ya7d7p8y7m",

                                "title": "Bank of America's FAQ page is",

                                "status": "copy",

                                "displayTime": "2024-06-26T09:57:04.562Z",

                                "showmoreClicked": false,

                                "internalInfoClicked": false,

                                "answerLinkClicked": []

                            }

                        }

                    ]

                }

            ]

        },

        {

            "conversationID": "atesta-lxvo5ffn",

            "botSessionID": "667be7fb7206a7bc885121b5",

            "channel": "chat",

            "segmentID": "ac-0a9e0d1-0297-4233-9281-c349c88de33c",

            "segmentStartTime": "2024-06-26T10:05:01.781Z",

            "segmentEndTime": "2024-06-26T10:09:17.541Z",

            "agent": {

                "agentId": "agentID1"

            },

            "tags": [],

            "agentActions": [],

            "proActiveSuggestions": [

                {

                    "displayTime": "2024-06-26T10:05:50.111Z",

                    "utterance": "payment dispute",

                    "countDisplayedAnswers": {

                        "countDialogTasks": 1,

                        "countFaqs": 0,

                        "countWebPages": 0,

                        "countFiles": 0,

                        "countAnswers": 1,

                        "countFromNonNativeDataSource": 0

                    },

                    "suggestions": {

                        "dialogs": [

                            {

                                "name": "Payment dispute"

                            }

                        ],

                        "answers": [

                            {

                                "positionId": "dg-b8fdy7kca5k",

                                "content": "Bank of America's FAQ page is excellent. First, before accessing the page, it allows you to select your state of residence. Then, you have several options to search on the FAQ page. You can scroll through topics and select the one that best fits your question or you can search your question in the search bar. And there are links on the right side that help you perform some important actions like reporting fraudulent activity. Image Source",

                                "sources": [

                                    {

                                        "title": "3. Bank of America",

                                        "url": "https://blog.hubspot.com/service/faq-page#:~:text=Bank%20of%20America%27s%20FAQ%20page%20is%20excellent"

                                    }

                                ],

                                "internalFlag": false

                            }

                        ]

                    },

                    "used": [

                        {

                            "targetType": "DialogTask",

                            "target": {

                                "positionId": "dg-lspuywnl1b",

                                "name": "Payment dispute",

                                "runType": "assist",

                                "status": "completed",

                                "startTime": "2024-06-26T10:06:11.837Z",

                                "endTime": "2024-06-26T10:07:20.716Z",

                                "suggestionsCount": {

                                    "tellCustomer": 5,

                                    "askCustomer": 3,

                                    "tellUsed": 1,

                                    "askUsed": 3

                                }

                            },

                            "feedback": {

                                "response": "Up",

                                "reasonCode": [],

                                "comment": ""

                            }

                        },

                        {

                            "targetType": "Answer",

                            "target": {

                                "positionId": "dg-b8fdy7kca5k",

                                "title": "Bank of America's FAQ page is",

                                "status": "send",

                                "displayTime": "2024-06-26T10:08:30.982Z",

                                "showmoreClicked": false,

                                "internalInfoClicked": false,

                                "answerLinkClicked": []

                            }

                        }

                    ]

                }

            ]

        }

    ],

    "hasMore": false

}
