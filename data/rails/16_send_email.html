<ion-view view-title="16 - Send Emails">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Send Emails</h1>
<hr>
<p><b>Action Mailer</b> is the Rails component that enables applications to send and receive emails. In this chapter, we will see how to send an email using Rails. Let&#x2019;s start creating an <b>emails</b> project using the following command.</p>
<pre class="result notranslate">
tp&gt; rails new mailtest
</pre>
<p>This will create the required framework to proceed. Now, we will start with configuring the ActionMailer.</p>
<h2>Action Mailer - Configuration</h2>
<p>Following are the steps you have to follow to complete your configuration before proceeding with the actual work &#x2212;</p>
<p>Go to the config folder of your emails project and open environment.rb file and add the following line at the bottom of this file.</p>
<pre class="result notranslate">
config.action_mailer.delivery_method = :smtp
</pre>
<p>It tells ActionMailer that you want to use the SMTP server. You can also set it to be :sendmail if you are using a Unix-based operating system such as Mac OS X or Linux.</p>
<p>Add the following lines of code at the bottom of your environment.rb as well.</p>
<pre class="prettyprint notranslate">
config.action_mailer.smtp_settings = {
   address:              &apos;smtp.gmail.com&apos;,
   port:                 587,
   domain:               &apos;example.com&apos;,
   user_name:            &apos;&lt;username&gt;&apos;,
   password:             &apos;&lt;password&gt;&apos;,
   authentication:       &apos;plain&apos;,
   enable_starttls_auto: true  
}
</pre>
<p>Replace each hash value with proper settings for your Simple Mail Transfer Protocol (SMTP) server. You can take this information from your Internet Service Provider if you already don&apos;t know. You don&apos;t need to change port number 25 and authentication type if you are using a standard SMTP server.</p>
<p>You may also change the default email message format. If you prefer to send email in HTML instead of plain text format, add the following line to config/environment.rb as well &#x2212;</p>
<pre class="result notranslate">
ActionMailer::Base.default_content_type = &quot;text/html&quot;
</pre>
<p>ActionMailer::Base.default_content_type could be set to &quot;text/plain&quot;, &quot;text/html&quot;, and &quot;text/enriched&quot;. The default value is &quot;text/plain&quot;.</p>
<p>The next step will be to create a mailer</p>
<h2>Generate a Mailer</h2>
<p>Use the following command to generate a mailer as follows &#x2212;</p>
<pre class="result notranslate">
tp&gt; cd emails
emails&gt; rails generate mailer Usermailer
</pre>
<p>This will create a file user_mailer.rb in the app\mailer directory. Check the content of this file as follows &#x2212;</p>
<pre class="result notranslate">
class Emailer &lt; ActionMailer::Base
end
</pre>
<p>Let&apos;s create one method as follows &#x2212;</p>
<pre class="result notranslate">
class UserMailer &lt; ApplicationMailer
   default from: &apos;notifications@example.com&apos;
   
   def welcome_email(user)
      @user = user
      @url  = &apos;http://www.gmail.com&apos;
      mail(to: @user.email, subject: &apos;Welcome to My Awesome Site&apos;)
   end
   
end
</pre>
<ion-list>
<li><p><b>default Hash</b> &#x2212; This is a hash of default values for any email you send from this mailer. In this case we are setting the :from header to a value for all messages in this class. This can be overridden on a per-email basis</p></li>
<li><p><b>mail</b> &#x2212; The actual email message, we are passing the :to and :subject headers in.</p></li>
</ion-list>
<p>Create a file called welcome_email.html.erb in app/views/user_mailer/. This will be the template used for the email, formatted in HTML &#x2212;</p>
<pre class="prettyprint notranslate">
&lt;html&gt;
   
   &lt;head&gt;
      &lt;meta content = &apos;text/html; charset = UTF-8&apos; http-equiv = &apos;Content-Type&apos; /&gt;
   &lt;/head&gt;
   
   &lt;body&gt;
      &lt;h1&gt;Welcome to example.com, &lt;%= @user.name %&gt;&lt;/h1&gt;
      
      &lt;p&gt;
         You have successfully signed up to example.com,your username is: 
         &lt;%= @user.login %&gt;.&lt;br&gt;
      &lt;/p&gt;
      
      &lt;p&gt;
         To login to the site, just follow this link: 
         &lt;%= @url %&gt;.
      &lt;/p&gt;
      
      &lt;p&gt;Thanks for joining and have a great day!&lt;/p&gt;
      
   &lt;/body&gt;
&lt;/html&gt;
</pre>
<p>Next we will create a text part for this application as follow &#x2212;</p>
<pre class="result notranslate">
Welcome to example.com, &lt;%= @user.name %&gt;
===============================================
 
You have successfully signed up to example.com,
your username is: &lt;%= @user.login %&gt;.
 
To login to the site, just follow this link: &lt;%= @url %&gt;.
 
Thanks for joining and have a great day!
</pre>
<h2>Calling the Mailer</h2>
<p>First, let&apos;s create a simple User scaffold</p>
<pre class="result notranslate">
$ bin/rails generate scaffold user name email login
$ bin/rake db:migrate
</pre>
<p>Action Mailer is nicely integrated with Active Job so you can send emails outside of the request-response cycle, so the user doesn&apos;t have to wait on it &#x2212;</p>
<pre class="prettyprint notranslate">
class UsersController &lt; ApplicationController
   # POST /users
   # POST /users.json
   def create
   @user = User.new(params[:user])
   
      respond_to do |format|
         if @user.save
            # Tell the UserMailer to send a welcome email after save
            UserMailer.welcome_email(@user).deliver_later
            
            format.html { redirect_to(@user, notice: &apos;User was successfully created.&apos;) }
            format.json { render json: @user, status: :created, location: @user }
         else
            format.html { render action: &apos;new&apos; }
            format.json { render json: @user.errors, status: :unprocessable_entity }
         end
         
      end
      
   end
end
</pre>
<p>Now, test your application by using http://127.0.0.1:3000/users/new. It displays a screen and by using this screen, you will be able to send your message to anybody.</p>
<p>This will send your message and will display the text message &quot;Message sent successfully&quot; and output as follow &#x2212;</p>
<pre class="result notranslate">
sent mail to kittuprasad700@gmail.com (2023.Sms)
[ActiveJob] [ActionMailler::DeliveryJob] [2cfde3c-260e-4a33-1a6ada13a9b] Date: Thu, 09 Jul 2015 11:44:05 +0530
From: notification@example.com
To: kittuprasad700@gmail.com
Message-Id: &lt;559e112d63c57_f1031e7f23467@kiranPro.mail&gt;
Subject: Welcome to My Awesome Site
Mime-Version: 1.0
Content-Type: multipart/alternative;
boundary=&quot;--mimepart_559e112d601c8_f1031e7f20233f5&quot;;
charset=UTF-8
Content-Transfer-Encoding:7bit
</pre>
<p>For more information on how to send emails using Rails, please go through <a href="http://en.wikibooks.org/wiki/Ruby_on_Rails/ActionMailer" target="_blank">ActionMailer</a></p>
</div>
</ion-content>
</ion-view>