<ion-view view-title="04 - Directory Structure">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Directory Structure</h1>
<hr>
<p>When you use the Rails helper script to create your application, it creates the entire directory structure for the application. Rails knows where to find things it needs within this structure, so you don&apos;t have to provide any input.</p>
<p>Here is a top-level view of a directory tree created by the helper script at the time of application creation. Except for minor changes between releases, every Rails project will have the same structure, with the same naming conventions. This consistency gives you a tremendous advantage; you can quickly move between Rails projects without relearning the project&apos;s organization.</p>
<p>To understand this directory structure, let&apos;s use the <b>demo</b> application created in the Installation chapter. It can be created using a simple helper command <b>rails demo</b>.</p>
<p>Now, go into the demo application root directory as follows &#x2212;</p>
<pre class="result notranslate">
tp&gt; cd demo
demo&gt; dir
</pre>
<p>Now let&apos;s explain the purpose of each directory</p>
<ion-list>
<li><p><b>app</b> &#x2212; It organizes your application components. It&apos;s got subdirectories that hold the view (views and helpers), controller (controllers), and the backend business logic (models).</p></li>
<li><p><b>app/controllers</b> &#x2212; The controllers subdirectory is where Rails looks to find the controller classes. A controller handles a web request from the user.</p></li>
<li><p><b>app/helpers</b> &#x2212; The helpers subdirectory holds any helper classes used to assist the model, view, and controller classes. This helps to keep the model, view, and controller code small, focused, and uncluttered.</p></li>
<li><p><b>app/models</b> &#x2212; The models subdirectory holds the classes that model and wrap the data stored in our application&apos;s database. In most frameworks, this part of the application can grow pretty messy, tedious, verbose, and error-prone. Rails makes it dead simple!</p></li>
<li><p><b>app/view</b> &#x2212; The views subdirectory holds the display templates to fill in with data from our application, convert to HTML, and return to the user&apos;s browser.</p></li>
<li><p><b>app/view/layouts</b> &#x2212; Holds the template files for layouts to be used with views. This models the common header/footer method of wrapping views. In your views, define a layout using the &lt;tt&gt;layout:default&lt;/tt&gt; and create a file named default.html.erb. Inside default.html.erb, call &lt;% yield %&gt; to render the view using this layout.</p></li>
<li><p><b>components</b> &#x2212; This directory holds components, tiny self-contained applications that bundle model, view, and controller.</p></li>
<li><p><b>config</b> &#x2212; This directory contains the small amount of configuration code that your application will need, including your database configuration (in database.yml), your Rails environment structure (environment.rb), and routing of incoming web requests (routes.rb). You can also tailor the behavior of the three Rails environments for test, development, and deployment with files found in the environments directory.</p></li>
<li><p><b>db</b> &#x2212; Usually, your Rails application will have model objects that access relational database tables. You can manage the relational database with scripts you create and place in this directory.</p></li>
<li><p><b>doc</b> &#x2212; Ruby has a framework, called RubyDoc, that can automatically generate documentation for code you create. You can assist RubyDoc with comments in your code. This directory holds all the RubyDoc-generated Rails and application documentation.</p></li>
<li><p><b>lib</b> &#x2212; You&apos;ll put libraries here, unless they explicitly belong elsewhere (such as vendor libraries).</p></li>
<li><p><b>log</b> &#x2212; Error logs go here. Rails creates scripts that help you manage various error logs. You&apos;ll find separate logs for the server (server.log) and each Rails environment (development.log, test.log, and production.log).</p></li>
<li><p><b>public</b> &#x2212; Like the public directory for a web server, this directory has web files that don&apos;t change, such as JavaScript files (public/javascripts), graphics (public/images), stylesheets (public/stylesheets), and HTML files (public).</p></li>
<li><p><b>script</b> &#x2212; This directory holds scripts to launch and manage the various tools that you&apos;ll use with Rails. For example, there are scripts to generate code (generate) and launch the web server (server).</p></li>
<li><p><b>test</b> &#x2212; The tests you write and those that Rails creates for you, all goes here. You&apos;ll see a subdirectory for mocks (mocks), unit tests (unit), fixtures (fixtures), and functional tests (functional).</p></li>
<li><p><b>tmp</b> &#x2212; Rails uses this directory to hold temporary files for intermediate processing.</p></li>
<li><p><b>vendor</b> &#x2212; Libraries provided by third-party vendors (such as security libraries or database utilities beyond the basic Rails distribution) go here.</p></li>
</ion-list>
<p>Apart from these directories, there will be two files available in demo directory.</p>
<ion-list>
<li><p><b>README</b> &#x2212; This file contains a basic detail about Rail Application and description of the directory structure explained above.</p></li>
<li><p><b>Rakefile</b> &#x2212; This file is similar to Unix Makefile, which helps with building, packaging and testing the Rails code. This will be used by rake utility supplied along with the Ruby installation.</p></li>
</ion-list>
</div>
</ion-content>
</ion-view>