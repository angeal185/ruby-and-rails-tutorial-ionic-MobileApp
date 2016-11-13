<ion-view view-title="CGI Cookies">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>CGI Cookies</h1>
<hr>
<p>HTTP protocol is a stateless protocol. But for a commercial website, it is required to maintain session information  among different pages. For example, one user registration ends after completing many pages. But how to maintain user's session information across all the web pages.</p>
<p>In many situations, using cookies is the most efficient method of remembering and tracking preferences, purchases, commissions, and other information required for better visitor experience or site statistics.</p>
<h2>How It Works ?</h2>
<p>Your server sends some data to the visitor's browser in the form of a cookie. The browser may accept the cookie. If it does, it is stored as a plain text record on the visitor's hard drive. Now, when the visitor arrives at another page on your site, the cookie is available for retrieval. Once retrieved, your server knows/remembers what was stored.</p>
<p>Cookies are a plain text data record of 5 variable-length fields:</p>
<ion-list>
<li><p><b>Expires :</b> The date the cookie will expire. If this is blank, the cookie will expire when the visitor quits the browser.</p></li>
<li><p><b>Domain :</b> The domain name of your site.</p></li>
<li><p><b>Path :</b> The path to the directory or web page that sets the cookie. This may be blank if you want to retrieve the cookie from any directory or page.</p></li>
<li><p><b>Secure :</b> If this field contains the word "secure", then the cookie may only be retrieved with a secure server. If this field is blank, no such restriction exists.</p></li>
<li><p><b>Name=Value :</b> Cookies are set and retrieved in the form of key and value pairs.</p></li>
</ion-list>
<h2>Handling Cookies in Ruby</h2>
<p>You can create a named cookie object and store any textual information in it. To send it down to the browser, set a <b>cookie</b> header in the call to <i>CGI.out</i>.</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">"cgi"</span><span class="pln">
cgi </span><span class="pun">=</span><span class="pln"> CGI</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"html4"</span><span class="pun">)</span><span class="pln">
cookie </span><span class="pun">=</span><span class="pln"> CGI</span><span class="pun">::</span><span class="typ">Cookie</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">'name'</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> </span><span class="str">'mycookie'</span><span class="pun">,</span><span class="pln">
                         </span><span class="str">'value'</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> </span><span class="str">'Zara Ali'</span><span class="pun">,</span><span class="pln">
                         </span><span class="str">'expires'</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> </span><span class="typ">Time</span><span class="pun">.</span><span class="pln">now </span><span class="pun">+</span><span class="pln"> </span><span class="lit">3600</span><span class="pun">)</span><span class="pln">
cgi</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">(</span><span class="str">'cookie'</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> cookie</span><span class="pun">)</span><span class="pln"> </span><span class="kwd">do</span><span class="pln">
   cgi</span><span class="pun">.</span><span class="pln">head </span><span class="pun">+</span><span class="pln"> cgi</span><span class="pun">.</span><span class="pln">body </span><span class="pun">{</span><span class="pln"> </span><span class="str">"Cookie stored"</span><span class="pln"> </span><span class="pun">}</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>The next time the user comes back to this page, you can retrieve the cookie values set as shown below:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">"cgi"</span><span class="pln">
cgi </span><span class="pun">=</span><span class="pln"> CGI</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"html4"</span><span class="pun">)</span><span class="pln">
cookie </span><span class="pun">=</span><span class="pln"> cgi</span><span class="pun">.</span><span class="pln">cookies</span><span class="pun">[</span><span class="str">'mycookie'</span><span class="pun">]</span><span class="pln">
cgi</span><span class="pun">.</span><span class="kwd">out</span><span class="pun">(</span><span class="str">'cookie'</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> cookie</span><span class="pun">)</span><span class="pln"> </span><span class="kwd">do</span><span class="pln">
   cgi</span><span class="pun">.</span><span class="pln">head </span><span class="pun">+</span><span class="pln"> cgi</span><span class="pun">.</span><span class="pln">body </span><span class="pun">{</span><span class="pln"> cookie</span><span class="pun">[</span><span class="lit">0</span><span class="pun">]</span><span class="pln"> </span><span class="pun">}</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>Cookies are represented using a separate object of class CGI::Cookie, containing the following accessors:</p>
<table class="table table-bordered">
<tbody><tr><th style="width:50%">Attribute</th><th style="width:50%">Returned Value</th></tr>
<tr><td>name</td><td>Cookie name</td></tr>
<tr><td>value</td><td>An array of cookie values</td></tr>
<tr><td>path</td><td>The cookie's path</td></tr>
<tr><td>domain</td><td>The domain</td></tr>
<tr><td>expires</td><td>The expiration time (as a Time object)</td></tr>
<tr><td>secure</td><td>True if secure cookie</td></tr>
</tbody></table>   
</div>
</ion-content>
</ion-view>