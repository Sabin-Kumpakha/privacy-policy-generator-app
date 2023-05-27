class Policy {
  String appName;
  String contactNo;
  String location;
  String email;

  Policy(this.appName, this.contactNo, this.location, this.email);

  String generatePolicy() {
    String policy = """
  <h1>
  Privacy Policy for $appName
  </h1>

  <p>
  This privacy policy explains how $appName (“we”, “us”, or “our”) collects, uses, and shares your personal information when you use our app. Please read this policy carefully before using our app or providing us with any personal information.
  </p>

  <h2>
   What personal information do we collect and how do we collect it?
  </h2>

  <p>
   Personal information is any information that can identify you or be linked to you. We may collect different types of personal information from you when you use our app, such as:
  </p>
  <div>
  <ul>
    <li><b>Account information:</b> When you create an account on our app, we may ask you to provide your name, email address, password, and other information that helps us identify you and provide you with our services.</li>
    <li><b>Device and usage information:</b> When you use our app, we may automatically collect information about your device, such as your device type, operating system, IP address, unique device identifier, and other technical information. We may also collect information about how you use our app, such as the pages you view, the features you use, the time and duration of your sessions, and other usage data.</li>
    <li><b>Location information:</b> When you use our app, we may collect your precise or approximate location information based on your device settings and permissions. We may use this information to provide you with location-based services, such as showing you nearby events or offers.</li>
    <li><b>Location information:</b> When you use our app, we may collect your precise or approximate location information based on your device settings and permissions. We may use this information to provide you with location-based services, such as showing you nearby events or offers.</li>
    <li><b>User-generated content:</b> When you use our app, you may be able to create or upload content, such as photos, videos, reviews, comments, messages, and other materials. We may collect and store this content on our servers and display it on our app or share it with other users or third parties.</li>
  </ul>
</div>
  <p>
  We may collect your personal information directly from you when you provide it to us voluntarily or indirectly from your device when you use our app.
  </p>

  <h2>Why do we collect your personal information and what are our legal bases?</H2>
  <p>We collect your personal information for various purposes, such as:</p>
  <div>
  <ul>
    <li>To provide you with our app and its features and functionalities</li>
    <li>To communicate with you and respond to your inquiries or requests</li>
    <li>To personalize your experience and tailor our app to your preferences and interests</li>
    <li>To improve our app and its performance, security, and reliability</li>
    <li>To conduct research and analysis to better understand our users and their needs</li>
    <li>To market and promote our app and our products or services</li>
    <li>To comply with our legal obligations and protect our rights and interests</li>
  </ul>
</div>
<p>We rely on different legal bases for collecting and processing your personal information depending on the context and purpose of the collection. These legal bases may include:</p>

<div>
  <ul>
    <li><b>Your consent:</b> We may ask for your consent to collect or use your personal information for certain purposes. You can withdraw your consent at any time by contacting us or changing your settings on our app.</li>
    <li><b>Our legitimate interests:</b> We may process your personal information for our legitimate interests or those of third parties, such as providing and improving our app, marketing and promoting our products or services, conducting research and analysis, preventing fraud and abuse, enforcing our terms and policies, and protecting our rights and interests.</li>
    <li><b>Our contractual obligations:</b> We may process your personal information to perform our contractual obligations to you or to provide you with our products or services that you request.</li>
    <li><b>Our legal obligations:</b> We may process your personal information to comply with applicable laws or regulations or to respond to lawful requests from authorities.</li>
  </ul>
</div>

<h2>Who do we share your personal information with?</h2>
<p>We may share your personal information with the following categories of recipients:</p>
<div>
  <ul>
    <li><b>Service providers:</b> We may share your personal information with third-party service providers that help us operate our app or provide services on our behalf. For example, we may use service providers to host our app, store our data, process payments, send emails, analyze usage data, provide customer support, or perform other functions.</li>
    <li><b>Affiliates:</b> We may share your personal information with our affiliates or subsidiaries that are part of our corporate group. For example, we may share your personal information with [Affiliate Name] for marketing or administrative purposes.</li>
    <li><b>Business partners:</b> We may share your personal information with third-party business partners</li>
  </ul>
</div>

<h2>Your Choices</h2>
<p>This section explains how your users can exercise their rights and choices regarding their personal information. For example, you may inform your users how they can access, update, delete, or correct their personal information, how they can opt-out of receiving marketing communications or targeted ads, how they can withdraw their consent to your data processing activities, or how they can submit a complaint or request to you or a supervisory authority.</p>

<h2>Security</h2>
<p>This section describes the security measures you take to protect your users’ personal information from unauthorized access, use, disclosure, alteration, or destruction. For example, you may mention that you use encryption, firewalls, password protection, or other technical or organizational safeguards to secure your data. You may also acknowledge that no method of transmission or storage is 100% secure and that you cannot guarantee the absolute security of your users’ personal information.</p>

<h2>Children’s Privacy</h2>
<p> This section states whether your app is intended for children under a certain age (such as 13 in the US or 16 in the EU) and how you comply with the relevant laws and regulations that protect children’s privacy online. For example, you may state that you do not knowingly collect personal information from children without parental consent, that you delete any personal information from children that you become aware of, or that you provide parents with notice and control over their children’s personal information.</p>

<h2>Changes to this Privacy Policy</h2>
<p>This section informs your users that you may update or modify your privacy policy from time to time and how you will notify them of any changes. For example, you may state that you will post the updated version on your app or website, that you will send an email notification to your users, or that you will display a prominent notice on your app or website. You may also advise your users to review your privacy policy periodically for any changes and to contact you if they have any questions or concerns.</p>

<h2>Contact Us</h2>
<p>If you have any questions or concerns about this Privacy Policy, please contact us:<br>
<b>Email:</b> $email<br>
<b>Phone:</b> $contactNo<br>
<b>Address:</b> $location<br>
</p>

 """;
    return policy;
  }
}
