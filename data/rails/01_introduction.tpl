<ion-view view-title="01 - Introduction">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col" style="height:700px;">
<h1>Introduction</h1>
<hr>
<h2>What is Ruby?</h2>
<p>Before we ride on Rails, let us recapitulate a few points of Ruby, which is the base of Rails.</p>
<p>Ruby is the successful combination of &#x2212;</p>
<ion-list>
<li>Smalltalk&apos;s conceptual elegance,</li>
<li>Python&apos;s ease of use and learning, and</li>
<li>Perl&apos;s pragmatism.</li>
</ion-list>
<p>Ruby is: </p>
<ion-list>
<li>A high-level programming language.</li>
<li>Interpreted like Perl, Python, Tcl/TK.</li>
<li>Object-oriented like Smalltalk, Eiffel, Ada, Java.</li>
</ion-list>
<h2>Why Ruby?</h2>
<p>Ruby originated in Japan and now it is gaining popularity in US and Europe as well. The following factors contribute towards its popularity &#x2212;</p>
<ion-list>
<li>Easy to learn</li>
<li>Open source (very liberal license)</li>
<li>Rich libraries</li>
<li>Very easy to extend</li>
<li>Truly object-oriented</li>
<li>Less coding with fewer bugs</li>
<li>Helpful community</li>
</ion-list>
<p>Although we have many reasons to use Ruby, there are a few drawbacks as well that you may have to consider before implementing Ruby: </p>
<ion-list>
<li><p><b>Performance Issues</b> - Although it rivals Perl and Python, it is still an interpreted language and we cannot compare it with high-level programming languages like C or C++.</p></li>
<li><p><b>Threading model</b> &#x2212; Ruby does not use native threads. Ruby threads are simulated in the VM rather than running as native OS threads.</p></li>
</ion-list>
<h2>Sample Ruby Code</h2>
<p>Here is a sample Ruby code to print &quot;Hello Ruby&quot;</p>
<pre class="prettyprint notranslate">
# The Hello Class
class Hello
   
   def initialize( name )
      @name = name.capitalize
   end

   def salute
      puts &quot;Hello #{@name}!&quot;
   end
   
end

# Create a new object
h = Hello.new(&quot;Ruby&quot;)

# Output &quot;Hello Ruby!&quot;
h.salute
</pre>
<p><b>Output</b> &#x2212; This will produce the following result &#x2212;</p>
<pre class="result notranslate">
Hello Ruby!
</pre>
<h2>Embedded Ruby</h2>
<p>Ruby provides a program called ERB (Embedded Ruby), written by <i>Seki Masatoshi</i>. ERB allows you to put Ruby codes inside an HTML file. ERB reads along, word for word, and then at a certain point, when it encounters a Ruby code embedded in the document, it starts executing the Ruby code.</p>
<p>You need to know only two things to prepare an ERB document &#x2212;</p>
<ion-list>
<li><p>If you want some Ruby code executed, enclose it between <b>&lt;%</b> and <b>%&gt;.</b></p></li>
<li><p>If you want the result of the code execution to be printed out, as a part of the output, enclose the code between <b>&lt;%=</b> and <b>%&gt;</b>.</p></li>
</ion-list>
<p>Here&apos;s an example. Save the code in erbdemo.rb file. Note that a Ruby file will have an extension <b>.rb</b> &#x2212;</p>
<pre class="prettyprint notranslate">
&lt;% page_title = &quot;Demonstration of ERB&quot; %&gt;
&lt;% salutation = &quot;Dear programmer,&quot; %&gt;

&lt;html&gt;

   &lt;head&gt;
      &lt;title&gt;&lt;%= page_title %&gt;&lt;/title&gt;
   &lt;/head&gt;
	
   &lt;body&gt;
      &lt;p&gt;&lt;%= salutation %&gt;&lt;/p&gt;
      &lt;p&gt;This is an example of how ERB fills out a template.&lt;/p&gt;
   &lt;/body&gt;
	
&lt;/html&gt;
</pre> 
<p>Now, run the program using the command-line utility <b>erb</b>.</p>
<pre class="result notranslate">
tp&gt; erb erbdemo.rb
</pre> 
<p>This will produce the following result &#x2212;</p>
<pre class="prettyprint notranslate">
&lt;html&gt;

   &lt;head&gt;
      &lt;title&gt;Demonstration of ERb&lt;/title&gt;
   &lt;/head&gt;
	
   &lt;body&gt;
      &lt;p&gt;Dear programmer,&lt;/p&gt;
      &lt;p&gt;This is an example  of how ERb fills out a template.&lt;/p&gt;
   &lt;/body&gt;
	
&lt;/html&gt;
</pre> 
<h2>What is Rails?</h2>
<ion-list>
<li><p>An extremely productive web-application framework.</p></li>
<li><p>Written in Ruby by David Heinemeier Hansson.</p></li>
<li><p>You could develop a web application at least ten times faster with Rails than you could with a typical Java framework.</p></li>
<li><p>An open source Ruby framework for developing database-backed web applications.</p></li>
<li><p>Configure your code with Database Schema.</p></li>
<li><p>No compilation phase required.</p></li>
</ion-list>	
<h2>Full Stack Framework</h2>
<ion-list>
<li><p>Includes everything needed to create a database-driven web application, using the Model-View-Controller pattern.</p></li>
<li><p>Being a full-stack framework means all the layers are built to work seamlessly together with less code.</p></li>
<li><p>Requires fewer lines of code than other frameworks.</p></li>
</ion-list>
<h2>Convention over Configuration</h2>
<ion-list>
<li><p>Rails shuns configuration files in favor of conventions, reflection, and dynamic runtime extensions.</p></li>
<li><p>Your application code and your running database already contain everything that Rails needs to know!</p></li>
</ion-list>
<h2>Rails Strengths</h2>
<p>Rails is packed with features that make you more productive, with many of the following features building on one other.</p>
<h3>Metaprogramming</h3>
<p>Where other frameworks use extensive code generation from scratch, Rail framework uses Metaprogramming techniques to write programs. Ruby is one of the best languages for Metaprogramming, and Rails uses this capability well. Rails also uses code generation but relies much more on Metaprogramming for the heavy lifting.</p>
<h3>Active Record</h3>
<p>Rails introduces the Active Record framework, which saves objects into the database. The Rails version of the Active Record discovers the columns in a database schema and automatically attaches them to your domain objects using metaprogramming.</p>
<h3>Convention over configuration</h3>
<p>Most web development frameworks for .NET or Java force you to write pages of configuration code. If you follow the suggested naming conventions, Rails doesn&apos;t need much configuration.</p>
<h3>Scaffolding</h3>
<p>You often create temporary code in the early stages of development to help get an application up quickly and see how major components work together. Rails automatically creates much of the scaffolding you&apos;ll need.</p>
<h3>Built-in testing</h3>
<p>Rails creates simple automated tests you can then extend. Rails also provides supporting code called harnesses and fixtures that make test cases easier to write and run. Ruby can then execute all your automated tests with the rake utility.</p>
<h3>Three environments</h3>
<p>Rails gives you three default environments: development, testing, and production. Each behaves slightly differently, making your entire software development cycle easier. For example, Rails creates a fresh copy of the Test database for each test run.</p>
</div>
</ion-content>
</ion-view>