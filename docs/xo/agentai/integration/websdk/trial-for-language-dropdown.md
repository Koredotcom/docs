### BOT_TRANSCRIPT¶

This event delivers the AI Agent transcripts when the user interacts with the AI Agent prior to agent transfer.  
It allows you to customize the AI Agent response within the transcripts.

**Example:**

=== "JavaScript"

    ```javascript
    aaWindowInstance.on('BEFORE_VIEW_INIT', (html, payload) => {
        if (payload.event === 'BOT_TRANSCRIPT') {
            // Customize the HTML if required
            console.log('BOT_TRANSCRIPT event received');
        }
    });
    ```

=== "TypeScript"

    ```typescript
    aaWindowInstance.on('BEFORE_VIEW_INIT', (html: string, payload: { event: string }): void => {
        if (payload.event === 'BOT_TRANSCRIPT') {
            // Customize the HTML if required
            console.log('BOT_TRANSCRIPT event received');
        }
    });
    ```

=== "Python"

    ```python
    def on_before_view_init(html, payload):
        if payload.get("event") == "BOT_TRANSCRIPT":
            # Customize the HTML if required
            print("BOT_TRANSCRIPT event received")
    ```

=== "C#"

    ```csharp
    void OnBeforeViewInit(string html, dynamic payload)
    {
        if (payload.event == "BOT_TRANSCRIPT")
        {
            // Customize the HTML if required
            Console.WriteLine("BOT_TRANSCRIPT event received");
        }
    }
    ```

=== "JSON"

    ```json
    {
      "event": "BOT_TRANSCRIPT",
      "action": "customize_html",
      "message": "BOT_TRANSCRIPT event received"
    }
    ```

=== "Kotlin"

    ```kotlin
    fun onBeforeViewInit(html: String, payload: Map<String, Any>) {
        if (payload["event"] == "BOT_TRANSCRIPT") {
            // Customize the HTML if required
            println("BOT_TRANSCRIPT event received")
        }
    }
    ```
