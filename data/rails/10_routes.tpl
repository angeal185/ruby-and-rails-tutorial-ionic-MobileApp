<ion-view view-title="10 - Routes">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Routes</h1>

<hr>

<p>The routing module provides URL rewriting in native Ruby. It&apos;s a way to redirect incoming requests to controllers and actions. It replaces the mod_rewrite rules. Best of all, Rails&apos; Routing works with any web server. Routes are defined in app/config/routes.rb.</p>
<p>Think of creating routes as drawing a map for your requests. The map tells them where to go based on some predefined pattern &#x2212;</p>
<pre class="result notranslate">
Rails.application.routes.draw do
   Pattern 1 tells some request to go to one place
   Pattern 2 tell them to go to another
   ...
end
</pre>
<h2>Example</h2>
<p>Let us consider our library management application contains a controller called BookController. We have to define the routes for those actions which are defined as methods in the BookController class.</p>
<p>Open routes.rb file in library/config/ directory and edit it with the following content.</p>
<pre class="result notranslate">
Rails.application.routes.draw do
   get &apos;books/list&apos;
   get &apos;books/new&apos;
   post &apos;books/create&apos;
   patch &apos;books/update&apos;
   get &apos;books/list&apos;
   get &apos;books/show&apos;
   get &apos;books/edit&apos;
   get &apos;books/delete&apos;
   get &apos;books/update&apos;
   get &apos;books/show_subjects&apos;
end
</pre>
<p>The routes.rb file defines the actions available in the applications and the type of action such as get, post, and patch.</p>
<p>Use the following command to list all your defined routes, which are useful for tracking down routing problems in your application, or giving you a good overview of the URLs in an application you&apos;re trying to get familiar with.</p>
<pre class="result notranslate">
library&gt; rake routes
</pre>
<h2>What is Next?</h2>
<p>Next, we will create the code to generate screens to display data and to take input from the user.</p>
</div>
</ion-content>
</ion-view>