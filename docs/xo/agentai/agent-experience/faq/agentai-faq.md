## Intent Extraction from Summary

**Q: How do you configure the “Intent Extraction from Summary” feature?**

**A:** Follow these steps to configure the **Intent Extraction from Summary** feature:

1. Go to **Bot Builder** > **Dialog Tasks**.
2. Click to open a **Dialog Task** node against which you want to set intent extraction.
3. Click **Instance Properties**.
4. Add the **key** as **IntentExtractionSource** and **value** as **True** under the **Custom Tags > Message** field.  
<img src="../faq/intent-extraction-true.png" alt="intent-extraction-true" title="intent-extraction-true" style="border: 1px solid gray; zoom:80%;">

5. Press the **Enter** key to save.
6. Go to **Welcome Event > Configure On-Connect Dialog Task**, and enable it.
7. Select the relevant dialog task from the **Select Dialog** dropdown list, and enable the **Extract intents from On Connect Dialog Task** checkbox.
8. Click **Save**.  
<img src="../faq/welcome-events-extract-intents.png" alt="welcome-events-extract-intents" title="welcome-events-extract-intents" style="border: 1px solid gray; zoom:80%;">

    !!! note
        Ensure the **IntentExtractionSource** is assigned to only **one** node in the entire dialog.