<ion-view view-title="04 - Web Applications">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Web Applications - CGI Programming</h1>
<hr>
<p>Ruby is a general-purpose language; it can't properly be called a <i>web language</i> at all. Even so, web applications and web tools in general are among the most common uses of Ruby.</p>
<p>Not only can you write your own SMTP server, FTP daemon, or Web server in Ruby, but you can also use Ruby for more usual tasks such as CGI programming or as a replacement for PHP.</p>
<p>Please spend few minutes with <a href="#" onclick="window.open('http://www.tutorialspoint.com/perl/perl_cgi.htm','_system')" title="CGI Programming">CGI Programming</a> Tutorial for more detail on CGI Programming.</p>
<h2>Writing CGI Scripts:</h2>
<p>The most basic Ruby CGI script looks like this:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

puts </span><span class="str">"HTTP/1.0 200 OK"</span><span class="pln">
puts </span><span class="str">"Content-type: text/html\n\n"</span><span class="pln">
puts </span><span class="str">"&lt;html&gt;&lt;body&gt;This is a test&lt;/body&gt;&lt;/html&gt;"</span></pre>
<p>If you call this script <i>test.cgi</i> and uploaded it to a Unix-based Web hosting provider with the right permissions, you could use it as a CGI script.</p> 
<p>For example, if you have the Web site http://www.example.com/ hosted with a Linux Web hosting provider and you upload <i>test.cgi</i> to the main directory and give it execute permissions, then visiting http://www.example.com/test.cgi should return an HTML page saying <i><b>This is a test</b></i>.</p>
<p>Here when <i>test.cgi</i> is requested from a Web browser, the Web server looks for <i>test.cgi</i> on the Web site, and then executes it using the Ruby interpreter. The Ruby script returns a basic HTTP header and then returns a basic HTML document.</p>
<h2>Using cgi.rb:</h2>
<p>Ruby comes with a special library called <b>cgi</b> that enables more sophisticated interactions than those with the preceding CGI script.</p>
<p>Let's create a basic CGI script that uses cgi:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'cgi'</span><span class="pln">

cgi </span><span class="pun">=</span><span class="pln"> CGI</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">
puts cgi</span><span class="pun">.</span><span class="pln">header
puts </span><span class="str">"&lt;html&gt;&lt;body&gt;This is a test&lt;/body&gt;&lt;/html&gt;"</span></pre>
<p>Here, you created a CGI object and used it to print the header line for you.</p>
<h2>Form Processing:</h2>
<p>Using class CGI gives you access to HTML query parameters in two ways. Suppose we are given a URL of /cgi-bin/test.cgi?FirstName=Zara&amp;LastName=Ali.</p>
<p>You can access the parameters <i>FirstName</i> and <i>LastName</i> using CGI#[] directly as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'cgi'</span><span class="pln">
cgi </span><span class="pun">=</span><span class="pln"> CGI</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">
cgi</span><span class="pun">[</span><span class="str">'FirstName'</span><span class="pun">]</span><span class="pln"> </span><span class="com"># =&gt;  ["Zara"]</span><span class="pln">
cgi</span><span class="pun">[</span><span class="str">'LastName'</span><span class="pun">]</span><span class="pln">  </span><span class="com"># =&gt;  ["Ali"]</span></pre>
<p>There is another way to access these form variables. This code will give you a hash of all the key and values:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'cgi'</span><span class="pln">
cgi </span><span class="pun">=</span><span class="pln"> CGI</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">
h </span><span class="pun">=</span><span class="pln"> cgi</span><span class="pun">.</span><span class="kwd">params</span><span class="pln">  </span><span class="com"># =&gt;  {"FirstName"=&gt;["Zara"],"LastName"=&gt;["Ali"]}</span><span class="pln">
h</span><span class="pun">[</span><span class="str">'FirstName'</span><span class="pun">]</span><span class="pln">  </span><span class="com"># =&gt;  ["Zara"]</span><span class="pln">
h</span><span class="pun">[</span><span class="str">'LastName'</span><span class="pun">]</span><span class="pln">   </span><span class="com"># =&gt;  ["Ali"]</span></pre>
<p>Following is the code to retrieve all the keys:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'cgi'</span><span class="pln">
cgi </span><span class="pun">=</span><span class="pln"> CGI</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">
cgi</span><span class="pun">.</span><span class="pln">keys         </span><span class="com"># =&gt;  ["FirstName", "LastName"]</span></pre>
<p>If a form contains multiple fields with the same name, the corresponding values will be returned to the script as an array. The [] accessor returns just the first of these.index the result of the params method to get them all.</p>
<p>In this example, assume the form has three fields called "name" and we entered three names "Zara", "Huma" and "Nuha":</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'cgi'</span><span class="pln">
cgi </span><span class="pun">=</span><span class="pln"> CGI</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">
cgi</span><span class="pun">[</span><span class="str">'name'</span><span class="pun">]</span><span class="pln">        </span><span class="com"># =&gt; "Zara"</span><span class="pln">
cgi</span><span class="pun">.</span><span class="kwd">params</span><span class="pun">[</span><span class="str">'name'</span><span class="pun">]</span><span class="pln"> </span><span class="com"># =&gt; ["Zara", "Huma", "Nuha"]</span><span class="pln">
cgi</span><span class="pun">.</span><span class="pln">keys           </span><span class="com"># =&gt; ["name"]</span><span class="pln">
cgi</span><span class="pun">.</span><span class="kwd">params</span><span class="pln">         </span><span class="com"># =&gt; {"name"=&gt;["Zara", "Huma", "Nuha"]}</span></pre>
<p><b>Note:</b> Ruby will take care of GET and POST methods automatically. There is no separate treatment for these two different methods.</p>
<p>An associated, but basic, form that could send the correct data would have HTML code like so:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="tag">&lt;html&gt;</span><span class="pln">
</span><span class="tag">&lt;body&gt;</span><span class="pln">
</span><span class="tag">&lt;form</span><span class="pln"> </span><span class="atn">method</span><span class="pun">=</span><span class="atv">"POST"</span><span class="pln"> </span><span class="atn">action</span><span class="pun">=</span><span class="atv">"http://www.example.com/test.cgi"</span><span class="tag">&gt;</span><span class="pln">
First Name :</span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">name</span><span class="pun">=</span><span class="atv">"FirstName"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">""</span><span class="pln"> </span><span class="tag">/&gt;</span><span class="pln">
</span><span class="tag">&lt;br</span><span class="pln"> </span><span class="tag">/&gt;</span><span class="pln">
Last Name :</span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"text"</span><span class="pln"> </span><span class="atn">name</span><span class="pun">=</span><span class="atv">"LastName"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">""</span><span class="pln"> </span><span class="tag">/&gt;</span><span class="pln"> 

</span><span class="tag">&lt;input</span><span class="pln"> </span><span class="atn">type</span><span class="pun">=</span><span class="atv">"submit"</span><span class="pln"> </span><span class="atn">value</span><span class="pun">=</span><span class="atv">"Submit Data"</span><span class="pln"> </span><span class="tag">/&gt;</span><span class="pln">
</span><span class="tag">&lt;/form&gt;</span><span class="pln">
</span><span class="tag">&lt;/body&gt;</span><span class="pln">
</span><span class="tag">&lt;/html&gt;</span></pre>
<h2>Creating Forms and HTML:</h2>
<p>CGI contains a huge number of methods used to create HTML. You will find one method per tag. In order to enable
these methods, you must create a CGI object by calling CGI.new.</p>
<p>To make tag nesting easier, these methods take their content as code blocks. The code blocks should return a <i>String</i>, which will be used as the content for the tag. For example:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">"cgi"</span><span class="pln">
cgi </span><span class="pun">=</span><span class="pln"> CGI</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"html4"</span><span class="pun">)</span><span class="pln">
cgi</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">{</span><span class="pln">
   cgi</span><span class="pun">.</span><span class="pln">html</span><span class="pun">{</span><span class="pln">
      cgi</span><span class="pun">.</span><span class="pln">head</span><span class="pun">{</span><span class="pln"> </span><span class="str">"\n"</span><span class="pun">+</span><span class="pln">cgi</span><span class="pun">.</span><span class="pln">title</span><span class="pun">{</span><span class="str">"This Is a Test"</span><span class="pun">}</span><span class="pln"> </span><span class="pun">}</span><span class="pln"> </span><span class="pun">+</span><span class="pln">
      cgi</span><span class="pun">.</span><span class="pln">body</span><span class="pun">{</span><span class="pln"> </span><span class="str">"\n"</span><span class="pun">+</span><span class="pln">
         cgi</span><span class="pun">.</span><span class="pln">form</span><span class="pun">{</span><span class="str">"\n"</span><span class="pun">+</span><span class="pln">
            cgi</span><span class="pun">.</span><span class="pln">hr </span><span class="pun">+</span><span class="pln">
            cgi</span><span class="pun">.</span><span class="pln">h1 </span><span class="pun">{</span><span class="pln"> </span><span class="str">"A Form: "</span><span class="pln"> </span><span class="pun">}</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> </span><span class="str">"\n"</span><span class="pun">+</span><span class="pln">
            cgi</span><span class="pun">.</span><span class="pln">textarea</span><span class="pun">(</span><span class="str">"get_text"</span><span class="pun">)</span><span class="pln"> </span><span class="pun">+</span><span class="str">"\n"</span><span class="pun">+</span><span class="pln">
            cgi</span><span class="pun">.</span><span class="pln">br </span><span class="pun">+</span><span class="pln">
            cgi</span><span class="pun">.</span><span class="pln">submit
         </span><span class="pun">}</span><span class="pln">
      </span><span class="pun">}</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
</span><span class="pun">}</span></pre>
<p><b>NOTE:</b> The <i>form</i> method of the CGI class can accept a method parameter, which will set the HTTP method ( GET, POST, and so on...) to be used on form submittal. The default, used in this example, is POST.</p>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Content</span><span class="pun">-</span><span class="typ">Type</span><span class="pun">:</span><span class="pln"> text</span><span class="pun">/</span><span class="pln">html
</span><span class="typ">Content</span><span class="pun">-</span><span class="typ">Length</span><span class="pun">:</span><span class="pln"> </span><span class="lit">302</span><span class="pln">
</span><span class="pun">&lt;!</span><span class="pln">DOCTYPE HTML PUBLIC </span><span class="str">"-//W3C//DTD HTML 4.0 Final//EN"</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;</span><span class="pln">HTML</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;</span><span class="pln">HEAD</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;</span><span class="pln">TITLE</span><span class="pun">&gt;</span><span class="typ">This</span><span class="pln"> </span><span class="typ">Is</span><span class="pln"> a </span><span class="typ">Test</span><span class="pun">&lt;/</span><span class="pln">TITLE</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;/</span><span class="pln">HEAD</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;</span><span class="pln">BODY</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;</span><span class="pln">FORM METHOD</span><span class="pun">=</span><span class="str">"post"</span><span class="pln"> ENCTYPE</span><span class="pun">=</span><span class="str">"application/x-www-form-urlencoded"</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;</span><span class="pln">HR</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;</span><span class="pln">H1</span><span class="pun">&gt;</span><span class="pln">A </span><span class="typ">Form</span><span class="pun">:</span><span class="pln"> </span><span class="pun">&lt;/</span><span class="pln">H1</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;</span><span class="pln">TEXTAREA COLS</span><span class="pun">=</span><span class="str">"70"</span><span class="pln"> NAME</span><span class="pun">=</span><span class="str">"get_text"</span><span class="pln"> ROWS</span><span class="pun">=</span><span class="str">"10"</span><span class="pun">&gt;&lt;/</span><span class="pln">TEXTAREA</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;</span><span class="pln">BR</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;</span><span class="pln">INPUT TYPE</span><span class="pun">=</span><span class="str">"submit"</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;/</span><span class="pln">FORM</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;/</span><span class="pln">BODY</span><span class="pun">&gt;</span><span class="pln">
</span><span class="pun">&lt;/</span><span class="pln">HTML</span><span class="pun">&gt;</span></pre>
<h2>Quoting Strings:</h2>
<p>When dealing with URLs and HTML code, you must be careful to quote certain characters. For instance, a slash character ( / ) has special meaning in a URL, so it must be <b>escaped</b> if it's not part of the pathname.</p>
<p>For example, any / in the query portion of the URL will be translated to the string %2F and must be translated back to a / for you to use it. Space and ampersand are also special characters. To handle this, CGI provides the routines <b>CGI.escape</b> and  <b>CGI.unescape</b>.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'cgi'</span><span class="pln">
puts CGI</span><span class="pun">.</span><span class="pln">escape</span><span class="pun">(</span><span class="typ">Zara</span><span class="pln"> </span><span class="typ">Ali</span><span class="pun">/</span><span class="pln">A </span><span class="typ">Sweet</span><span class="pln"> </span><span class="pun">&amp;</span><span class="pln"> </span><span class="typ">Sour</span><span class="pln"> </span><span class="typ">Girl</span><span class="str">")</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Zara</span><span class="pun">+</span><span class="typ">Ali</span><span class="pun">%</span><span class="lit">2FA</span><span class="pln"> </span><span class="typ">Sweet</span><span class="pun">+%</span><span class="lit">26</span><span class="pun">+</span><span class="typ">Sour</span><span class="pun">+</span><span class="typ">Girl</span><span class="str">")</span></pre>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'cgi'</span><span class="pln">
puts CGI</span><span class="pun">.</span><span class="pln">escapeHTML</span><span class="pun">(</span><span class="str">'&lt;h1&gt;Zara Ali/A Sweet &amp; Sour Girl&lt;/h1&gt;'</span><span class="pun">)</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pun">&amp;</span><span class="pln">lt</span><span class="pun">;</span><span class="pln">h1</span><span class="pun">&amp;</span><span class="pln">gt</span><span class="pun">;</span><span class="typ">Zara</span><span class="pln"> </span><span class="typ">Ali</span><span class="pun">/</span><span class="pln">A </span><span class="typ">Sweet</span><span class="pln"> </span><span class="pun">&amp;</span><span class="pln"> </span><span class="typ">Sour</span><span class="pln"> </span><span class="typ">Girl</span><span class="pun">&amp;</span><span class="pln">lt</span><span class="pun">;/</span><span class="pln">h1</span><span class="pun">&amp;</span><span class="pln">gt</span><span class="pun">;</span><span class="str">'</span></pre>
<h2>Useful Methods in CGI Class:</h2>
<p>Here is complete listing of all the methods related to CGI class:</p>
<ion-list>
<li><p>The <a href="#/app/advance/04_cgi_methods.html">Ruby CGI</a> - Methods related to Standard CGI library.</p></li>
</ion-list>
<h2>Cookies and Sessions:</h2>
<p>I have explained these two concepts in different links. Please follow these links:</p>
<ion-list>
<li><p>The <a href="#/app/advance/04_cgi_cookies.html">Ruby CGI Cookies</a> - How to handle CGI Cookies.</p></li>
<li><p>The <a href="#/app/advance/04_cgi_sessions.html">Ruby CGI Sessions</a> - How to manage CGI sessions.</p></li>
</ion-list>
<h2>Web Hosting Servers:</h2>
<p>You could check following links to host yoru website on a Unix-based Server:</p>
<ion-list>
<li><p><a href="#" onclick="window.open('http://www.webhostingsearch.com/linux-web-hosting.php','_system')">Unix-based Web hosting</a></p></li>
</ion-list>
</div>
</ion-content>
</ion-view>