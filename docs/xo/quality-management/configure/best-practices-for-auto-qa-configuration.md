
# Best Practices for Auto QA Configuration

The following table describes the best practices that are based on by Question metrics.

<table>
  <tr>
   <td><strong>Category</strong>
   </td>
   <td><strong>Best Practices</strong>
   </td>
  </tr>
  <tr>
   <td><strong>General Configuration Principles</strong>
   </td>
   <td>
<ul>

<li>Maintain diversity and realism in metric configurations.

<li>Ensure configurations reflect plausible agent responses.

<li>Review and update configurations to reflect current use cases regularly.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Sentence Length and Complexity</strong>
   </td>
   <td>
<ul>

<li>Limit configurations to concise utterances, typically 1-3 sentences.

<li>Avoid configuring very long sentences or extensive text passages.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Handling Specific Identifiers</strong>
   </td>
   <td><strong>Company and Brand Names</strong>
<ul>

<li>Include when necessary, but be aware they can impact semantic adherence.

<li>Implement moderate thresholds (for example, 50-60% match) to accommodate variations <strong>Agent Names</strong>.

<ul>

<li>Minimize the use of specific agent names in configurations.

<li>Use [Agent Name] as a placeholder where the agent references themself or any other agents <strong>Product Names and Model IDs</strong>.

<ul>

<li>Avoid including specific model identifiers unless necessary.

<li>If included, expect precise usage in agent responses.

<li>Implement moderate thresholds (for example, 50-60% match) for these configurations.
</li>
</ul>
</li>
</ul>
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Threshold Recommendations</strong>
   </td>
   <td>
<ul>

<li>General configurations: 60-70% match.

<li>Configurations with company/brand names for policy: 70-80% match.

<li>Configurations with product specifics: 50-60% match.
<br>

!!! Note

        Adjust these thresholds based on your specific use case and requirements.

</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Testing and Validation</strong>
   </td>
   <td>
<ul>

<li>Validate configurations against real agent responses. 

<li>Monitor and analyze adherence rates to identify optimization areas for reconfiguration.
</li>
</ul>
   </td>
  </tr>
</table>