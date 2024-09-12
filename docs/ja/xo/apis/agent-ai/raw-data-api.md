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

{


    "numResults": 2,


    "data": [


        {


            "conversationID": "atesta-lyfhbnlb",


            "botSessionID": "668e2f45f037fc2ab99aee54",


            "channel": "chat",


            "segmentID": "ac-350a3c0-1c9e-4684-920b-5479607dbc55",


            "segmentStartTime": "2024-07-10T06:49:45.556Z",


            "segmentEndTime": "2024-07-10T06:52:51.435Z",


            "agent": {


                "agentId": "agentID1"


            },


            "tags": [],


            "agentActions": [


                {


                    "actionType": "SearchBarEntry",


                    "action": {


                        "searchPhrase": "Return string to the given question using the provided Content and source_name in no particular order as references and use 'source_name' to improve the answer relevance for a given question and also provide citations using ' chunk_id ' to the 'Content' from which you answered the question.",


                        "typingStartTime": "2024-07-10T06:52:36.447Z",


                        "executionStartTime": "2024-07-10T06:52:36.871Z",


                        "displayTime": "2024-07-10T06:52:40.359Z",


                        "countDisplayedAnswers": {


                            "countDialogTasks": 0,


                            "countFaqs": 0,


                            "countWebPages": 5,


                            "countFiles": 0,


                            "countAnswers": 1,


                            "countFromNonNativeDataSource": 0


                        },


                        "suggestions": {


                            "answers": [


                                {


                                    "positionId": "dg-0iwjlizvjal",


                                    "content": "Some of the uses of HTML links include connecting web pages, navigating between different pages or resources, and specifying the destination URL using the href attribute . CVS Health offers on-site COVID-19 testing solutions for organizations, schools, and event hosts to ensure safety and continuity . The Board of Directors determines the location of annual and special meetings, allowing shareholders to attend in person or via remote communication . Thomas M. Moriarty, an executive at CVS Health, plays a crucial role in the company's brand strategy, external affairs, legal, and regulatory functions ",


                                    "sources": [


                                        {


                                            "tile": "HTML Links Hyperlinks - GeeksforGeeks",


                                            "url": "https://www.geeksforgeeks.org/html-links/"


                                        },


                                        {


                                            "tile": "Return Ready by CVS Health | COVID-19 testing for businesses & colleges | CVS Health",


                                            "url": "https://www.cvshealth.com/covid-19/return-ready"


                                        },


                                        {


                                            "tile": "Test data for search :",


                                            "url": "https://rajiv-kore.atlassian.net/wiki/spaces/MW/pages/393217"


                                        },


                                        {


                                            "tile": "Thomas M. Moriarty | CVS Health",


                                            "url": "https://www.cvshealth.com/about-cvs-health/leadership/thomas-moriarty"


                                        }


                                    ],


                                    "internalFlag": false


                                }


                            ],


                            "web": [


                                {


                                    "sources": [


                                        {


                                            "title": "HTML Links Hyperlinks - GeeksforGeeks",


                                            "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.geeksforgeeks.org%2Fhtml-links%2F&requestId=fsh-00918eb8-8436-5106-9aa0-d67d26eddea9&contentId=fc-c3f81b5d-91bd-40b7-bde5-3a3d31d61602&hId=752daacd5e91ffbc0418746ed95cb7293d55f7459fcb6369b421e6f992fd6e80"


                                        }


                                    ],


                                    "content": "HTML Links Hyperlinks Last Updated : 15 May, 2024 HTML links, or hyperlinks, connect web pages. They’re created using the <a> tag with the href attribute, which specifies the destination URL. Users can click on links to navigate between different pages or resources. Note: A hyperlink can be represen",


                                    "positionId": "dg-w1kynwisgq"


                                },


                                {


                                    "sources": [


                                        {


                                            "title": "Return Ready by CVS Health | COVID-19 testing for businesses & colleges | CVS Health",


                                            "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.cvshealth.com%2Fcovid-19%2Freturn-ready&requestId=fsh-00918eb8-8436-5106-9aa0-d67d26eddea9&contentId=fc-73f15dc0-4643-466f-bc55-465935046ae0&hId=c1cd32c9c1726257267a026fa6bc6e4df4d997573b50b276ed8847ab304f7e4b"


                                        }


                                    ],


                                    "content": "Skip to main content Let us help you find what you're looking for Standard search Return Ready by CVS Health® On-site COVID-19 testing solutions to help organizations, schools and event hosts bring people back together safely. Return Ready rapid on-site testing solutions Providing employers, schools",


                                    "positionId": "dg-dtdwsh2nt"


                                },


                                {


                                    "sources": [


                                        {


                                            "title": "Multicultural products and services | CVS Health",


                                            "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.cvshealth.com%2Fabout-cvs-health%2Fdiversity%2Fmulticultural-products-and-services&requestId=fsh-00918eb8-8436-5106-9aa0-d67d26eddea9&contentId=fc-1840c763-30ae-48de-8b49-08c55ccbfe57&hId=44d9b410bb709176d3494c855d2621a601267dd775d6fd422bbec1c50db93d37"


                                        }


                                    ],


                                    "content": "Skip to main content Let us help you find what you're looking for Standard search Multicultural products and services Every day, millions of people shop in our stores, fill their prescriptions through our mail order pharmacy, or visit one of our MinuteClinics. These customers, clients and patients c",


                                    "positionId": "dg-ku9jwfzj21"


                                },


                                {


                                    "sources": [


                                        {


                                            "title": "12 Crystal-Clear FAQ Page Examples & How to Make Your Own",


                                            "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fblog.hubspot.com%2Fservice%2Ffaq-page&requestId=fsh-00918eb8-8436-5106-9aa0-d67d26eddea9&contentId=fc-25930548-2cac-40b6-909e-babc1d268293&hId=6d3e690d6a90e16630e5ecd19893fe0a8da6f02af3669beda3eb1b7b37a93e97"


                                        }


                                    ],


                                    "content": "20 Customer Success Interview Questions to Ask Your Next CandidateCustomer Experience ROI: How to Convince Leadership It's Worth ItHow HubSpot Created Its Customer Journey Map11 Customer Service & Support Metrics You Must TrackHow to Create an Effective Customer Journey Map [Examples + Template]What",


                                    "positionId": "dg-58ewdhwn4fj"


                                },


                                {


                                    "sources": [


                                        {


                                            "title": "Veterans | CVS Health",


                                            "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.cvshealth.com%2Fabout-cvs-health%2Fdiversity%2Fveterans&requestId=fsh-00918eb8-8436-5106-9aa0-d67d26eddea9&contentId=fc-c06b2e8b-b01e-4b12-9ae2-fe2404e7dd8c&hId=978e142babba6c87c25a6d264edf3fc4fe33cbd668610df5f567e4de9918cac5"


                                        }


                                    ],


                                    "content": "Skip to main content Let us help you find what you're looking for Standard search Veterans CVS Health recognizes the value of military service and knows that our veterans’ skills and experience are unparalleled. With millions of service members transitioning out of the military over the next few yea",


                                    "positionId": "dg-yhpkp2x3r7"


                                }


                            ],


                            "confluencecloud": [


                                {


                                    "sources": [


                                        {


                                            "title": "Test data for search :",


                                            "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Frajiv-kore.atlassian.net%2Fwiki%2Fspaces%2FMW%2Fpages%2F393217&requestId=fsh-00918eb8-8436-5106-9aa0-d67d26eddea9&contentId=fc-24569f4f-0993-4586-aa8a-965a3a90b50d&hId=c2a18158c124d2614f3c761998864876d231256ed6391160be5a67ae1a455e0b"


                                        }


                                    ],


                                    "content": "<span class=\"highlightText\">You</span> can easily export this as a pdf by clicking the ... menu in the upper righthand corner.I. INCORPORATION. It is recognized that (“Corporation”) is a duly organized corporation authorized to do business in the State of (&amp;quot;State of Formation&amp;quot;) by its Articles of Incorporation or similar registered documents.II. STATE LAW. The Corporation is organized under the <span class=\"highlightText\">relevant</span> laws of the State of Formation (“Statutes”), and except as otherwise <span class=\"highlightText\">provided</span> herein, the Statutes shall apply to the governance of the Corporation.III. PURPOSE. The purpose of the Corporation is to engage in any lawful activity for <span class=\"highlightText\">which</span> corporations may be formed.IV. ANNUAL MEETING. Meetings of Shareholders shall be held at the principal office of the Corporation or at such other place that may be determined <span class=\"highlightText\">from</span> time to time by the Board of Directors of the Corporation. The purpose of the annual meeting shall be to elect the Board of Directors, officers and decide on any other business activities and&#x2F;or corporate decisions.An annual meeting must be held within 13 months after the last annual meeting or the date of the original organization of the Corporation. If an annual meeting has not been made within such time, then any Shareholder or Director may demand a meeting to be held within days after proper notice has been made.V. SPECIAL MEETINGS. Unless otherwise proscribed by statute, special meetings of the Shareholders may be called by: (check all that apply)President (or Chief Executive Officer).% of the Board of Directors.% of the Shareholders.Other. After a special meeting has been called, the Board of Directors shall decide its time and place within days after the special meeting has been called.VI. PLACE OF MEETINGS. Annual and special meetings shall be determined by the Board of Directors. By default, such meetings shall take place at the principal office of the Corporation. Shareholders of all classes and series may attend any meeting of the Corporation.Such meetings may be attended: (check all that apply)In-person at the Corporation’s principal office.Via remote communication, the method to be determined by the Board of Directors.Other. All communication methods shall offer each attending Shareholder the right to be present, vote on business matters, and provide their consent or dissent for any actionable item.VII. DISSOLUTION. The Corporation may only be dissolved in the following ways: (check all that apply)% vote by the Board of Directors.% vote by the Shareholders.Other. VIII. NOTICE OF MEETINGS. Written notice shall be provided to each Shareholder of any meeting that such Shareholder is permitted to take action in the form of a vote and&#x2F;or offer their consent or dissent for any actionable item. Such written notice shall detail the time, place, remote access (if available), and in the case of a special meeting, the purpose or purposes for which the meeting is called. Unless otherwise provided by law, written notice of any meeting shall be given not less than ten (10) days and no more than sixty (60) days before the date of the meeting.Notice of any meeting can be sent to the Shareholders by the following method(s): (check all that apply):E-Mail.Mailing Address via United States Mail (postage paid by the Corporation).Fax.Hand-Delivered.Other. IX. QUORUM. A quorum, which represents the required number of individuals to be present to hold an annual or special meeting, shall be: (check all that apply)% of the Board of Directors being present.% of the Shareholders being present.Other. Upon meeting the requirements of the quorum, the attending individuals of the meeting shall be able to take action and make decisions for the Corporation.X. ACTIONS OF THE CORPORATION. Actions made on behalf of the Corporation must be: (check one)Made with a Meeting ONLY. Any action required to be taken or which may be taken at any meeting, whether annual or special, must be taken with a meeting, in accordance with these Bylaws.Can be Made WITHOUT a Meeting. Any action required to be taken or which may be taken at any meeting, whether annual or special, may be taken without a meeting, without prior notice, and without a vote, if consent is in writing, setting forth the action so taken, and shall be signed by the holders of outstanding shares having not less than the minimum number of votes that would be necessary to take such action at a meeting at which all Shareholders entitled to vote were present and voted.XI. CORPORATE SEAL. The Corporation shall: (check one)HAVE a Corporate Seal. The corporate seal shall be in such form that the Board of Directors shall approve. NOT HAVE a Corporate Seal.XII. EXECUTION OF DOCUMENTS. All contracts, checks, drafts, demands for money, notes, and other legal instruments or rights of any nature of the Corporation may be signed by: (check all that apply)Board of Directors.Chairperson.President.Treasurer.Secretary.Other. XIII. INDEMNIFICATION. Subject to any applicable statute, any Director or Officer of the Corporation shall: (check one)BE INDEMNIFIED and held harmless by the Corporation to the fullest extent of the law. This includes, but is not limited to, a party to any action, suit, or proceeding, by reason of the fact of being a testator or intestate representative, is or was a Director, Officer, Agent, or Employee of the Corporation. The Corporation shall provide reasonable expenses, including attorney’s fees, actually and necessarily incurred in connection with such action, suit, or proceeding. Notwithstanding the foregoing, no indemnification shall be made by the Corporation of any judgment or other final determination, if the acts were committed in bad faith or were the result of active or deliberate fraud, dishonesty, or clear and gross negligence.NOT BE INDEMNIFIED or held harmless in any way by the Corporation.XIV. AMENDMENTS. These Bylaws may be amended by: (check all that apply):% vote of the Board of Directors.% vote of the Shareholders.Other. XV. STOCK CERTIFICATES. The Corporation may provide shares of stock: (check one)WITH CERTIFICATES. The Corporation, within a reasonable time after issue or transfer of shares without certificates, provide Shareholders a written statement of the information that is required by law to be on the certificates. Upon written request to the Secretary, a Shareholder may request certified stock certificates as provided by the Board of Directors.WITHOUT CERTIFICATES. The Corporation, within a reasonable time after issue or transfer of shares without certificates, provide Shareholders a written statement of the information that is required by law to be on the certificates.XVI. DIRECTORS. The Corporation shall be managed by Directors, who together constitute the Board of Directors.Nomination. The Board of Directors shall be elected by the Shareholders at the annual meeting by the vote of Shareholders holding of record in the aggregate at least a plurality of the shares of stock of the Corporation present in person or by proxy and entitled to vote at the annual meeting of Shareholders. Each Director serving a term of years unless removed by the Shareholders or upon the Director’s resignation.Quorum. It is required that a majority of the Board of Directors be present to be considered a quorum.Regular Meetings. By resolution and after the annual meeting, the Board of Directors may provide a time and place to meet without notice other than that resolution.Special Meetings. Special meetings may be demanded by any Officer or Director of the Corporation. Such demand must be made by submitting written notice via the United States Postal Service and by providing at least five (5) days notice.Remote Communication. One or more Directors may participate in meetings of the Board or a committee of the Board by any communication, including video-conference, by means of which all participating Directors can simultaneously hear each other during the meeting. Participation in this manner shall constitute presence in person at such meeting.Conflict of Interest. If any vote, either during a regular meeting, special meeting, or any other Corporate action takes place and a Director has a conflict of interest, such interest shall not invalidate their vote.Board of Director Actions. A majority of the total number of Board of Directors shall constitute a quorum for the transaction of all business matters. The act of a majority of Directors present at any meeting at which a quorum is present shall be considered an action taken by the entire Board of Directors, except as provided by law, the Articles of Incorporation, or these Bylaws. Each Director present shall have one vote, irrespective of the number of shares of stock, if any, he or she may hold.Removal. Any Director or the entire Board of Directors may be removed, at any time, with or without cause, by the holders of a majority of the voting stock of the Corporation, by such Shareholders attending a meeting for such purpose.Vacancies. Except as otherwise provided by law, any vacancy in the Board of Directors occurring by reason of an increase in the authorized number of Directors or by reason of the death, withdrawal, removal, disqualification, inability to act, or resignation of a Director shall be filled by the majority of Directors then in office. The successor shall serve the unexpired portion of the term of his or her predecessor. Any Director may resign at any time by giving written notice to the Board or the Secretary.Committees. The Board of Directors, by resolution, may create one or more committees, each consisting of one or more Directors. Each such committee shall serve at the pleasure of the Board. All provisions under the Statutes and these Bylaws relating to meetings, action without meetings, notice, and waiver of notice, quorum, and voting requirements of the Board of Directors shall apply to such committees and their members.Consent in Lieu of Meetings. Any action required or permitted to be taken at any meeting of the Board of Directors, or of any committee thereof, may be taken without a meeting of all members of the Board or committee, as the case may be, should there be consent thereto in writing, with such writing or writings to be filed with the minutes of the proceedings of the Board or committee.Compensation. The Board of Directors shall have the authority to fix the compensation of Directors. A fixed sum and expenses of attendance may be allowed for each regular or special meeting of the Board, including their services as a member of committees of the Board.XVII. CONFLICT OF INTEREST. A Director of the Corporation has a conflict of interest if the Director has an existing or potential business, financial or personal interest or holds an elected or appointed position that could impair or might reasonably appear to impair the exercise of independent, unbiased judgment in the discharge of his or her responsibilities to the Corporation. A conflict will be deemed to exist if the business, financial or personal interest or elected or appointed position is held by the Director or by a family member (spouse, parent, siblings, children or another close relative), or any organization in which the Director; or family member as defined, is an officer, Director, employee, trustee or material stockholder. If the Director in question disputes as to whether a conflict of interest is present, the matter shall be decided by a majority vote of the Board of Directors.XVIII. OFFICERS. The officers of the Corporation shall be a Chairperson, a President, a Secretary, and a Treasurer, and such other officers as the Board may from time to time appoint, including one or more Vice Presidents and such other officers as it deems advisable. Each such officer shall exercise such powers and perform such duties as shall be set forth herein and such other powers and duties as may be specified from time to time by the Board of Directors. The officers of the Corporation shall be elected by the Board of Directors. Each of the Chairperson, President, and&#x2F;or any Vice Presidents may have powers that are only delegated to them by the Board of Directors.Chairperson. The Chairperson shall have overall responsibility and authority for management and operations of the Corporation and shall preside at all meetings of the Board of Directors and Shareholders and shall ensure that all orders and resolutions of the Board of Directors and Shareholders are implemented.President. The President shall be the chief operating officer of the Corporation and shall have full responsibility and authority for management of the day-to-day operations of the Corporation. The President shall be an ex-officio member of all committees and shall have the general powers and duties of management and supervision usually vested in the office of President of a corporation.Treasurer. The Treasurer shall be the chief financial officer of the Corporation and shall have responsibility for the custody of the corporate funds and securities, to keep full and accurate records and accounts of receipts and disbursements in books belonging to the Corporation and shall keep the monies of the Corporation in a separate account in the name of the Corporation. The Treasurer shall provide to the President and Directors, at the regular meetings of the Board, or whenever requested by the Board, an account of all financial transactions and of the financial condition of the Corporation.Secretary. The Secretary shall attend all meetings of the Board and all meetings of the shareholders and shall act as clerk thereof and record all the votes of the Corporation and the minutes of all its transactions in a book to be kept for that purpose and shall perform like duties for all committees of the Board of Directors when required. The Secretary shall give, or cause to be given, a notice of all meetings of the shareholders and special meetings of the Board of Directors, and shall perform such other duties as may be prescribed by the Board of Directors or President, and under whose supervision the Secretary shall be. The Secretary shall maintain the records, minutes, and seal of the Corporation and may attest any instruments signed by any other officer of the Corporation.The officers of the Corporation shall hold office until their successors are chosen and have qualified or until their earlier resignation or removal. Any officer or agent elected or appointed by the Board may be removed at any time, with or without cause, by the affirmative vote of a majority of the Board of Directors. Any vacancy occurring in any office as a result of death, resignation, removal, or otherwise shall be filled for the unexpired portion of the term by a majority vote of the Board of Directors. Any and all compensation of officers of the Corporation shall be fixed by the Board of Directors.XIX. LIST OF SHAREHOLDERS. The officer of the Corporation who has charge of the stock ledger of the Corporation shall prepare and make, at least ten (10) days before any meeting of Shareholders, a complete list of the Shareholders entitled to vote at the meeting, arranged alphabetically, and showing the address of each Shareholder and the number of shares held by each Shareholder. The list shall be open to the examination of any Shareholder for any purpose germane to the meeting, during ordinary business hours, for a period of at least ten (10) days before the meeting, either at a mutually agrees upon location or where the meeting is to be held. The list shall also be produced and kept available at the time and place of the meeting, for the entire duration of the meeting, and can be inspected by any shareholder present at the meeting.XX. CERTIFICATION. The original, or a copy of these bylaws, as amended or otherwise altered to date, certified by the Secretary, shall be kept at the Corporation&#x27;s principal executive office and shall be open to inspection by the stockholders of the Corporation, at all reasonable times during office hours.By the signature below, these bylaws are hereby certified to be a complete and correct copy of the above-named Corporation, duly adopted by the initial Board of Directors on .ByDatehttps:&#x2F;&#x2F;esign.com&#x2F;Print nameTitleByhttps:&#x2F;&#x2F;esign.com&#x2F;DatePrint nameTitleByDatePrint nameTitlehttps:&#x2F;&#x2F;esign.com&#x2F;",


                                    "positionId": "dg-8o8nwt2btw"


                                }


                            ]


                        }


                    },


                    "used": [


                        {


                            "targetType": "Answer",


                            "target": {


                                "positionId": "dg-0iwjlizvjal",


                                "title": "Some of the uses of HTML",


                                "status": "send",


                                "displayTime": "2024-07-10T06:52:44.932Z",


                                "showmoreClicked": false,


                                "internalInfoClicked": false,


                                "answerLinkClicked": []


                            }


                        }


                    ]


                }


            ],


            "proActiveSuggestions": [


                {


                    "displayTime": "2024-07-10T06:50:46.513Z",


                    "utterance": "hi",


                    "countDisplayedAnswers": {


                        "countDialogTasks": 0,


                        "countFaqs": 0,


                        "countWebPages": 0,


                        "countFiles": 0,


                        "countAnswers": 0,


                        "countFromNonNativeDataSource": 0


                    },


                    "suggestions": {},


                    "used": []


                },


                {


                    "displayTime": "2024-07-10T06:50:56.797Z",


                    "utterance": "i want to cancel order",


                    "countDisplayedAnswers": {


                        "countDialogTasks": 1,


                        "countFaqs": 0,


                        "countWebPages": 1,


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


                                "positionId": "dg-77ha3vvvlx",


                                "content": "- To cancel the order, open the ··· menu and select Delete.\n[source_name: confluence_data, chunk_id: chk-1]",


                                "sources": [


                                    {}


                                ],


                                "internalFlag": false


                            }


                        ],


                        "web": [


                            {


                                "sources": [


                                    {


                                        "title": "Multicultural products and services | CVS Health",


                                        "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.cvshealth.com%2Fabout-cvs-health%2Fdiversity%2Fmulticultural-products-and-services&requestId=fsh-2f457ec6-94b3-5da4-b497-9a4212ab0629&contentId=fc-1840c763-30ae-48de-8b49-08c55ccbfe57&hId=a6029ef8813d678bf3ed746e358b617ae496737aba342d53b7ec898bcf2275f2"


                                    }


                                ],


                                "content": "Skip to main content Let us help you find what you're looking for Standard search Multicultural products and services Every day, millions of people shop in our stores, fill their prescriptions through our mail order pharmacy, or visit one of our MinuteClinics. These customers, clients and patients c",


                                "positionId": "dg-97ltdjavxv"


                            }


                        ],


                        "confluencecloud": [


                            {


                                "sources": [


                                    {


                                        "title": "Test data for search :",


                                        "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Frajiv-kore.atlassian.net%2Fwiki%2Fspaces%2FMW%2Fpages%2F393217&requestId=fsh-2f457ec6-94b3-5da4-b497-9a4212ab0629&contentId=fc-24569f4f-0993-4586-aa8a-965a3a90b50d&hId=218655d0f90af3bad15ad7fde31d1d360a83b7eb17b03bd01060b9ff5fba4dbe"


                                    }


                                ],


                                "content": " You can easily export this as a pdf by clicking the ... menu in the upper righthand corner.I. INCORPORATION. It is recognized that (“Corporation”) is a duly organized corporation authorized to do business in the State of (&quot;State of Formation&quot;) by its Articles of Incorporation or similar registered documents.II. STATE LAW. The Corporation is organized under the relevant laws of the State of Formation (“Statutes”), and except as otherwise provided herein, the Statutes shall apply to the governance of the Corporation.III. PURPOSE. The purpose of the Corporation is to engage in any lawful activity for which corporations may be formed.IV. ANNUAL MEETING. Meetings of Shareholders shall be held at the principal office of the Corporation or at such other place that may be determined from time to time by the Board of Directors of the Corporation. The purpose of the annual meeting shall be to elect the Board of Directors, officers and decide on any other business activities and/or corporate decisions.An annual meeting must be held within 13 months after the last annual meeting or the date of the original organization of the Corporation. If an annual meeting has not been made within such time, then any Shareholder or Director may demand a meeting to be held within days after proper notice has been made.V. SPECIAL MEETINGS. Unless otherwise proscribed by statute, special meetings of the Shareholders may be called by: (check all that apply)President (or Chief Executive Officer).% of the Board of Directors.% of the Shareholders.Other. After a special meeting has been called, the Board of Directors shall decide its time and place within days after the special meeting has been called.VI. PLACE OF MEETINGS. Annual and special meetings shall be determined by the Board of Directors. By default, such meetings shall take place at the principal office of the Corporation. Shareholders of all classes and series may attend any meeting of the Corporation.Such meetings may be attended: (check all that apply)In-person at the Corporation’s principal office.Via remote communication, the method to be determined by the Board of Directors.Other. All communication methods shall offer each attending Shareholder the right to be present, vote on business matters, and provide their consent or dissent for any actionable item.VII. DISSOLUTION. The Corporation may only be dissolved in the following ways: (check all that apply)% vote by the Board of Directors.% vote by the Shareholders.Other. VIII. NOTICE OF MEETINGS. Written notice shall be provided to each Shareholder of any meeting that such Shareholder is permitted to take action in the form of a vote and/or offer their consent or dissent for any actionable item. Such written notice shall detail the time, place, remote access (if available), and in the case of a special meeting, the purpose or purposes for which the meeting is called. Unless otherwise provided by law, written notice of any meeting shall be given not less than ten (10) days and no more than sixty (60) days before the date of the meeting.Notice of any meeting can be sent to the Shareholders by the following method(s): (check all that apply):E-Mail.Mailing Address via United States Mail (postage paid by the Corporation).Fax.Hand-Delivered.Other. IX. QUORUM. A quorum, which represents the required number of individuals to be present to hold an annual or special meeting, shall be: (check all that apply)% of the Board of Directors being present.% of the Shareholders being present.Other. Upon meeting the requirements of the quorum, the attending individuals of the meeting shall be able to take action and make decisions for the Corporation.X. ACTIONS OF THE CORPORATION. Actions made on behalf of the Corporation must be: (check one)Made with a Meeting ONLY. Any action required to be taken or which may be taken at any meeting, whether annual or special, must be taken with a meeting, in accordance with these Bylaws.Can be Made WITHOUT a Meeting. Any action required to be taken or which may be taken at any meeting, whether annual or special, may be taken without a meeting, without prior notice, and without a vote, if consent is in writing, setting forth the action so taken, and shall be signed by the holders of outstanding shares having not less than the minimum number of votes that would be necessary to take such action at a meeting at which all Shareholders entitled to vote were present and voted.XI. CORPORATE SEAL. The Corporation shall: (check one)HAVE a Corporate Seal. The corporate seal shall be in such form that the Board of Directors shall approve. NOT HAVE a Corporate Seal.XII. EXECUTION OF DOCUMENTS. All contracts, checks, drafts, demands for money, notes, and other legal instruments or rights of any nature of the Corporation may be signed by: (check all that apply)Board of Directors.Chairperson.President.Treasurer.Secretary.Other. XIII. INDEMNIFICATION. Subject to any applicable statute, any Director or Officer of the Corporation shall: (check one)BE INDEMNIFIED and held harmless by the Corporation to the fullest extent of the law. This includes, but is not limited to, a party to any action, suit, or proceeding, by reason of the fact of being a testator or intestate representative, is or was a Director, Officer, Agent, or Employee of the Corporation. The Corporation shall provide reasonable expenses, including attorney’s fees, actually and necessarily incurred in connection with such action, suit, or proceeding. Notwithstanding the foregoing, no indemnification shall be made by the Corporation of any judgment or other final determination, if the acts were committed in bad faith or were the result of active or deliberate fraud, dishonesty, or clear and gross negligence.NOT BE INDEMNIFIED or held harmless in any way by the Corporation.XIV. AMENDMENTS. These Bylaws may be amended by: (check all that apply):% vote of the Board of Directors.% vote of the Shareholders.Other. XV. STOCK CERTIFICATES. The Corporation may provide shares of stock: (check one)WITH CERTIFICATES. The Corporation, within a reasonable time after issue or transfer of shares without certificates, provide Shareholders a written statement of the information that is required by law to be on the certificates. Upon written request to the Secretary, a Shareholder may request certified stock certificates as provided by the Board of Directors.WITHOUT CERTIFICATES. The Corporation, within a reasonable time after issue or transfer of shares without certificates, provide Shareholders a written statement of the information that is required by law to be on the certificates.XVI. DIRECTORS. The Corporation shall be managed by Directors, who together constitute the Board of Directors.Nomination. The Board of Directors shall be elected by the Shareholders at the annual meeting by the vote of Shareholders holding of record in the aggregate at least a plurality of the shares of stock of the Corporation present in person or by proxy and entitled to vote at the annual meeting of Shareholders. Each Director serving a term of years unless removed by the Shareholders or upon the Director’s resignation.Quorum. It is required that a majority of the Board of Directors be present to be considered a quorum.Regular Meetings. By resolution and after the annual meeting, the Board of Directors may provide a time and place to meet without notice other than that resolution.Special Meetings. Special meetings may be demanded by any Officer or Director of the Corporation. Such demand must be made by submitting written notice via the United States Postal Service and by providing at least five (5) days notice.Remote Communication. One or more Directors may participate in meetings of the Board or a committee of the Board by any communication, including video-conference, by means of which all participating Directors can simultaneously hear each other during the meeting. Participation in this manner shall constitute presence in person at such meeting.Conflict of Interest. If any vote, either during a regular meeting, special meeting, or any other Corporate action takes place and a Director has a conflict of interest, such interest shall not invalidate their vote.Board of Director Actions. A majority of the total number of Board of Directors shall constitute a quorum for the transaction of all business matters. The act of a majority of Directors present at any meeting at which a quorum is present shall be considered an action taken by the entire Board of Directors, except as provided by law, the Articles of Incorporation, or these Bylaws. Each Director present shall have one vote, irrespective of the number of shares of stock, if any, he or she may hold.Removal. Any Director or the entire Board of Directors may be removed, at any time, with or without cause, by the holders of a majority of the voting stock of the Corporation, by such Shareholders attending a meeting for such purpose.Vacancies. Except as otherwise provided by law, any vacancy in the Board of Directors occurring by reason of an increase in the authorized number of Directors or by reason of the death, withdrawal, removal, disqualification, inability to act, or resignation of a Director shall be filled by the majority of Directors then in office. The successor shall serve the unexpired portion of the term of his or her predecessor. Any Director may resign at any time by giving written notice to the Board or the Secretary.Committees. The Board of Directors, by resolution, may create one or more committees, each consisting of one or more Directors. Each such committee shall serve at the pleasure of the Board. All provisions under the Statutes and these Bylaws relating to meetings, action without meetings, notice, and waiver of notice, quorum, and voting requirements of the Board of Directors shall apply to such committees and their members.Consent in Lieu of Meetings. Any action required or permitted to be taken at any meeting of the Board of Directors, or of any committee thereof, may be taken without a meeting of all members of the Board or committee, as the case may be, should there be consent thereto in writing, with such writing or writings to be filed with the minutes of the proceedings of the Board or committee.Compensation. The Board of Directors shall have the authority to fix the compensation of Directors. A fixed sum and expenses of attendance may be allowed for each regular or special meeting of the Board, including their services as a member of committees of the Board.XVII. CONFLICT OF INTEREST. A Director of the Corporation has a conflict of interest if the Director has an existing or potential business, financial or personal interest or holds an elected or appointed position that could impair or might reasonably appear to impair the exercise of independent, unbiased judgment in the discharge of his or her responsibilities to the Corporation. A conflict will be deemed to exist if the business, financial or personal interest or elected or appointed position is held by the Director or by a family member (spouse, parent, siblings, children or another close relative), or any organization in which the Director; or family member as defined, is an officer, Director, employee, trustee or material stockholder. If the Director in question disputes as to whether a conflict of interest is present, the matter shall be decided by a majority vote of the Board of Directors.XVIII. OFFICERS. The officers of the Corporation shall be a Chairperson, a President, a Secretary, and a Treasurer, and such other officers as the Board may from time to time appoint, including one or more Vice Presidents and such other officers as it deems advisable. Each such officer shall exercise such powers and perform such duties as shall be set forth herein and such other powers and duties as may be specified from time to time by the Board of Directors. The officers of the Corporation shall be elected by the Board of Directors. Each of the Chairperson, President, and/or any Vice Presidents may have powers that are only delegated to them by the Board of Directors.Chairperson. The Chairperson shall have overall responsibility and authority for management and operations of the Corporation and shall preside at all meetings of the Board of Directors and Shareholders and shall ensure that all orders and resolutions of the Board of Directors and Shareholders are implemented.President. The President shall be the chief operating officer of the Corporation and shall have full responsibility and authority for management of the day-to-day operations of the Corporation. The President shall be an ex-officio member of all committees and shall have the general powers and duties of management and supervision usually vested in the office of President of a corporation.Treasurer. The Treasurer shall be the chief financial officer of the Corporation and shall have responsibility for the custody of the corporate funds and securities, to keep full and accurate records and accounts of receipts and disbursements in books belonging to the Corporation and shall keep the monies of the Corporation in a separate account in the name of the Corporation. The Treasurer shall provide to the President and Directors, at the regular meetings of the Board, or whenever requested by the Board, an account of all financial transactions and of the financial condition of the Corporation.Secretary. The Secretary shall attend all meetings of the Board and all meetings of the shareholders and shall act as clerk thereof and record all the votes of the Corporation and the minutes of all its transactions in a book to be kept for that purpose and shall perform like duties for all committees of the Board of Directors when required. The Secretary shall give, or cause to be given, a notice of all meetings of the shareholders and special meetings of the Board of Directors, and shall perform such other duties as may be prescribed by the Board of Directors or President, and under whose supervision the Secretary shall be. The Secretary shall maintain the records, minutes, and seal of the Corporation and may attest any instruments signed by any other officer of the Corporation.The officers of the Corporation shall hold office until their successors are chosen and have qualified or until their earlier resignation or removal. Any officer or agent elected or appointed by the Board may be removed at any time, with or without cause, by the affirmative vote of a majority of the Board of Directors. Any vacancy occurring in any office as a result of death, resignation, removal, or otherwise shall be filled for the unexpired portion of the term by a majority vote of the Board of Directors. Any and all compensation of officers of the Corporation shall be fixed by the Board of Directors.XIX. LIST OF SHAREHOLDERS. The officer of the Corporation who has charge of the stock ledger of the Corporation shall prepare and make, at least ten (10) days before any meeting of Shareholders, a complete list of the Shareholders entitled to vote at the meeting, arranged alphabetically, and showing the address of each Shareholder and the number of shares held by each Shareholder. The list shall be open to the examination of any Shareholder for any purpose germane to the meeting, during ordinary business hours, for a period of at least ten (10) days before the meeting, either at a mutually agrees upon location or where the meeting is to be held. The list shall also be produced and kept available at the time and place of the meeting, for the entire duration of the meeting, and can be inspected by any shareholder present at the meeting.XX. CERTIFICATION. The original, or a copy of these bylaws, as amended or otherwise altered to date, certified by the Secretary, shall be kept at the Corporation's principal executive office and shall be open to inspection by the stockholders of the Corporation, at all reasonable times during office hours.By the signature below, these bylaws are hereby certified to be a complete and correct copy of the above-named Corporation, duly adopted by the initial Board of Directors on .ByDatehttps://esign.com/Print nameTitleByhttps://esign.com/DatePrint nameTitleByDatePrint nameTitlehttps://esign.com/",


                                "positionId": "dg-e7pr73egel"


                            }


                        ]


                    },


                    "used": [


                        {


                            "targetType": "DialogTask",


                            "target": {


                                "positionId": "dg-z1jbkr4wn2",


                                "name": "cancel Pizza",


                                "runType": "assist",


                                "status": "completed",


                                "startTime": "2024-07-10T06:51:02.050Z",


                                "endTime": "2024-07-10T06:51:19.753Z",


                                "suggestionsCount": {


                                    "tellCustomer": 1,


                                    "askCustomer": 4,


                                    "tellUsed": 0,


                                    "askUsed": 2


                                }


                            }


                        }


                    ]


                },


                {


                    "displayTime": "2024-07-10T06:51:44.013Z",


                    "utterance": "yes",


                    "countDisplayedAnswers": {


                        "countDialogTasks": 0,


                        "countFaqs": 0,


                        "countWebPages": 0,


                        "countFiles": 0,


                        "countAnswers": 1,


                        "countFromNonNativeDataSource": 0


                    },


                    "suggestions": {


                        "answers": [


                            {


                                "positionId": "dg-dlt1zfqtat",


                                "content": "- Yes, the President shall be an ex-officio member of all committees and have general powers and duties of management and supervision usually vested in the office of President of a corporation.\n- Yes, the Treasurer shall be the chief financial officer of the Corporation and have responsibility for the custody of corporate funds and securities.\n- Yes, the Secretary shall attend all meetings of the Board and shareholders, act as clerk, record votes, and perform like duties for all committees when required. ",


                                "sources": [


                                    {


                                        "tile": "Test data for search :",


                                        "url": "https://rajiv-kore.atlassian.net/wiki/spaces/MW/pages/393217"


                                    }


                                ],


                                "internalFlag": false


                            }


                        ]


                    },


                    "used": []


                }


            ]


        },


        {


            "conversationID": "atesta-lyfhbnlb",


            "botSessionID": "668e2f45f037fc2ab99aee54",


            "channel": "chat",


            "segmentID": "ac-db81a26-1691-4294-b289-c757b7d9a442",


            "segmentStartTime": "2024-07-10T06:49:45.556Z",


            "segmentEndTime": "2024-07-10T06:57:56.503Z",


            "agent": {


                "agentId": "agentID1"


            },


            "tags": [],


            "agentActions": [],


            "proActiveSuggestions": []


        }


    ],


    "hasMore": false


}
 
Response Body Parameters
PARAMETER
TYPE AND FORMAT
DESCRIPTION AND EXAMPLE
numResults
integer
number of results sent in this response
hasMore
boolean (True / False)
if there are any more pages left with results.
Example: “false” without the double-quotes
data
array of segment objects
Each segment is a part of a conversation that is driven by one primary agent.
data[].conversationID
–
unique id of the conversation – from customer
data[].botSessionID
alphanumeric string
unique id of the session – from Kore.
Example: “667fc3b587b5fd0fbf97d4de”
data[].channel
string
channel name – from customer.
Example: “chat”
data[].segmentID
type-prefixed uuid
unique id of the segment, prefixed by “ac” – from Kore.
Example: “ac-de166b2-1e14-4141-9061-9bca0203b068”
data[].agent
object
object containing data of the primary agent servicing this portion (aka segment) of the conversation.
All data is optional (except agentID), and comes from the customer via the process API
data[].agent.firstName
string
agent’s first name – from customer.
Example: “John”
data[].agent.lastName
string
agent’s last name – from customer.
Example: “Smith”
data[].agent.email
string of valid email address
agent’s email address – from customer.
Example: “john.smith@example.com”
data[].agent.name
string
agent name – from customer.
Example: “John Smith”
data[].agent.agentId
string
unique id of the agent- from customer.
Example: “jsmith01”
data[].tags
array of tag objects
Each tag is one created by bot developers at various points in the Dialog.
All tags emitted by the bot at any point during this portion of the conversation will be returned here.
data[].tags[].type
type of tag
can be a message-level tag,a session-level or a user-level tag.
Example: one of “user”,”message”, “session”
data[].tags[].name
string
key value of the tag – from the client’s bot developer
data[].tags[].value
string
value of the tag – from the client’s bot developer
data[].tags[].messageID
type-prefixed uuid
uuid of the message (prefix: “ms”) that emitted this tag – from Kore.
Example: “ms-de166b2-1e14-4141-9061-9bca0203b068”
data[].tags[].createdAt
Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
UTC-based time when this tag was emitted.
Example: “2024-06-29T08:37:35.937Z”
data[].segmentStartTime
Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
UTC-based time when this portion of the conversation began.
Example: “2024-06-29T08:37:35.937Z”
data[].segmentEndTime
Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
UTC-based time when this portion of the conversation end.
Example: “2024-06-29T08:37:35.937Z”
data[].agentActions
array of objects
array of objects each of which denotes an Agent’s action, which can be:
1. Attempt to Search via Search Bar
2. Running a DialogTask from the Library opening in Search bar
data[].agentActions[].actionType
string
type of Agent’s action.
Example: one of “SearchBarEntry”, “LibrarySelection”
data[].agentActions[].action
object
object containing data related to an Agent’s attempt to search.
Will be of type SearchBarEntry.
data[].agentActions[].used
array of objects
objects detailing which of the SearchBarEntries or the DialogTasks
were used – as in Sent, Copied, Executed, given Feedback, or had their links clicked
data[].agentActions[].used[].targetType
string
specifies the type of object used by the agent.
Example: one of “DialogTask”, “FAQ”, “Answer”, “File”, “WebPage”, “GeneralDataSource”
data[].agentActions[].used[].target
object
object containing details of use of any DialogTask or data source
data[].proActiveSuggestions
array of objects
objects containing suggestions given proactively by Agent AI.
These can be:
1. Suggestions given proactively based on Customer’s latest utterance
2. Suggestions given proactively based on preshown text, such as Summary.
data[].proActiveSuggestions[].utterance
string
entire utterance by the end Customer – redacted if redaction is enabled.
Example: “What is my account balance?”
data[].proActiveSuggestions[].suggestions
Suggestion object
each Suggestion by Agent AI, whether it is a DialogTask, an Answer, FAQ, Article or any other
data[].proActiveSuggestions[].displayTime
Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
time at which this list of suggestions was displayed (UTC).
Example: “2024-06-29T08:37:35.937Z”
data[].proActiveSuggestions[].countDisplayedAnswers
object
contains counts of all displayed suggestions by type
data[].proActiveSuggestions[].countDisplayedAnswers.countDialogTasks
integer
Number of DialogTasks suggested
data[].proActiveSuggestions[].countDisplayedAnswers.countFaqs
integer
Number of Faqs suggested
data[].proActiveSuggestions[].countDisplayedAnswers.countAnswers
integer
Number of Answers suggested
data[].proActiveSuggestions[].countDisplayedAnswers.countFiles
integer
Number of Files suggested
data[].proActiveSuggestions[].countDisplayedAnswers.countWebPages
integer
Number of Web pages suggested
data[].proActiveSuggestions[].countDisplayedAnswers.countFromNonNativeDataSource
integer
Number of suggestions from non-native data sources
data[].proActiveSuggestions[].used
array of objects
objects detailing which of the suggestions were used – as in Sent, Copied, Executed, given Feedback, or had their links clicked
data[].proActiveSuggestions[].used[].targetType
string
specifies the type of object used by the agent.
Example: one of “DialogTask”, “FAQ”, “Answer”, “File”, “WebPage”, “GeneralDataSource”
data[].proActiveSuggestions[].used[].target
object
object containing details of use of any DialogTask or data source
SearchBarEntry
object
This details an action by the Agent – when he enters text on the Search Bar.
SearchBarEntry.searchPhrase




SearchBarEntry.typingStartTime




SearchBarEntry.executionStartTime




SearchBarEntry.displayTime




SearchBarEntry.countDisplayedAnswers
object
contains counts of all displayed suggestions by type
SearchBarEntry.countDisplayedAnswers.countDialogTasks
integer
Number of DialogTasks suggested
SearchBarEntry.countDisplayedAnswers.countFaqs
integer
Number of Faqs suggested
SearchBarEntry.countDisplayedAnswers.countAnswers
integer
Number of Answers suggested
SearchBarEntry.countDisplayedAnswers.countFiles
integer
Number of Files suggested
SearchBarEntry.countDisplayedAnswers.countWebPages
integer
Number of Web pages suggested
SearchBarEntry.countDisplayedAnswers.countFromNonNativeDataSource
integer
Number of suggestions from non-native data sources
SearchBarEntry.suggestions
Suggestion object
each Suggestion by Agent AI, whether it is a DialogTask, an Answer, FAQ, Article or any other
DialogTask
object
This object is shown in a used array when a DialogTask is run.
DialogTask.name
string
name of the DialogTask – from the client’s bot developer.
Example: “Cancel account”
DialogTask.runType
string
How did the agent run it? Using the “Run” button, or the “Run with Agent input” button.
Example: one of “RunAssist”, “RunWithAgentInput”
DialogTask.status
string
Outcome of the DialogTask.
Example: one of “Completed”, “PrematurelyTerminated”, “TimedOut”, “Error”
DialogTask.SuggestionsCount
object
count of suggestions made by DialogTask by ask/tell prompt type.
DialogTask.SuggestionsCount.askSuggestions
integer
count of suggestions that prompt with “Ask Customer”
DialogTask.SuggestionsCount.tellSuggestions
integer
count of suggestions that prompt with “Tell Customer”
DialogTask.SuggestionsCount.askUsed
integer
count of “Ask” suggestions that were sent or copied over to Customer
DialogTask.SuggestionsCount.tellUsed
integer
count of “Tell” suggestions that were sent or copied over to Customer
DialogTask.startTime
Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
time at which this DialogTask began to run
Example: “2024-06-29T08:37:35.937Z”
DialogTask.endTime
Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
time at which this DialogTask ended its run.
Example: “2024-06-29T08:37:35.937Z”
DialogTask.feedback
object
feedback given by Agent to this DialogTask
faq
object
this object is shown in a used array when an faq Q&A pair is used
faq.title
string
Title of the FAQ Q&A pair.
Example: “FAQ 3.2”
faq.status
string
How was it used? Sent or Copied?
Example: one of “Sent”, “Copied”
faq.usedTime
Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
time at which this FAQ was sent or copied.
Example: “2024-06-29T08:37:35.937Z”
answer
object
this object is shown in a used array when an Answer from Search AI is used
answer.status
string
shows if the Answer has been Sent or Copied. If not sent or copied, but used otherwise, it will be blank. “Used Otherwise” means its “Show more” may have been clicked, one of its links may have been clicked, or the Agent gave feedback to it.
Example: one of “Sent”, “Copied”, or blank
answer.usedTime
Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
time at which this Answer was sent or copied. If not, it will be blank.
Example: “2024-06-29T08:37:35.937Z”
answer.showMoreClicked
boolean (True / False)
if the Show More button for this answer was clicked.
Example: “false” without the double-quotes
answer.answerLinkClicked
array of URL links
links in the Answer clicked by the Agent.
Example: [“http://www.google.com“]
answer.internalInfoMoreClicked
boolean (True / False)
if the Show More button for this answer was clicked.
Example: “false” without the double-quotes
answer.positionId
type-prefixed uuid
prefixed by “dg-“, a position ID referring to a displayed suggestion in the “suggestions” object.
Example: “dg-3id77hn44k”
answer.feedback
object
feedback given by Agent to this Answer
webpage
object
this object is shown in a used array when a webpage is used by the Agent
webpage.url
string – URL
URL of the webpage
webpage.status
string
How was it used? Sent or Copied?
Example: one of “Sent”, “Copied”
webpage.usedTime
Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
time at which this webpage was sent or copied.
Example: “2024-06-29T08:37:35.937Z”
file
object
this object is shown in a used array when a file is used by the Agent
file.path
string – filepath
path of the file.
Example: “/home/docs/configuration_parameters.doc”
file.status
string
How was it used? Sent or Copied?
Example: one of “Sent”, “Copied”
file.usedTime
Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
time at which this file was sent or copied.
Example: “2024-06-29T08:37:35.937Z”
general-data-source
object
this object is shown in a used array when a non-native data source is used by the Agent
general-data-source.connector
string
name of the data source.
Example: “MSSharepoint”
general-data-source.uri
URI
URI of the resource.
Example: “https://TestServer/TestSite/Reports/Doc/Company%20Sales.rdl“
general-data-source.status
string
How was it used? Sent or Copied?
Example: one of “Sent”, “Copied”
general-data-source.usedTime
Date: YYYY-MM-DDTHH24:mm:SS.NNNZ
time at which this resource was sent or copied.
Example: “2024-06-29T08:37:35.937Z”
feedback
object
contains feedback from an Agent to certain suggestions.
feedback.response
string
The Agent can choose Thumbs Up or Down.
Example: one of “up”, “down”
feedback.reasonCode
array of strings
the Agent may choose multiple reason codes, and these are configurable.
Example: [“Wrong Intent”, “Missed Context”]
feedback.comment
string
freeform textual feedback from the Agent.
Example: “This is not the correct Dialog. The customer said ‘Cancel account’, and the Dialog is about renewal”.
suggestions
object
containing all displayed suggestions, whether from a SearchBarEntry action by the Agent or a proActiveSuggestion triggered by a Customer’s utterance
suggestions.dialogs
array of objects
each object contains the particulars of a DialogTask displayed to Agent
suggestions.dialogs[].name
string
name of the DialogTask – from the client’s bot developer.
Example: “Cancel Account”
suggestions.answers
array of objects
each object contains details of an Answer displayed
suggestions.answers[].content
string
Generated Answer content.
Example: “A potentially very long answer that may be generated by an LLM”.
suggestions.answers[].positionId
type-prefixed uuid
prefixed by “dg-“, this field acts as a key for this particular answer, later referred to by an Answer object in a used array.
Example: “dg-3id77hn44k”
suggestions.answers[].sources
array of objects
array of source links from which the Answer was generated.
suggestions.answers[].sources[].title
string
Title of the page linked, that was one of the sources for the Answer.
Example: AWS EC2 On-demand pricing
suggestions.answers[].sources[].url
string – URL
The link itself.
Example: “https://aws.amazon.com/ec2/pricing/on-demand/“
suggestions.answers[].internalFlag
boolean (True / False)
Example: “false” without the double-quotes

 






















<!-----






Conversion time: 4.905 seconds.




Using this Markdown file:


1. Paste this output into your source file.
2. See the notes and action items below regarding this conversion run.
3. Check the rendered output (headings, lists, code blocks, tables) for proper
   formatting and use a linkchecker before you publish this page.


Conversion notes:


* Docs to Markdown version 1.0β36
* Wed Jul 10 2024 04:22:25 GMT-0700 (PDT)
* Source doc: Untitled document
* Tables are currently converted to HTML tables.
----->






```
https://{{host}}/agentassist/api/v1/public/{{streamid}}/v2/agentassistinteractions?from=YYYY-MM-DD-HH24:mm:SS&to=YYYY-MM-DD-HH24:mm:SS&offset=NNNNN&limit=0..100


curl --location 'https://staging-agentassist.kore.ai/agentassist/api/v1/public/st-f6ea0c31-f910-5b8e-82d8-dcbbc63bdede/v2/agentassistinteractions?from=2024-07-10T06%3A49%3A45&to=2024-07-10T07%3A06%3A25' \
--header 'accountId: 65433af84e520234494caa86' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTE5ZjA0NzU0LWQ4MzQtNTgxOC04NzE0LWYyNGZlYzYxODgxNyJ9.DEVT2UGCTjryY_bDVGmun4-Vcp_R9-b0iRonWaB-MMA'
```






## **Sample Response**




```
{


    "numResults": 2,


    "data": [


        {


            "conversationID": "atesta-lyfhbnlb",


            "botSessionID": "668e2f45f037fc2ab99aee54",


            "channel": "chat",


            "segmentID": "ac-350a3c0-1c9e-4684-920b-5479607dbc55",


            "segmentStartTime": "2024-07-10T06:49:45.556Z",


            "segmentEndTime": "2024-07-10T06:52:51.435Z",


            "agent": {


                "agentId": "agentID1"


            },


            "tags": [],


            "agentActions": [


                {


                    "actionType": "SearchBarEntry",


                    "action": {


                        "searchPhrase": "Return string to the given question using the provided Content and source_name in no particular order as references and use 'source_name' to improve the answer relevance for a given question and also provide citations using ' chunk_id ' to the 'Content' from which you answered the question.",


                        "typingStartTime": "2024-07-10T06:52:36.447Z",


                        "executionStartTime": "2024-07-10T06:52:36.871Z",


                        "displayTime": "2024-07-10T06:52:40.359Z",


                        "countDisplayedAnswers": {


                            "countDialogTasks": 0,


                            "countFaqs": 0,


                            "countWebPages": 5,


                            "countFiles": 0,


                            "countAnswers": 1,


                            "countFromNonNativeDataSource": 0


                        },


                        "suggestions": {


                            "answers": [


                                {


                                    "positionId": "dg-0iwjlizvjal",


                                    "content": "Some of the uses of HTML links include connecting web pages, navigating between different pages or resources, and specifying the destination URL using the href attribute . CVS Health offers on-site COVID-19 testing solutions for organizations, schools, and event hosts to ensure safety and continuity . The Board of Directors determines the location of annual and special meetings, allowing shareholders to attend in person or via remote communication . Thomas M. Moriarty, an executive at CVS Health, plays a crucial role in the company's brand strategy, external affairs, legal, and regulatory functions ",


                                    "sources": [


                                        {


                                            "tile": "HTML Links Hyperlinks - GeeksforGeeks",


                                            "url": "https://www.geeksforgeeks.org/html-links/"


                                        },


                                        {


                                            "tile": "Return Ready by CVS Health | COVID-19 testing for businesses & colleges | CVS Health",


                                            "url": "https://www.cvshealth.com/covid-19/return-ready"


                                        },


                                        {


                                            "tile": "Test data for search :",


                                            "url": "https://rajiv-kore.atlassian.net/wiki/spaces/MW/pages/393217"


                                        },


                                        {


                                            "tile": "Thomas M. Moriarty | CVS Health",


                                            "url": "https://www.cvshealth.com/about-cvs-health/leadership/thomas-moriarty"


                                        }


                                    ],


                                    "internalFlag": false


                                }


                            ],


                            "web": [


                                {


                                    "sources": [


                                        {


                                            "title": "HTML Links Hyperlinks - GeeksforGeeks",


                                            "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.geeksforgeeks.org%2Fhtml-links%2F&requestId=fsh-00918eb8-8436-5106-9aa0-d67d26eddea9&contentId=fc-c3f81b5d-91bd-40b7-bde5-3a3d31d61602&hId=752daacd5e91ffbc0418746ed95cb7293d55f7459fcb6369b421e6f992fd6e80"


                                        }


                                    ],


                                    "content": "HTML Links Hyperlinks Last Updated : 15 May, 2024 HTML links, or hyperlinks, connect web pages. They're created using the <a> tag with the href attribute, which specifies the destination URL. Users can click on links to navigate between different pages or resources. Note: A hyperlink can be represen",


                                    "positionId": "dg-w1kynwisgq"


                                },


                                {


                                    "sources": [


                                        {


                                            "title": "Return Ready by CVS Health | COVID-19 testing for businesses & colleges | CVS Health",


                                            "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.cvshealth.com%2Fcovid-19%2Freturn-ready&requestId=fsh-00918eb8-8436-5106-9aa0-d67d26eddea9&contentId=fc-73f15dc0-4643-466f-bc55-465935046ae0&hId=c1cd32c9c1726257267a026fa6bc6e4df4d997573b50b276ed8847ab304f7e4b"


                                        }


                                    ],


                                    "content": "Skip to main content Let us help you find what you're looking for Standard search Return Ready by CVS Health® On-site COVID-19 testing solutions to help organizations, schools and event hosts bring people back together safely. Return Ready rapid on-site testing solutions Providing employers, schools",


                                    "positionId": "dg-dtdwsh2nt"


                                },


                                {


                                    "sources": [


                                        {


                                            "title": "Multicultural products and services | CVS Health",


                                            "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.cvshealth.com%2Fabout-cvs-health%2Fdiversity%2Fmulticultural-products-and-services&requestId=fsh-00918eb8-8436-5106-9aa0-d67d26eddea9&contentId=fc-1840c763-30ae-48de-8b49-08c55ccbfe57&hId=44d9b410bb709176d3494c855d2621a601267dd775d6fd422bbec1c50db93d37"


                                        }


                                    ],


                                    "content": "Skip to main content Let us help you find what you're looking for Standard search Multicultural products and services Every day, millions of people shop in our stores, fill their prescriptions through our mail order pharmacy, or visit one of our MinuteClinics. These customers, clients and patients c",


                                    "positionId": "dg-ku9jwfzj21"


                                },


                                {


                                    "sources": [


                                        {


                                            "title": "12 Crystal-Clear FAQ Page Examples & How to Make Your Own",


                                            "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fblog.hubspot.com%2Fservice%2Ffaq-page&requestId=fsh-00918eb8-8436-5106-9aa0-d67d26eddea9&contentId=fc-25930548-2cac-40b6-909e-babc1d268293&hId=6d3e690d6a90e16630e5ecd19893fe0a8da6f02af3669beda3eb1b7b37a93e97"


                                        }


                                    ],


                                    "content": "20 Customer Success Interview Questions to Ask Your Next CandidateCustomer Experience ROI: How to Convince Leadership It's Worth ItHow HubSpot Created Its Customer Journey Map11 Customer Service & Support Metrics You Must TrackHow to Create an Effective Customer Journey Map [Examples + Template]What",


                                    "positionId": "dg-58ewdhwn4fj"


                                },


                                {


                                    "sources": [


                                        {


                                            "title": "Veterans | CVS Health",


                                            "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.cvshealth.com%2Fabout-cvs-health%2Fdiversity%2Fveterans&requestId=fsh-00918eb8-8436-5106-9aa0-d67d26eddea9&contentId=fc-c06b2e8b-b01e-4b12-9ae2-fe2404e7dd8c&hId=978e142babba6c87c25a6d264edf3fc4fe33cbd668610df5f567e4de9918cac5"


                                        }


                                    ],


                                    "content": "Skip to main content Let us help you find what you're looking for Standard search Veterans CVS Health recognizes the value of military service and knows that our veterans' skills and experience are unparalleled. With millions of service members transitioning out of the military over the next few yea",


                                    "positionId": "dg-yhpkp2x3r7"


                                }


                            ],


                            "confluencecloud": [


                                {


                                    "sources": [


                                        {


                                            "title": "Test data for search :",


                                            "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Frajiv-kore.atlassian.net%2Fwiki%2Fspaces%2FMW%2Fpages%2F393217&requestId=fsh-00918eb8-8436-5106-9aa0-d67d26eddea9&contentId=fc-24569f4f-0993-4586-aa8a-965a3a90b50d&hId=c2a18158c124d2614f3c761998864876d231256ed6391160be5a67ae1a455e0b"


                                        }


                                    ],


                                    "content": "<span class=\"highlightText\">You</span> can easily export this as a pdf by clicking the ... menu in the upper righthand corner.I. INCORPORATION. It is recognized that ("Corporation") is a duly organized corporation authorized to do business in the State of (&amp;quot;State of Formation&amp;quot;) by its Articles of Incorporation or similar registered documents.II. STATE LAW. The Corporation is organized under the <span class=\"highlightText\">relevant</span> laws of the State of Formation ("Statutes"), and except as otherwise <span class=\"highlightText\">provided</span> herein, the Statutes shall apply to the governance of the Corporation.III. PURPOSE. The purpose of the Corporation is to engage in any lawful activity for <span class=\"highlightText\">which</span> corporations may be formed.IV. ANNUAL MEETING. Meetings of Shareholders shall be held at the principal office of the Corporation or at such other place that may be determined <span class=\"highlightText\">from</span> time to time by the Board of Directors of the Corporation. The purpose of the annual meeting shall be to elect the Board of Directors, officers and decide on any other business activities and&#x2F;or corporate decisions.An annual meeting must be held within 13 months after the last annual meeting or the date of the original organization of the Corporation. If an annual meeting has not been made within such time, then any Shareholder or Director may demand a meeting to be held within days after proper notice has been made.V. SPECIAL MEETINGS. Unless otherwise proscribed by statute, special meetings of the Shareholders may be called by: (check all that apply)President (or Chief Executive Officer).% of the Board of Directors.% of the Shareholders.Other. After a special meeting has been called, the Board of Directors shall decide its time and place within days after the special meeting has been called.VI. PLACE OF MEETINGS. Annual and special meetings shall be determined by the Board of Directors. By default, such meetings shall take place at the principal office of the Corporation. Shareholders of all classes and series may attend any meeting of the Corporation.Such meetings may be attended: (check all that apply)In-person at the Corporation's principal office.Via remote communication, the method to be determined by the Board of Directors.Other. All communication methods shall offer each attending Shareholder the right to be present, vote on business matters, and provide their consent or dissent for any actionable item.VII. DISSOLUTION. The Corporation may only be dissolved in the following ways: (check all that apply)% vote by the Board of Directors.% vote by the Shareholders.Other. VIII. NOTICE OF MEETINGS. Written notice shall be provided to each Shareholder of any meeting that such Shareholder is permitted to take action in the form of a vote and&#x2F;or offer their consent or dissent for any actionable item. Such written notice shall detail the time, place, remote access (if available), and in the case of a special meeting, the purpose or purposes for which the meeting is called. Unless otherwise provided by law, written notice of any meeting shall be given not less than ten (10) days and no more than sixty (60) days before the date of the meeting.Notice of any meeting can be sent to the Shareholders by the following method(s): (check all that apply):E-Mail.Mailing Address via United States Mail (postage paid by the Corporation).Fax.Hand-Delivered.Other. IX. QUORUM. A quorum, which represents the required number of individuals to be present to hold an annual or special meeting, shall be: (check all that apply)% of the Board of Directors being present.% of the Shareholders being present.Other. Upon meeting the requirements of the quorum, the attending individuals of the meeting shall be able to take action and make decisions for the Corporation.X. ACTIONS OF THE CORPORATION. Actions made on behalf of the Corporation must be: (check one)Made with a Meeting ONLY. Any action required to be taken or which may be taken at any meeting, whether annual or special, must be taken with a meeting, in accordance with these Bylaws.Can be Made WITHOUT a Meeting. Any action required to be taken or which may be taken at any meeting, whether annual or special, may be taken without a meeting, without prior notice, and without a vote, if consent is in writing, setting forth the action so taken, and shall be signed by the holders of outstanding shares having not less than the minimum number of votes that would be necessary to take such action at a meeting at which all Shareholders entitled to vote were present and voted.XI. CORPORATE SEAL. The Corporation shall: (check one)HAVE a Corporate Seal. The corporate seal shall be in such form that the Board of Directors shall approve. NOT HAVE a Corporate Seal.XII. EXECUTION OF DOCUMENTS. All contracts, checks, drafts, demands for money, notes, and other legal instruments or rights of any nature of the Corporation may be signed by: (check all that apply)Board of Directors.Chairperson.President.Treasurer.Secretary.Other. XIII. INDEMNIFICATION. Subject to any applicable statute, any Director or Officer of the Corporation shall: (check one)BE INDEMNIFIED and held harmless by the Corporation to the fullest extent of the law. This includes, but is not limited to, a party to any action, suit, or proceeding, by reason of the fact of being a testator or intestate representative, is or was a Director, Officer, Agent, or Employee of the Corporation. The Corporation shall provide reasonable expenses, including attorney's fees, actually and necessarily incurred in connection with such action, suit, or proceeding. Notwithstanding the foregoing, no indemnification shall be made by the Corporation of any judgment or other final determination, if the acts were committed in bad faith or were the result of active or deliberate fraud, dishonesty, or clear and gross negligence.NOT BE INDEMNIFIED or held harmless in any way by the Corporation.XIV. AMENDMENTS. These Bylaws may be amended by: (check all that apply):% vote of the Board of Directors.% vote of the Shareholders.Other. XV. STOCK CERTIFICATES. The Corporation may provide shares of stock: (check one)WITH CERTIFICATES. The Corporation, within a reasonable time after issue or transfer of shares without certificates, provide Shareholders a written statement of the information that is required by law to be on the certificates. Upon written request to the Secretary, a Shareholder may request certified stock certificates as provided by the Board of Directors.WITHOUT CERTIFICATES. The Corporation, within a reasonable time after issue or transfer of shares without certificates, provide Shareholders a written statement of the information that is required by law to be on the certificates.XVI. DIRECTORS. The Corporation shall be managed by Directors, who together constitute the Board of Directors.Nomination. The Board of Directors shall be elected by the Shareholders at the annual meeting by the vote of Shareholders holding of record in the aggregate at least a plurality of the shares of stock of the Corporation present in person or by proxy and entitled to vote at the annual meeting of Shareholders. Each Director serving a term of years unless removed by the Shareholders or upon the Director's resignation.Quorum. It is required that a majority of the Board of Directors be present to be considered a quorum.Regular Meetings. By resolution and after the annual meeting, the Board of Directors may provide a time and place to meet without notice other than that resolution.Special Meetings. Special meetings may be demanded by any Officer or Director of the Corporation. Such demand must be made by submitting written notice via the United States Postal Service and by providing at least five (5) days notice.Remote Communication. One or more Directors may participate in meetings of the Board or a committee of the Board by any communication, including video-conference, by means of which all participating Directors can simultaneously hear each other during the meeting. Participation in this manner shall constitute presence in person at such meeting.Conflict of Interest. If any vote, either during a regular meeting, special meeting, or any other Corporate action takes place and a Director has a conflict of interest, such interest shall not invalidate their vote.Board of Director Actions. A majority of the total number of Board of Directors shall constitute a quorum for the transaction of all business matters. The act of a majority of Directors present at any meeting at which a quorum is present shall be considered an action taken by the entire Board of Directors, except as provided by law, the Articles of Incorporation, or these Bylaws. Each Director present shall have one vote, irrespective of the number of shares of stock, if any, he or she may hold.Removal. Any Director or the entire Board of Directors may be removed, at any time, with or without cause, by the holders of a majority of the voting stock of the Corporation, by such Shareholders attending a meeting for such purpose.Vacancies. Except as otherwise provided by law, any vacancy in the Board of Directors occurring by reason of an increase in the authorized number of Directors or by reason of the death, withdrawal, removal, disqualification, inability to act, or resignation of a Director shall be filled by the majority of Directors then in office. The successor shall serve the unexpired portion of the term of his or her predecessor. Any Director may resign at any time by giving written notice to the Board or the Secretary.Committees. The Board of Directors, by resolution, may create one or more committees, each consisting of one or more Directors. Each such committee shall serve at the pleasure of the Board. All provisions under the Statutes and these Bylaws relating to meetings, action without meetings, notice, and waiver of notice, quorum, and voting requirements of the Board of Directors shall apply to such committees and their members.Consent in Lieu of Meetings. Any action required or permitted to be taken at any meeting of the Board of Directors, or of any committee thereof, may be taken without a meeting of all members of the Board or committee, as the case may be, should there be consent thereto in writing, with such writing or writings to be filed with the minutes of the proceedings of the Board or committee.Compensation. The Board of Directors shall have the authority to fix the compensation of Directors. A fixed sum and expenses of attendance may be allowed for each regular or special meeting of the Board, including their services as a member of committees of the Board.XVII. CONFLICT OF INTEREST. A Director of the Corporation has a conflict of interest if the Director has an existing or potential business, financial or personal interest or holds an elected or appointed position that could impair or might reasonably appear to impair the exercise of independent, unbiased judgment in the discharge of his or her responsibilities to the Corporation. A conflict will be deemed to exist if the business, financial or personal interest or elected or appointed position is held by the Director or by a family member (spouse, parent, siblings, children or another close relative), or any organization in which the Director; or family member as defined, is an officer, Director, employee, trustee or material stockholder. If the Director in question disputes as to whether a conflict of interest is present, the matter shall be decided by a majority vote of the Board of Directors.XVIII. OFFICERS. The officers of the Corporation shall be a Chairperson, a President, a Secretary, and a Treasurer, and such other officers as the Board may from time to time appoint, including one or more Vice Presidents and such other officers as it deems advisable. Each such officer shall exercise such powers and perform such duties as shall be set forth herein and such other powers and duties as may be specified from time to time by the Board of Directors. The officers of the Corporation shall be elected by the Board of Directors. Each of the Chairperson, President, and&#x2F;or any Vice Presidents may have powers that are only delegated to them by the Board of Directors.Chairperson. The Chairperson shall have overall responsibility and authority for management and operations of the Corporation and shall preside at all meetings of the Board of Directors and Shareholders and shall ensure that all orders and resolutions of the Board of Directors and Shareholders are implemented.President. The President shall be the chief operating officer of the Corporation and shall have full responsibility and authority for management of the day-to-day operations of the Corporation. The President shall be an ex-officio member of all committees and shall have the general powers and duties of management and supervision usually vested in the office of President of a corporation.Treasurer. The Treasurer shall be the chief financial officer of the Corporation and shall have responsibility for the custody of the corporate funds and securities, to keep full and accurate records and accounts of receipts and disbursements in books belonging to the Corporation and shall keep the monies of the Corporation in a separate account in the name of the Corporation. The Treasurer shall provide to the President and Directors, at the regular meetings of the Board, or whenever requested by the Board, an account of all financial transactions and of the financial condition of the Corporation.Secretary. The Secretary shall attend all meetings of the Board and all meetings of the shareholders and shall act as clerk thereof and record all the votes of the Corporation and the minutes of all its transactions in a book to be kept for that purpose and shall perform like duties for all committees of the Board of Directors when required. The Secretary shall give, or cause to be given, a notice of all meetings of the shareholders and special meetings of the Board of Directors, and shall perform such other duties as may be prescribed by the Board of Directors or President, and under whose supervision the Secretary shall be. The Secretary shall maintain the records, minutes, and seal of the Corporation and may attest any instruments signed by any other officer of the Corporation.The officers of the Corporation shall hold office until their successors are chosen and have qualified or until their earlier resignation or removal. Any officer or agent elected or appointed by the Board may be removed at any time, with or without cause, by the affirmative vote of a majority of the Board of Directors. Any vacancy occurring in any office as a result of death, resignation, removal, or otherwise shall be filled for the unexpired portion of the term by a majority vote of the Board of Directors. Any and all compensation of officers of the Corporation shall be fixed by the Board of Directors.XIX. LIST OF SHAREHOLDERS. The officer of the Corporation who has charge of the stock ledger of the Corporation shall prepare and make, at least ten (10) days before any meeting of Shareholders, a complete list of the Shareholders entitled to vote at the meeting, arranged alphabetically, and showing the address of each Shareholder and the number of shares held by each Shareholder. The list shall be open to the examination of any Shareholder for any purpose germane to the meeting, during ordinary business hours, for a period of at least ten (10) days before the meeting, either at a mutually agrees upon location or where the meeting is to be held. The list shall also be produced and kept available at the time and place of the meeting, for the entire duration of the meeting, and can be inspected by any shareholder present at the meeting.XX. CERTIFICATION. The original, or a copy of these bylaws, as amended or otherwise altered to date, certified by the Secretary, shall be kept at the Corporation&#x27;s principal executive office and shall be open to inspection by the stockholders of the Corporation, at all reasonable times during office hours.By the signature below, these bylaws are hereby certified to be a complete and correct copy of the above-named Corporation, duly adopted by the initial Board of Directors on .ByDatehttps:&#x2F;&#x2F;esign.com&#x2F;Print nameTitleByhttps:&#x2F;&#x2F;esign.com&#x2F;DatePrint nameTitleByDatePrint nameTitlehttps:&#x2F;&#x2F;esign.com&#x2F;",


                                    "positionId": "dg-8o8nwt2btw"


                                }


                            ]


                        }


                    },


                    "used": [


                        {


                            "targetType": "Answer",


                            "target": {


                                "positionId": "dg-0iwjlizvjal",


                                "title": "Some of the uses of HTML",


                                "status": "send",


                                "displayTime": "2024-07-10T06:52:44.932Z",


                                "showmoreClicked": false,


                                "internalInfoClicked": false,


                                "answerLinkClicked": []


                            }


                        }


                    ]


                }


            ],


            "proActiveSuggestions": [


                {


                    "displayTime": "2024-07-10T06:50:46.513Z",


                    "utterance": "hi",


                    "countDisplayedAnswers": {


                        "countDialogTasks": 0,


                        "countFaqs": 0,


                        "countWebPages": 0,


                        "countFiles": 0,


                        "countAnswers": 0,


                        "countFromNonNativeDataSource": 0


                    },


                    "suggestions": {},


                    "used": []


                },


                {


                    "displayTime": "2024-07-10T06:50:56.797Z",


                    "utterance": "i want to cancel order",


                    "countDisplayedAnswers": {


                        "countDialogTasks": 1,


                        "countFaqs": 0,


                        "countWebPages": 1,


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


                                "positionId": "dg-77ha3vvvlx",


                                "content": "- To cancel the order, open the ··· menu and select Delete.\n[source_name: confluence_data, chunk_id: chk-1]",


                                "sources": [


                                    {}


                                ],


                                "internalFlag": false


                            }


                        ],


                        "web": [


                            {


                                "sources": [


                                    {


                                        "title": "Multicultural products and services | CVS Health",


                                        "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Fwww.cvshealth.com%2Fabout-cvs-health%2Fdiversity%2Fmulticultural-products-and-services&requestId=fsh-2f457ec6-94b3-5da4-b497-9a4212ab0629&contentId=fc-1840c763-30ae-48de-8b49-08c55ccbfe57&hId=a6029ef8813d678bf3ed746e358b617ae496737aba342d53b7ec898bcf2275f2"


                                    }


                                ],


                                "content": "Skip to main content Let us help you find what you're looking for Standard search Multicultural products and services Every day, millions of people shop in our stores, fill their prescriptions through our mail order pharmacy, or visit one of our MinuteClinics. These customers, clients and patients c",


                                "positionId": "dg-97ltdjavxv"


                            }


                        ],


                        "confluencecloud": [


                            {


                                "sources": [


                                    {


                                        "title": "Test data for search :",


                                        "url": "https://searchassist-pilot.kore.ai/searchassistapi/redirect?rurl=https%3A%2F%2Frajiv-kore.atlassian.net%2Fwiki%2Fspaces%2FMW%2Fpages%2F393217&requestId=fsh-2f457ec6-94b3-5da4-b497-9a4212ab0629&contentId=fc-24569f4f-0993-4586-aa8a-965a3a90b50d&hId=218655d0f90af3bad15ad7fde31d1d360a83b7eb17b03bd01060b9ff5fba4dbe"


                                    }


                                ],


                                "content": " You can easily export this as a pdf by clicking the ... menu in the upper righthand corner.I. INCORPORATION. It is recognized that ("Corporation") is a duly organized corporation authorized to do business in the State of (&quot;State of Formation&quot;) by its Articles of Incorporation or similar registered documents.II. STATE LAW. The Corporation is organized under the relevant laws of the State of Formation ("Statutes"), and except as otherwise provided herein, the Statutes shall apply to the governance of the Corporation.III. PURPOSE. The purpose of the Corporation is to engage in any lawful activity for which corporations may be formed.IV. ANNUAL MEETING. Meetings of Shareholders shall be held at the principal office of the Corporation or at such other place that may be determined from time to time by the Board of Directors of the Corporation. The purpose of the annual meeting shall be to elect the Board of Directors, officers and decide on any other business activities and/or corporate decisions.An annual meeting must be held within 13 months after the last annual meeting or the date of the original organization of the Corporation. If an annual meeting has not been made within such time, then any Shareholder or Director may demand a meeting to be held within days after proper notice has been made.V. SPECIAL MEETINGS. Unless otherwise proscribed by statute, special meetings of the Shareholders may be called by: (check all that apply)President (or Chief Executive Officer).% of the Board of Directors.% of the Shareholders.Other. After a special meeting has been called, the Board of Directors shall decide its time and place within days after the special meeting has been called.VI. PLACE OF MEETINGS. Annual and special meetings shall be determined by the Board of Directors. By default, such meetings shall take place at the principal office of the Corporation. Shareholders of all classes and series may attend any meeting of the Corporation.Such meetings may be attended: (check all that apply)In-person at the Corporation's principal office.Via remote communication, the method to be determined by the Board of Directors.Other. All communication methods shall offer each attending Shareholder the right to be present, vote on business matters, and provide their consent or dissent for any actionable item.VII. DISSOLUTION. The Corporation may only be dissolved in the following ways: (check all that apply)% vote by the Board of Directors.% vote by the Shareholders.Other. VIII. NOTICE OF MEETINGS. Written notice shall be provided to each Shareholder of any meeting that such Shareholder is permitted to take action in the form of a vote and/or offer their consent or dissent for any actionable item. Such written notice shall detail the time, place, remote access (if available), and in the case of a special meeting, the purpose or purposes for which the meeting is called. Unless otherwise provided by law, written notice of any meeting shall be given not less than ten (10) days and no more than sixty (60) days before the date of the meeting.Notice of any meeting can be sent to the Shareholders by the following method(s): (check all that apply):E-Mail.Mailing Address via United States Mail (postage paid by the Corporation).Fax.Hand-Delivered.Other. IX. QUORUM. A quorum, which represents the required number of individuals to be present to hold an annual or special meeting, shall be: (check all that apply)% of the Board of Directors being present.% of the Shareholders being present.Other. Upon meeting the requirements of the quorum, the attending individuals of the meeting shall be able to take action and make decisions for the Corporation.X. ACTIONS OF THE CORPORATION. Actions made on behalf of the Corporation must be: (check one)Made with a Meeting ONLY. Any action required to be taken or which may be taken at any meeting, whether annual or special, must be taken with a meeting, in accordance with these Bylaws.Can be Made WITHOUT a Meeting. Any action required to be taken or which may be taken at any meeting, whether annual or special, may be taken without a meeting, without prior notice, and without a vote, if consent is in writing, setting forth the action so taken, and shall be signed by the holders of outstanding shares having not less than the minimum number of votes that would be necessary to take such action at a meeting at which all Shareholders entitled to vote were present and voted.XI. CORPORATE SEAL. The Corporation shall: (check one)HAVE a Corporate Seal. The corporate seal shall be in such form that the Board of Directors shall approve. NOT HAVE a Corporate Seal.XII. EXECUTION OF DOCUMENTS. All contracts, checks, drafts, demands for money, notes, and other legal instruments or rights of any nature of the Corporation may be signed by: (check all that apply)Board of Directors.Chairperson.President.Treasurer.Secretary.Other. XIII. INDEMNIFICATION. Subject to any applicable statute, any Director or Officer of the Corporation shall: (check one)BE INDEMNIFIED and held harmless by the Corporation to the fullest extent of the law. This includes, but is not limited to, a party to any action, suit, or proceeding, by reason of the fact of being a testator or intestate representative, is or was a Director, Officer, Agent, or Employee of the Corporation. The Corporation shall provide reasonable expenses, including attorney's fees, actually and necessarily incurred in connection with such action, suit, or proceeding. Notwithstanding the foregoing, no indemnification shall be made by the Corporation of any judgment or other final determination, if the acts were committed in bad faith or were the result of active or deliberate fraud, dishonesty, or clear and gross negligence.NOT BE INDEMNIFIED or held harmless in any way by the Corporation.XIV. AMENDMENTS. These Bylaws may be amended by: (check all that apply):% vote of the Board of Directors.% vote of the Shareholders.Other. XV. STOCK CERTIFICATES. The Corporation may provide shares of stock: (check one)WITH CERTIFICATES. The Corporation, within a reasonable time after issue or transfer of shares without certificates, provide Shareholders a written statement of the information that is required by law to be on the certificates. Upon written request to the Secretary, a Shareholder may request certified stock certificates as provided by the Board of Directors.WITHOUT CERTIFICATES. The Corporation, within a reasonable time after issue or transfer of shares without certificates, provide Shareholders a written statement of the information that is required by law to be on the certificates.XVI. DIRECTORS. The Corporation shall be managed by Directors, who together constitute the Board of Directors.Nomination. The Board of Directors shall be elected by the Shareholders at the annual meeting by the vote of Shareholders holding of record in the aggregate at least a plurality of the shares of stock of the Corporation present in person or by proxy and entitled to vote at the annual meeting of Shareholders. Each Director serving a term of years unless removed by the Shareholders or upon the Director's resignation.Quorum. It is required that a majority of the Board of Directors be present to be considered a quorum.Regular Meetings. By resolution and after the annual meeting, the Board of Directors may provide a time and place to meet without notice other than that resolution.Special Meetings. Special meetings may be demanded by any Officer or Director of the Corporation. Such demand must be made by submitting written notice via the United States Postal Service and by providing at least five (5) days notice.Remote Communication. One or more Directors may participate in meetings of the Board or a committee of the Board by any communication, including video-conference, by means of which all participating Directors can simultaneously hear each other during the meeting. Participation in this manner shall constitute presence in person at such meeting.Conflict of Interest. If any vote, either during a regular meeting, special meeting, or any other Corporate action takes place and a Director has a conflict of interest, such interest shall not invalidate their vote.Board of Director Actions. A majority of the total number of Board of Directors shall constitute a quorum for the transaction of all business matters. The act of a majority of Directors present at any meeting at which a quorum is present shall be considered an action taken by the entire Board of Directors, except as provided by law, the Articles of Incorporation, or these Bylaws. Each Director present shall have one vote, irrespective of the number of shares of stock, if any, he or she may hold.Removal. Any Director or the entire Board of Directors may be removed, at any time, with or without cause, by the holders of a majority of the voting stock of the Corporation, by such Shareholders attending a meeting for such purpose.Vacancies. Except as otherwise provided by law, any vacancy in the Board of Directors occurring by reason of an increase in the authorized number of Directors or by reason of the death, withdrawal, removal, disqualification, inability to act, or resignation of a Director shall be filled by the majority of Directors then in office. The successor shall serve the unexpired portion of the term of his or her predecessor. Any Director may resign at any time by giving written notice to the Board or the Secretary.Committees. The Board of Directors, by resolution, may create one or more committees, each consisting of one or more Directors. Each such committee shall serve at the pleasure of the Board. All provisions under the Statutes and these Bylaws relating to meetings, action without meetings, notice, and waiver of notice, quorum, and voting requirements of the Board of Directors shall apply to such committees and their members.Consent in Lieu of Meetings. Any action required or permitted to be taken at any meeting of the Board of Directors, or of any committee thereof, may be taken without a meeting of all members of the Board or committee, as the case may be, should there be consent thereto in writing, with such writing or writings to be filed with the minutes of the proceedings of the Board or committee.Compensation. The Board of Directors shall have the authority to fix the compensation of Directors. A fixed sum and expenses of attendance may be allowed for each regular or special meeting of the Board, including their services as a member of committees of the Board.XVII. CONFLICT OF INTEREST. A Director of the Corporation has a conflict of interest if the Director has an existing or potential business, financial or personal interest or holds an elected or appointed position that could impair or might reasonably appear to impair the exercise of independent, unbiased judgment in the discharge of his or her responsibilities to the Corporation. A conflict will be deemed to exist if the business, financial or personal interest or elected or appointed position is held by the Director or by a family member (spouse, parent, siblings, children or another close relative), or any organization in which the Director; or family member as defined, is an officer, Director, employee, trustee or material stockholder. If the Director in question disputes as to whether a conflict of interest is present, the matter shall be decided by a majority vote of the Board of Directors.XVIII. OFFICERS. The officers of the Corporation shall be a Chairperson, a President, a Secretary, and a Treasurer, and such other officers as the Board may from time to time appoint, including one or more Vice Presidents and such other officers as it deems advisable. Each such officer shall exercise such powers and perform such duties as shall be set forth herein and such other powers and duties as may be specified from time to time by the Board of Directors. The officers of the Corporation shall be elected by the Board of Directors. Each of the Chairperson, President, and/or any Vice Presidents may have powers that are only delegated to them by the Board of Directors.Chairperson. The Chairperson shall have overall responsibility and authority for management and operations of the Corporation and shall preside at all meetings of the Board of Directors and Shareholders and shall ensure that all orders and resolutions of the Board of Directors and Shareholders are implemented.President. The President shall be the chief operating officer of the Corporation and shall have full responsibility and authority for management of the day-to-day operations of the Corporation. The President shall be an ex-officio member of all committees and shall have the general powers and duties of management and supervision usually vested in the office of President of a corporation.Treasurer. The Treasurer shall be the chief financial officer of the Corporation and shall have responsibility for the custody of the corporate funds and securities, to keep full and accurate records and accounts of receipts and disbursements in books belonging to the Corporation and shall keep the monies of the Corporation in a separate account in the name of the Corporation. The Treasurer shall provide to the President and Directors, at the regular meetings of the Board, or whenever requested by the Board, an account of all financial transactions and of the financial condition of the Corporation.Secretary. The Secretary shall attend all meetings of the Board and all meetings of the shareholders and shall act as clerk thereof and record all the votes of the Corporation and the minutes of all its transactions in a book to be kept for that purpose and shall perform like duties for all committees of the Board of Directors when required. The Secretary shall give, or cause to be given, a notice of all meetings of the shareholders and special meetings of the Board of Directors, and shall perform such other duties as may be prescribed by the Board of Directors or President, and under whose supervision the Secretary shall be. The Secretary shall maintain the records, minutes, and seal of the Corporation and may attest any instruments signed by any other officer of the Corporation.The officers of the Corporation shall hold office until their successors are chosen and have qualified or until their earlier resignation or removal. Any officer or agent elected or appointed by the Board may be removed at any time, with or without cause, by the affirmative vote of a majority of the Board of Directors. Any vacancy occurring in any office as a result of death, resignation, removal, or otherwise shall be filled for the unexpired portion of the term by a majority vote of the Board of Directors. Any and all compensation of officers of the Corporation shall be fixed by the Board of Directors.XIX. LIST OF SHAREHOLDERS. The officer of the Corporation who has charge of the stock ledger of the Corporation shall prepare and make, at least ten (10) days before any meeting of Shareholders, a complete list of the Shareholders entitled to vote at the meeting, arranged alphabetically, and showing the address of each Shareholder and the number of shares held by each Shareholder. The list shall be open to the examination of any Shareholder for any purpose germane to the meeting, during ordinary business hours, for a period of at least ten (10) days before the meeting, either at a mutually agrees upon location or where the meeting is to be held. The list shall also be produced and kept available at the time and place of the meeting, for the entire duration of the meeting, and can be inspected by any shareholder present at the meeting.XX. CERTIFICATION. The original, or a copy of these bylaws, as amended or otherwise altered to date, certified by the Secretary, shall be kept at the Corporation's principal executive office and shall be open to inspection by the stockholders of the Corporation, at all reasonable times during office hours.By the signature below, these bylaws are hereby certified to be a complete and correct copy of the above-named Corporation, duly adopted by the initial Board of Directors on .ByDatehttps://esign.com/Print nameTitleByhttps://esign.com/DatePrint nameTitleByDatePrint nameTitlehttps://esign.com/",


                                "positionId": "dg-e7pr73egel"


                            }


                        ]


                    },


                    "used": [


                        {


                            "targetType": "DialogTask",


                            "target": {


                                "positionId": "dg-z1jbkr4wn2",


                                "name": "cancel Pizza",


                                "runType": "assist",


                                "status": "completed",


                                "startTime": "2024-07-10T06:51:02.050Z",


                                "endTime": "2024-07-10T06:51:19.753Z",


                                "suggestionsCount": {


                                    "tellCustomer": 1,


                                    "askCustomer": 4,


                                    "tellUsed": 0,


                                    "askUsed": 2


                                }


                            }


                        }


                    ]


                },


                {


                    "displayTime": "2024-07-10T06:51:44.013Z",


                    "utterance": "yes",


                    "countDisplayedAnswers": {


                        "countDialogTasks": 0,


                        "countFaqs": 0,


                        "countWebPages": 0,


                        "countFiles": 0,


                        "countAnswers": 1,


                        "countFromNonNativeDataSource": 0


                    },


                    "suggestions": {


                        "answers": [


                            {


                                "positionId": "dg-dlt1zfqtat",


                                "content": "- Yes, the President shall be an ex-officio member of all committees and have general powers and duties of management and supervision usually vested in the office of President of a corporation.\n- Yes, the Treasurer shall be the chief financial officer of the Corporation and have responsibility for the custody of corporate funds and securities.\n- Yes, the Secretary shall attend all meetings of the Board and shareholders, act as clerk, record votes, and perform like duties for all committees when required. ",


                                "sources": [


                                    {


                                        "tile": "Test data for search :",


                                        "url": "https://rajiv-kore.atlassian.net/wiki/spaces/MW/pages/393217"


                                    }


                                ],


                                "internalFlag": false


                            }


                        ]


                    },


                    "used": []


                }


            ]


        },


        {


            "conversationID": "atesta-lyfhbnlb",


            "botSessionID": "668e2f45f037fc2ab99aee54",


            "channel": "chat",


            "segmentID": "ac-db81a26-1691-4294-b289-c757b7d9a442",


            "segmentStartTime": "2024-07-10T06:49:45.556Z",


            "segmentEndTime": "2024-07-10T06:57:56.503Z",


            "agent": {


                "agentId": "agentID1"


            },


            "tags": [],


            "agentActions": [],


            "proActiveSuggestions": []


        }


    ],


    "hasMore": false


}
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
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.typingStartTime
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.executionStartTime
   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>SearchBarEntry.displayTime
   </td>
   <td>
   </td>
   <td>
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
Example: “<a href="https://aws.amazon.com/ec2/pricing/on-demand/">https://aws.amazon.com/ec2/pricing/on-demand/</a>“
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
</table>




