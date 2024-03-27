

# How to Access the Platform

The Kore.ai XO Platform enables you to launch enterprise-grade, AI-enabled conversational Virtual Assistants using an intuitive graphical interface for building, training, testing, and monitoring virtual assistants.

Whether you are looking to build a complex VA that has to make multiple calls to your backend systems with conditional routing, or a VA that sends contextual notifications to your users, or even a VA that responds to their queries, creating VAs has never been easier.

This post takes you through the basics you need to know to successfully access the Kore.ai’s Experience Optimization Platform.


## Supported Browsers

Use the latest version of Google Chrome, Microsoft Edge, Safari, or Firefox. Internet Explorer mode in Microsoft Edge is not supported.


## Access the XO Platform

To access the Kore.ai XO Platform, visit[ https://bots.kore.ai/](https://bots.kore.ai/). You will be directed to the login page.

You can sign up for Kore.ai XO Platform in any of the following two ways:



* **Create a new account**: The Kore.ai’s XO Platform allows any user to sign up for the platform using their email address. You can sign up to create a personal account or even take the lead in setting up your enterprise’s account in Kore.ai. After you sign up for the account, you automatically become the account’s Admin, which allows you to invite other users to the account.
* **Join an existing enterprise account:** If your enterprise is already on Kore.ai, you can become a part of the account in one of the following ways:
    * Your enterprise account’s Bots Admin sends you an invite. If you haven’t already received the invitation email, reach out to them for access.
    * You can sign up using your enterprise email account and you are prompted to either join the enterprise network or create your own personal account. 



## New Account Sign-up

To sign up for a new account on the Kore.ai’s XO Platform, follow these steps:



1. Go to[ https://bots.kore.ai/botbuilder/login](https://bots.kore.ai/botbuilder/login).
2. On the Sign-up page, enter the email ID in the **Email ID** field.

    !!! note

        If the email address is already registered, the platform prompts you to sign-in  and to enter the password.
  





3. Enter all the other details to create the account.

    !!! note
        
        The account you create is identified by the email domain. When you invite other users to the account, the email includes this name.
        




4. On creating an account, a confirmation email is sent to the provided email address, with a verification link and a verification code, to sign in to the new account. 



    ![alt_text](images/accplatform(2).png "image_tooltip")

5. You can either click the **Verify Email** button or click/copy paste the verification URL in the browser. Upon verification, your account is created.
6. You can also complete the verification using the 6 digit verification code sent to the registered email address. The code can be entered either on your web browser or the mobile device.

    ![alt_text](images/accplatform(8).png "image_tooltip")


!!! note

    The platform sends reminder emails with the verification link and the code to the users who have not completed the sign up. The emails are sent to the email id provided by you during sign up, at periodic intervals as per the configurations done at the application level (Kore config level), with a new verification link and code upon expiry of the old ones.

    If the verification link or code expires or is invalid, the system displays a message to you, to request a new link and a code to complete the verification process.





![alt_text](images/accplatform(7).png "image_tooltip")
 
 Alternatively, you can sign up to the Kore.ai XO Platform using the Google, Microsoft Office or LinkedIn profiles. 


![alt_text](images/accplatform(10).png "image_tooltip")

!!! note

    Kore.ai XO Platform uses SAML-based authentication for completing the sign up and sign in flows.




## Sign in to the Platform

The Kore.ai XO Platform allows you to sign in to your account using your registered email ID and password.

With Single Sign-on (SSO), you can sign in securely (after authentication) by using just one set of credentials. Now, the Kore.ai XO Platform offers an additional layer of security beyond username and password during account sign-in with **Two-Factor Authentication (2FA)**. Enabling 2FA prompts for a security code verification after you’ve entered your username and password.


## The Platform Landing Page

After you sign in to Kore.ai’s XO Platform, you are directed to the landing page. From this page you can access various offerings as follows:



* **Virtual Assistants** – Design, build, test, and deploy AI-powered virtual assistants. This is selected by default. See[ here](https://developer.kore.ai/docs/bots/chatbot-overview/getting-started-bots/) for more information.
* **Process Apps** – Build multi-step and multi-user workflows for automating internal and external processes, for example, expense reimbursement, leave approval, etc. See[ here](https://developer.kore.ai/docs/process-apps/introduction/)<span style="text-decoration:underline;"> </span>for more information.
* **Data** – Define Data Tables, Table Views, and manipulate them from your Virtual Assistants and Process Apps. Thus taking care of your data needs, without having to depend on external services. See[ here](https://developer.kore.ai/docs/bots/advanced-topics/data-as-a-service/) for more information.
* **Explore Store** – Explore and import virtual assistants templates from Kore.ai’s online marketplace that runs on the Kore.ai platform. See[ here](https://developer.kore.ai/docs/bots/bot-store/store/) for more information.
* **Help** – Here is where you can find useful resources and support methods to help you develop your VA.
* **Account Switcher** – If you are part of more than one organization, here is where you can switch between accounts.
* **Profile** – Here is where you can see your profile details, set the platform’s language and log out.



![alt_text](images/accplatform(11).png "image_tooltip")



## Invite Users to your Virtual Assistant

Account administrators can add other enterprise users to the virtual assistant account by inviting them from the Bots Admin portal.

To invite users to your Kore.ai XO Platform account, follow these steps:



1. Sign in to the **Bots Admin** **portal**, at[ https://bots.kore.ai/admin](https://bots.kore.ai/admin). 

    ![alt_text](images/accplatform(6).png "image_tooltip")

2. On the left pane, select **Enrollment > Invite**. 


    ![alt_text](images/accplatform(5).png "image_tooltip")

3. **Enter the email IDs** of the users you want to invite.
4. Click **Send Invitations**. An invitation email is sent to these users. 


    ![alt_text](images/accplatform(9).png "image_tooltip")
    !!! note

        You can choose to invite a single user or bulk users.
   


5. When the invited user accepts the invitation, they are redirected to the Sign-up page.
    * If the user is new to the platform, they need to enter the required details to complete the registration. See[ New Account Sign-up](https://developer.kore.ai/docs/bots/chatbot-overview/how-to-access-bot-builder/#New_Account_Sign-up) to know more.
    * If the user’s email address is already registered on the platform, the user is prompted to enter the password to sign in.

!!! note
    
    At this point, the user can only access virtual assistants built in this account and cannot build virtual assistants from the XO Platform for this account.





## Give Access to the XO Platform

After a user is invited to an account, the administrator can enable the XO Platform access to these users. To give XO Platform access to an account user, follow these steps:



1. Sign in to the Bots Admin portal at[ https://bots.kore.ai/admin](https://bots.kore.ai/admin)
2. On the left pane, select **User Management > Users**.
3. On the _Manage Users_ window, **select the users** to whom you want to grant access. 




    ![alt_text](images/accplatform(4).png "image_tooltip")

4. From the _Actions_ drop-down list, select **XO Platform** Access and click Apply.
    ![alt_text](images/accplatform(14).png "image_tooltip")


!!! note

    The XO Platform access provided for an account gives permission to build and manage bots only in that account.



		

	

	

		

			


## Using Workspace

**Workspaces** are a way to organize people productively, while everyone is part of your wider team of Virtual Assistant developers. In the Kore.ai XO Platform, Workspaces are created when setting up your Kore.ai XO Platform account, and if you choose to use SSO.

Team members can join one or multiple Workspaces, or they can create their own. It’s easy to browse Workspaces within the same organization and to switch between them. Here is how it works.

Some of the common scenarios where you can join or sign up to a workspace include the following:



1. If you are invited by someone to join their workspace.
2. If your enterprise administrator adds you to your enterprise workspace through SSO or API.
3. If you use a business email address to sign up, you can join any other workspace that matches your email domain. In such cases, the system only creates a User identity for you and adds you to the selected workspace.
4. If you sign up using Single Sign-On (SSO) options like Google or Office 365, the platform will use your email domain as the Workspace name. For example, if your email address is john@doe.com, your workspace will be created as ‘doe.com’. You can always change the Workspace name from the Profile menu.
5. If you sign up using the email address verification option, you can define your workspace name during signup.
6. If you are the first user of a workspace, i.e., if you have created the workspace, you will automatically become the Workspace Owner.
7. Additional users can be invited to a workspace using the ‘Invite Team’ option or inviting users to a particular assistant.
8. A user can belong to multiple workspaces.


### Join a Workspace

Before setting up your Workspace, you need to sign up to the Kore.ai XO Platform.

If your email domain matches existing Workspaces within the XO Platform, then it means that your organization is already working on projects you may want to join. The Platform lists matching Workspaces and you can **Request Access** to them as soon as you sign up. If you are part of a team, but you are not managing it, then this is the recommended way to proceed.




![alt_text](images/accplatform(1).png "image_tooltip")


		

	

	

		

			


### Create Your Workspace

If you are managing a team, as part of your organization’s VA development projects, then you may want to create your own Workspace. You can do so by choosing **Create New**, rather than requesting access to an existing Workspace.





![alt_text](images/accplatform(3).png "image_tooltip")


To create your Workspace, you will need to provide a **Name**, and invite the first members by entering their email addresses. Those who accept your invitation will gain access to this Workspace exclusively.



![alt_text](images/accplatform(12).png "image_tooltip")


		

	

	

		

			


### Invite Members

After the Workspace has been created, Administrators can invite new members using the **Invite** option on the main landing page, in the top navigation menu.

!!! note

    By default, the **Invite Members** option at the Builder level is visible for the admins with the ‘Master Admin’ role. For admins with custom administrator roles, the **Invite** permission should be enabled in the role management.



 
![alt_text](images/accplatform(1).gif "image_tooltip")


		



### Switch Workspaces

Team members can switch workspaces, using the switcher at the top right, next to the profile area. 


![alt_text](images/accplatform(13).png "image_tooltip")




### Browse Workspaces

Team members can also **Browse Workspaces** to see those that are active within your organization, and to which access can be requested. This option lists Workspaces based on the email domain.





![alt_text](images/accplatform(2).gif "image_tooltip")

		
