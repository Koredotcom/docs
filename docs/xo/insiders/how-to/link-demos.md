
# Playing with links

how do different kind of links going to work?

1. Open link from image 
[![Mushroom](../mushroom.png){ width=60} ](https://www.pngwing.com/en/free-png-duoxo) 
2. [Open link through text](https://developer.kore.ai/docs/bots/how-tos/update-booking-task/) 
3. <a href="https://developer.kore.ai/uncategorised/change-flight-task/" target="_blank">Open link in new tab</a>
4. Some [Knowledge Graph](https://developer.kore.ai/uncategorised/build-a-travel-assistant-knowledge-graph/) FAQs along with relevant structure that lets your VA reply to users’ questions, initiate tasks and detect intents appropriately. 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible"
          content="IE=edge">
    <meta name="viewport"
          content="width=device-width,
                   initial-scale=1.0">
    <style>
        .box {
            background-color: black;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        p {
            font-size: 17px;
            align-items: center;
        }
        .box a {
            display: inline-block;
            background-color: #fff;
            padding: 15px;
            border-radius: 3px;
        }
        .modal {
            align-items: center;
            display: flex;
            justify-content: center;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            background: rgba(254, 126, 126, 0.7);
            transition: all 0.4s;
            visibility: hidden;
            opacity: 0;
        }
        .content {
            position: absolute;
            background: white;
            width: 400px;
            padding: 1em 2em;
            border-radius: 4px;
        }
        .modal:target {
            visibility: visible;
            opacity: 1;
        }
        .box-close {
            position: absolute;
            top: 0;
            right: 15px;
            color: #fe0606;
            text-decoration: none;
            font-size: 30px;
        }
    </style>
</head>
 
<body>
    <div class="box">
        <a href="#popup-box">
            Click to Open Popup Box !
        </a>
    </div>
    <div id="popup-box" class="modal">
        <div class="content">
            <h1 style="color: green;">
                Hello GeeksForGeeks !
            </h1>
            <b>
                <p>Never Give Up !</p>
            </b>
            <a href="#"
               class="box-close">
                ×
            </a>
        </div>
    </div>
</body>
</html>