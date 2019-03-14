# GitHub Action Triggered by Flic Button
Easily trigger GitHub Actions by clicking a Flic button.

# What is a Flic button?
Imagine a button that can control your smartphone or application. A button that you could use to take control of your apps without having to fumble with your phone every time you want to do something.

Wait, what?

Well think about it. We use our smartphones on a daily basis to do a bunch of things. We make phone calls, send texts and emails, we set our alarms, we update our calendars, we play music and some of us even use it to control our smart home devices like our lights and stereos. These things become time consuming, so imagine you could do these things with a little button. 

In this example, we will be using the click of Flic button as a trigger for our GitHub Actions workflow. This could be used for anything from firing off a text to your manager when you need help, triggering a call to your phone to help you escape a bad date, really ANYTHING!

# Why use a Flic button to trigger a GitHub Action?

Because sometimes you just need to push a button and see magic happen! :tophat::boom::rabbit:

# Pre-requisites
To trigger an action with a click of a Flic button, you'll need: 
- To be apart of the Actions beta
- To have a [Flic button](https://flic.io/shop/flic-1pack)
- To download the [Flic app (iOS and Android available)](https://start.flic.io/) to your phone and create an account

# Set Up
1. Once you've downloaded the Flic app and created an account, click the pink :heavy_plus_sign: to **Add Flic to Phone** and connect your button.


2. Once your Flic button is connected, name your button a descriptive name. _Example: GitHub Action Trigger_
4. Select the pink :heavy_plus_sign: next to **Click** to associate an action to a click of the Flic button.


5. Search for and select **GitHub** from the available Actions

<p align="center">
   <img src="https://user-images.githubusercontent.com/18128948/54395198-65369900-466c-11e9-88fd-25096e827731.gif" data-canonical-src="https://gyazo.com/eb5c5741b6a9a16c692170a41a49c858.png" width="200" height="400" />
</p>

6. Authenticate into your GitHub account 
<p align="center">
   <img src="https://user-images.githubusercontent.com/18128948/54395196-649e0280-466c-11e9-95d8-f406b592f41d.gif" data-canonical-src="https://gyazo.com/eb5c5741b6a9a16c692170a41a49c858.png" width="200" height="400" />
</p>


7. Enter an **Event Type** (this is trivial for now and can be any value) and select the **repository** you'd like your Flic Action to target
<p align="center">
   <img src="https://user-images.githubusercontent.com/18128948/54394944-9793c680-466b-11e9-9f07-542a3eaa9cdd.gif" data-canonical-src="https://gyazo.com/eb5c5741b6a9a16c692170a41a49c858.png" width="200" height="400" />
</p>

8. Within that repository on GitHub, use the `repository_dispatch` event to trigger your workflow in your `main.workflow` file. 

## Example `main.workflow ` file

This GitHub action will send a push notification to your phone using [techulus/push-github-action](https://github.com/techulus/push-github-action) as the action but is triggered off the click of the Flic button through the `repository_dispatch` event. 
   
```  
workflow "Handle inbound event" {
  on = "repository_dispatch"
  resolves = ["Send Push Notification"]
}

action "Send Push Notification" {
   uses = "techulus/push-github-action@0.0.1"
   secrets = ["API_KEY", "MESSAGE"]
} 
  ```
  





