<ion-view view-title="02 - Installation">
<ion-content style="margin:0 12px">

<div class="col-md-7 middle-col">
<h1>Installation</h1>
<hr>
<p>To develop a web application using Ruby on Rails Framework, you need to install the following software &#x2212;</p>
<ion-list>
<li>Ruby</li>
<li>The Rails Framework</li>
<li>A Web Server</li>
<li>A Database System</li>
</ion-list>
<p>We assume that you already have installed a Web Server and a Database System on your computer. You can use the WEBrick Web Server, which comes with Ruby. Most websites however use Apache or lightTPD web servers in production.</p>
<p>Rails works with many database systems, including MySQL, PostgreSQL, SQLite, Oracle, DB2 and SQL Server. Please refer to a corresponding Database System Setup manual to set up your database.</p>
<p>Let&apos;s look at the installation instructions for Rails on Windows and Linux.</p>
<h2>Rails Installation on Windows</h2>
<p>Follow the steps given below for installing Ruby on Rails.</p>
<h3>Step 1: Check Ruby Version</h3>
<p>First, check if you already have Ruby installed. Open the command prompt and type <b>ruby -v</b>. If Ruby responds, and if it shows a version number at or above 2.2.2, then type <b>gem --version</b>. If you don&apos;t get an error, skip <b>Install Ruby</b> step. Otherwise, we&apos;ll install a fresh Ruby.</p>
<h3>Step 2: Install Ruby</h3>
<p>If Ruby is not installed, then download an installation package from <a target="_blank" rel="nofollow" href="http://rubyinstaller.org/">rubyinstaller.org</a>. Follow the <b>download</b> link, and run the resulting installer. This is an exe file <b>rubyinstaller-2.2.2.x.exe</b> and will be installed in a single click. It&apos;s a very small package, and you&apos;ll get RubyGems as well along with this package. Please check the <b>Release Notes</b> for more detail.</p>
<h3>Step 3: Install Rails</h3>
<p><b>Install Rails</b> &#x2212; With Rubygems loaded, you can install all of Rails and its dependencies using the following command through the command line &#x2212;</p>
<pre class="result notranslate">
C:\&gt; gem install rails
</pre>
<p></p>
<p><b>Note</b> &#x2212; The above command may take some time to install all dependencies. Make sure you are connected to the internet while installing gems dependencies.</p>
<h3>Step 4: Check Rails Version</h3>
<p>Use the following command to check the rails version.</p>
<pre class="result notranslate">
C:\&gt; rails -v
</pre>
<p><b>Output</b></p>
<pre class="result notranslate">
Rails 4.2.4
</pre>
<p>Congratulations! You are now on Rails over Windows.</p>
<h2>Rails Installation on Linux</h2>
<p>We are installing Ruby On Rails on Linux using <b>rbenv</b>. It is a lightweight Ruby Version Management Tool. The <b>rbenv</b> provides an easy installation procedure to manage various versions of Ruby, and a solid environment for developing Ruby on Rails applications.</p>
<p>Follow the steps given below to install Ruby on Rails using rbenv tool.</p>
<h3>Step 1: Install Prerequisite Dependencies</h3>
<p>First of all, we have to install <b>git - core</b> and some ruby dependences that help to install Ruby on Rails. Use the following command for installing Rails dependencies using <b>yum</b>.</p>
<pre class="result notranslate">
tp&gt; sudo yum install -y git-core zlib zlib-devel gcc-c++ patch readline readline-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl sqlite-devel
</pre>
<h3>Step 2: Install rbenv</h3>
<p>Now we will install rbenv and set the appropriate environment variables. Use the following set of commands to get rbenv for git repository.</p>
<pre class="result notranslate">
tp&gt; git clone git://github.com/sstephenson/rbenv.git .rbenv
tp&gt; echo &apos;export PATH = &quot;$HOME/.rbenv/bin:$PATH&quot;&apos; &gt;&gt; ~/.bash_profile
tp&gt; echo &apos;eval &quot;$(rbenv init -)&quot;&apos; &gt;&gt; ~/.bash_profile
tp&gt; exec $SHELL

tp&gt; git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
tp&gt; echo &apos;export PATH = &quot;$HOME/.rbenv/plugins/ruby-build/bin:$PATH&quot;&apos; &lt;&lt; ~/.bash_profile
tp&gt; exec $SHELL
</pre>
<h3>Step 3: Install Ruby</h3>
<p>Before installing Ruby, determine which version of Ruby you want to install. We will install Ruby 2.2.3. Use the following command for installing Ruby.</p>
<pre class="result notranslate">
tp&gt; rbenv install -v 2.2.3
</pre>
<p>Use the following command for setting up the current Ruby version as default.</p>
<pre class="result notranslate">
tp&gt; rbenv global 2.2.3
</pre>
<p>Use the following command to verify the Ruby version.</p>
<pre class="result notranslate">
tp&gt; ruby -v
</pre>
<p><b>Output</b></p>
<pre class="result notranslate">
ruby 2.2.3p173 (2015-08-18 revivion 51636) [X86_64-linux]
</pre>
<p>Ruby provides a keyword <b>gem</b> for installing the supported dependencies; we call them <b>gems</b>. If you don&apos;t want to install the documentation for Ruby-gems, then use the following command.</p>
<pre class="result notranslate">
tp&gt; echo &quot;gem: --no-document&quot; &gt; ~/.gemrc
</pre>
<p>Thereafter, it is better to install the Bundler gem, because it helps to manage your application dependencies. Use the following command to install bundler gem.</p>
<pre class="result notranslate">
tp&gt; gem install bundler
</pre>
<h3>Step 4: Install Rails</h3>
<p>Use the following command for installing Rails version 4.2.4.</p>
<pre class="result notranslate">
tp&gt; install rails -v 4.2.4
</pre>
<p>Use the following command to make Rails executable available.</p>
<pre class="result notranslate">
tp&gt; rbenv rehash
</pre>
<p>Use the following command for checking the rails version.</p>
<pre class="result notranslate">
tp&gt; rails -v
</pre>
<p><b>Output</b></p>
<pre class="result notranslate">
tp&gt; Rails 4.2.4
</pre>
<p>Ruby on Rails framework requires JavaScript Runtime Environment (Node.js) to manage the features of Rails. Next, we will see how we can use Node.js to manage Asset Pipeline which is a Rails feature.</p> 
<h3>Step 5: Install JavaScript Runtime</h3>
<p>Let us install Node.js from the Yum repository. We will take Node.js from EPEL yum repository. Use the following command to add the EPEL package to the yum repository.</p>
<pre class="result notranslate">
tp&gt; sudo yum -y install epel-release
</pre>
<p>Use the following command for installing the Node.js package.</p>
<pre class="result notranslate">
tp&gt; sudo yum install nodejs
</pre>
<p>Congratulations! You are now on Rails over Linux.</p>
<h3>Step 6: Install Database</h3>
<p>By default, Rails uses sqlite3, but you may want to install MySQL, PostgreSQL, or other RDBMS. This is optional; if you have the database installed, then you may skip this step and it is not mandatory that you have a database installed to start the rails server. For this tutorial, we are using PostgreSQL database. Therefore use the following commands to install PostgreSQL.</p>
<pre class="result notranslate">
tp&gt; sudo yum install postgresql-server postgresql-contrib
</pre>
<p>Accept the prompt, by responding with a <b>y</b>. Use the following command to create a PostgreSQl database cluster.</p>
<pre class="result notranslate">
tp&gt; sudo postgresql-setup initdb
</pre>
<p>Use the following command to start and enable PostgreSQL.</p>
<pre class="result notranslate">
tp&gt; sudo systemctl start postgresql
tp&gt; sudo systemctl enable postgresql
</pre>
<h2>Keeping Rails Up-to-Date</h2>
<p>Assuming you have installed Rails using RubyGems, keeping it up-to-date is relatively easy. We can use the same command in both Windows and Linux platform. Use the following command &#x2212;</p>
<pre class="result notranslate">
tp&gt; gem update rails
</pre>

<p>This will automatically update your Rails installation. The next time you restart your application, it will pick up this latest version of Rails. While using this command, make sure you are connected to the internet.</p>
<h2>Installation Verification</h2>
<p>You can verify if everything is set up according to your requirements or not. Use the following command to create a demo project.</p>
<pre class="result notranslate">
tp&gt; rails new demo
</pre>
<p>It will generate a demo rail project; we will discuss about it later. Currently we have to check if the environment is set up or not. Next, use the following command to run WEBrick web server on your machine.</p>
<pre class="result notranslate">
tp&gt; cd demo
tp&gt; rails server
</pre>
<p>It will generate auto-code to start the server</p>
<p>Now open your browser and type the following &#x2212;</p>
<pre class="result notranslate">
http://localhost:3000
</pre>
<p>It should display a message, something like, &quot;Welcome aboard&quot; or &quot;Congratulations&quot;.</p>
</div>
</ion-content>
</ion-view>