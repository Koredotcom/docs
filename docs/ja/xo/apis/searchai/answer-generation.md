# **回答生成 API**

この APIを使用すると、リクエストボディで送信されたクエリとメタフィルターに対応する SearchAI からの回答を取得できます。さらに、この APIは回答の生成に使用された適格なチャンクに関するデバッグ情報も返します。

<table>
  <tr>
   <td><strong>メソッド</strong>
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td><strong>エンドポイント</strong>
   </td>
   <td><code>https://{{host}}/api/public/stream/{{AppID}}/advancedSearch</code>
   </td>
  </tr>
  <tr>
   <td><strong>コンテンツタイプ</strong>
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td><strong>認証</strong>
   </td>
   <td><code>auth: {{JWT}}</code>
<p>
<a href="../api-introduction#generating-the-jwt-token">JWTトークンの生成方法</a>をご覧ください。
   </td>
  </tr>
  <tr>
   <td><strong>APIスコープ</strong>
   </td>
   <td>
<ul>

<li>回答生成
</li>
</ul>
   </td>
  </tr>
</table>

## クエリパラメータ

<table>
  <tr>
   <td><strong>パラメータ</strong>
   </td>
   <td><strong>必須</strong>
   </td>
   <td><strong>説明</strong>
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>必須
   </td>
   <td>環境URL。例：<code>https://platform.kore.ai</code>
   </td>
  </tr>
  <tr>
   <td>App ID
   </td>
   <td>必須
   </td>
   <td>アプリケーションの一意の識別子。App IDを表示するには、<strong>アプリ設定</strong>の<strong>開発ツール</strong>に移動し、<strong>JWT App</strong>を開きます。
   </td>
  </tr>
</table>

## リクエスト例

```
curl --location 'https://platform.kore.ai/api/public/stream/st-3beea617-cfd5-5224-b70b-656c4eef768e/advancedSearch' \
--header 'auth: eyJhbGciOiJnR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwiYXBwSWQiOiJjcy05Yzg5MGMwOS1kMzQ5LTUzZjctYmIwZC1jYWEwZGIwOGNmMTkifQ.K2DWFPthcsTlltPTcR1irzjlxr4LYUzknxeTRfANolo' \
--header 'Content-Type: application/json' \
--data '{
 "query": "Conversational AI",
 "metaFilters":  [{
  "condition": "AND",
  "rules": [
    {
      "fieldName": "sourceType",
      "fieldValue": [
        "file"
      ],
      "operator": "contains"
    }
  ]
}]
}'
```

## ボディパラメータ

<table>
  <tr>
   <td><strong>パラメータ</strong>
   </td>
   <td><strong>必須</strong>
   </td>
   <td><strong>説明</strong>
   </td>
  </tr>
  <tr>
   <td>query
   </td>
   <td>はい
   </td>
   <td>検索用のクエリ文字列
   </td>
  </tr>
  <tr>
   <td>metaFilter
   </td>
   <td>いいえ
   </td>
   <td>このパラメータを使用して、回答の生成に使用する前に回答インデックスから結果をフィルタリングするルールを定義できます。このパラメータは条件付きのルールの配列を受け取ります。例えば、クエリに対する回答にWebページのみを使用する場合は、以下のようにフィルターを設定します。
   
  <pre>
   <code>
    "metaFilters": [
        {
        "condition": "AND",
        "rules": [
            {
            "fieldName": "sourceType",
            "fieldValue": [
                "web"
            ],
            "operator": "contains"
            }]
        }]
    </pre>
    </code>
   </td>
  </tr>
   <tr>
   <td>answerSearch
   </td>
   <td>いいえ
   </td>
   <td>trueまたはfalseに設定できます。'true'に設定すると、レスポンスに回答が含まれます。逆に'false'に設定すると、クエリへの回答は省略されます。ただし、includeChunksInResponseフィールドを使用して、レスポンスで適格なチャンクを確認することはできます。デフォルトではtrueに設定されています。
   </td>
  </tr>
    <tr>
   <td>includeChunksInResponse</td>
   <td>いいえ</td>
   <td>trueまたはfalseに設定できます。trueに設定すると、レスポンスには他のパラメータと共に適格なチャンクのリストも含まれます。チャンク情報はレスポンスのchunk_resultフィールドに格納されます。</td>
  </tr>
</table>
