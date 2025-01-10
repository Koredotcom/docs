# Using Single Sign-On

SSO enables easy access to **AI for Work** using your existing identity provider. With SSO, your users can log on once, for example, to your company account, and when accessing AI for Work, the system can automatically use the same login credentials.

Administrators can configure Single Sign-On (SSO) authentication for **AI for Work** using one of the following sign-on protocols or methods:

* OpenID Connect
* Security Assertion Markup Language (SAML)
* WS-Federation sign-on protocol.

Depending on the security required for your company, you can enable or disable Single Sign-On (SSO) for users accessing the **AI for Work**. Turn on the toggle **Enable SSO** to enable Single Sign-On.  
<img src="../images/sso.png" alt="sso" title="sso" style="border: 1px solid gray; zoom:80%;">

## Configure Sign-on Protocol

### Open ID Connect

Refer to the below steps to configure SSO using the Open ID Connect protocol.

1. Go to **Admin Console > Security > Single Sign-On** and turn on the toggle **Enable SSO**.
2. In the **Select a suitable Sign-On Protocol** section, select **Open ID connect**.
3. In the **Configure** section, select an identity provider, for example, **Sign in with Google**.
4. Optionally, turn on the toggle to **Configure service account for your G-Suite domain** and then define the settings:
    1. Client Email
    2. Admin Email
    3. Private key
5. Click **Save**.
6. The *Identity Provider information successfully updated* message is displayed at the top of the page.  
<img src="../images/success-message.png" alt="success-message" title="success-message" style="border: 1px solid gray; zoom:80%;">

### WS-Federation

Refer to the below steps to configure SSO using the WS-Federation protocol.

1. Go to **Admin Console > Security > Single Sign-On** and turn on the toggle **Enable SSO**.
2. In the **Select a suitable Sign-On Protocol**, select **WS-Federation**.
3. In the **Configure** section, select an identity provider, and then define the settings for:
    1. **Windows Azure®**
        * **Azure AD sign-on endpoint URL** – The URL that **AI for Work** must use for sign-on and sign-off/out requests using *Azure*. 
        * **Azure AD Federation metadata Document** – The URL for the federation metadata document used for authentication with *Azure* Active Directory.
    2. **Other** – Generic WS-Federation identity provider configuration, other than Azure
        * **AD Sign-On endpoint URL** – The URL that **AI for Work** must use for sign-on and sign-off/out requests using your WS-Federation identity provider.
        * **AD Federation metadata Document URL** – The URL for the WS-Federation metadata document used for authentication with Active Directory.
4. Click **Save**.  
<img src="../images/ws-federation.png" alt="ws-federation" title="ws-federation" style="border: 1px solid gray; zoom:80%;">

### SAML

Security Assertion Markup Language (SAML) is a standard protocol for web browser Single Sign-On (SSO) using secure tokens. SAML eliminates all passwords and uses standard cryptography and digital signatures to pass a secure sign-in token from an identity provider to a SaaS application.

SAML provides a solution to allow your identity provider and service provider to exist separately. When a user logs into a SAML-enabled application, the service provider requests authorization from the appropriate identity provider. The identity provider authenticates the user’s credentials and then returns the authorization for the user to the service provider, and the user can now use the application.

Complete the following steps to configure Single Sign-On (SSO) using SAML protocol in the Admin Console of **AI for Work**.


1. Go to **Admin Console > Security > Single Sign-On** and turn on the toggle **Enable SSO**.
2. In the **Select a suitable Sign-On Protocol** section, select **SAML**.
3. In the **Configure** section, select an identity provider, and then define the settings for:
    1. **Okta**
        * **Okta Single Sign-On URL** – The SSO URL for *Okta.* This is to enable Service Provider-initiated SAML flow.
        * **Identity Provider Issuer** – The entity that provides the user identities, including the ability to authenticate a user.
        * **Certificate** – The public certificate stored by the service provider from the identity provider used to validate a user signature. 
    2. **onelogin**
        * **SAML 2.0 Endpoint** – The HTTP SSO endpoint for _OneLogin _to enable Service Provider-initiated SAML flow.
        * **Issuer URL** – The URL for the *OneLogin* issuer.
        * **Certificate** – The public certificate stored by the service provider from the identity provider used to validate a user signature.
    3. **BITIUM**
        * **Single Sign-On URL** – The HTTP SSO endpoint for *BITIUM* to enable Service Provider-initiated SAML flow.
        * **Issuer URL** – The URL for the *BITIUM* issuer.
        * **Certificate** – The public certificate stored by the service provider from the identity provider used to validate a user signature. 
    4. **Other**
        * **Single Sign-On URL** – The HTTP SSO endpoint to enable Service Provider-initiated SAML flow.
        * **Issuer URL** – The URL for the issuer.
        * **Certificate** – The public certificate stored by the service provider from the identity provider used to validate a user signature. 
4. Click **Save.**  
<img src="../images/saml.png" alt="saml" title="saml" style="border: 1px solid gray; zoom:80%;">