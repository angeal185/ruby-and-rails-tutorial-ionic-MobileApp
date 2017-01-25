<ion-view view-title="05 - Sending Email">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Sending Email using Ruby - SMTP</h1>
<hr>
<p>Simple Mail Transfer Protocol (SMTP) is a protocol, which handles sending e-mail and routing e-mail between mail servers. </p>
<p>Ruby provides Net::SMTP class for Simple Mail Transfer Protocol (SMTP) client-side connection and provides two class methods <i>new</i> and <i>start</i>.</p>
<ion-list>
<li><p>The <b>new</b> takes two parameters:</p>
         <ul class="list">
	 <li><p> - The <i>server name</i> defaulting to localhost</p></li>
	 <li><p> - The <i>port number</i> defaulting to the well-known port 25</p></li>
	 </ul>
</li>
<li><p>The <b>start</b> method takes these parameters:</p>
	<ul class="list">
	<li><p> - The <i>server</i> - IP name of the SMTP server, defaulting to localhost</p></li>
	<li><p> - The <i>port</i> - Port number, defaulting to 25</p></li>
	<li><p> - The <i>domain</i> - Domain of the mail sender, defaulting to ENV["HOSTNAME"]</p></li>
	<li><p> - The <i>account</i> - Username, default is nil</p></li>
	<li><p> - The <i>password</i> - User password, defaulting to nil</p></li>
	<li><p> - The <i>authtype</i> - Authorization type, defaulting to <i>cram_md5</i></p></li>
	</ul>
</li>
</ion-list>
<p>An SMTP object has an instance method called sendmail, which will typically be used to do the work of mailing a message. It takes three parameters:</p>
<ion-list>
<li><p>The <i>source</i> - A string or array or anything with an each iterator returning one string at a time.</p></li>
<li><p>The <i>sender</i> - A string that will appear in the <i>from</i> field of the email.</p></li>
<li><p>The <i>recipients</i> - A string or an array of strings representing the recipients' addressee(s).</p></li>
</ion-list>
<h2>Example:</h2>
<p>Here is a simple way to send one email using Ruby script. Try it once:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">require</span><span class="pln"> </span><span class="str">'net/smtp'</span><span class="pln">

message </span><span class="pun">=</span><span class="pln"> </span><span class="pun">&lt;&lt;</span><span class="pln">MESSAGE_END
</span><span class="typ">From</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Private</span><span class="pln"> </span><span class="typ">Person</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln">me@fromdomain</span><span class="pun">.</span><span class="pln">com</span><span class="pun">&gt;</span><span class="pln">
</span><span class="typ">To</span><span class="pun">:</span><span class="pln"> A </span><span class="typ">Test</span><span class="pln"> </span><span class="typ">User</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln">test@todomain</span><span class="pun">.</span><span class="pln">com</span><span class="pun">&gt;</span><span class="pln">
</span><span class="typ">Subject</span><span class="pun">:</span><span class="pln"> SMTP e</span><span class="pun">-</span><span class="pln">mail test

</span><span class="typ">This</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> a test e</span><span class="pun">-</span><span class="pln">mail message</span><span class="pun">.</span><span class="pln">
MESSAGE_END

</span><span class="typ">Net</span><span class="pun">::</span><span class="pln">SMTP</span><span class="pun">.</span><span class="pln">start</span><span class="pun">(</span><span class="str">'localhost'</span><span class="pun">)</span><span class="pln"> </span><span class="kwd">do</span><span class="pln"> </span><span class="pun">|</span><span class="pln">smtp</span><span class="pun">|</span><span class="pln">
  smtp</span><span class="pun">.</span><span class="pln">send_message message</span><span class="pun">,</span><span class="pln"> </span><span class="str">'me@fromdomain.com'</span><span class="pun">,</span><span class="pln"> 
                             </span><span class="str">'test@todomain.com'</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>Here, you have placed a basic e-mail in message, using a here document, taking care to format the headers correctly. An e-mails requires a <b>From</b>, <b>To</b>, and <b>Subject</b> header, separated from the body of the e-mail with a blank line.</p>
<p>To send the mail you use Net::SMTP to connect to the SMTP server on the local machine and then use the send_message method along with the message, the from address, and the destination address as parameters (even though the from and to addresses are within the e-mail itself, these aren't always used to route mail).</p>
<p>If you're not running an SMTP server on your machine, you can use Net::SMTP to communicate with a remote SMTP server. Unless you're using a webmail service (such as Hotmail or Yahoo! Mail), your e-mail provider will have provided you with outgoing mail server details that you can supply to Net::SMTP, as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Net</span><span class="pun">::</span><span class="pln">SMTP</span><span class="pun">.</span><span class="pln">start</span><span class="pun">(</span><span class="str">'mail.your-domain.com'</span><span class="pun">)</span></pre>
<p>This line of code connects to the SMTP server on port 25 of mail.your-domain.com without using any username or password. If you need to, though, you can specify port number and other details. For example:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Net</span><span class="pun">::</span><span class="pln">SMTP</span><span class="pun">.</span><span class="pln">start</span><span class="pun">(</span><span class="str">'mail.your-domain.com'</span><span class="pun">,</span><span class="pln"> 
                </span><span class="lit">25</span><span class="pun">,</span><span class="pln"> 
                </span><span class="str">'localhost'</span><span class="pun">,</span><span class="pln"> 
                </span><span class="str">'username'</span><span class="pun">,</span><span class="pln"> </span><span class="str">'password'</span><span class="pln"> </span><span class="pun">:</span><span class="pln">plain</span><span class="pun">)</span></pre>
<p>This example connects to the SMTP server at mail.your-domain.com using a username and password in plain text format. It identifies the client's hostname as localhost.</p>
<h2>Sending an HTML e-mail using Ruby:</h2>
<p>When you send a text message using Ruby then all the content will be treated as simple text. Even if you will include HTML tags in a text message, it will be displayed as simple text and HTML tags will not be formatted according to HTML syntax. But Ruby Net::SMTP provides option to send an HTML message as actual HTML message.</p>
<p>While sending an email message you can specify a Mime version, content type  and character set to send an HTML email.</p>
<h2>Example:</h2>
<p>Following is the example to send HTML content as an email. Try it once:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">require</span><span class="pln"> </span><span class="str">'net/smtp'</span><span class="pln">

message </span><span class="pun">=</span><span class="pln"> </span><span class="pun">&lt;&lt;</span><span class="pln">MESSAGE_END
</span><span class="typ">From</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Private</span><span class="pln"> </span><span class="typ">Person</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln">me@fromdomain</span><span class="pun">.</span><span class="pln">com</span><span class="pun">&gt;</span><span class="pln">
</span><span class="typ">To</span><span class="pun">:</span><span class="pln"> A </span><span class="typ">Test</span><span class="pln"> </span><span class="typ">User</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln">test@todomain</span><span class="pun">.</span><span class="pln">com</span><span class="pun">&gt;</span><span class="pln">
MIME</span><span class="pun">-</span><span class="typ">Version</span><span class="pun">:</span><span class="pln"> </span><span class="lit">1.0</span><span class="pln">
</span><span class="typ">Content</span><span class="pun">-</span><span class="pln">type</span><span class="pun">:</span><span class="pln"> text</span><span class="pun">/</span><span class="pln">html
</span><span class="typ">Subject</span><span class="pun">:</span><span class="pln"> SMTP e</span><span class="pun">-</span><span class="pln">mail test

</span><span class="typ">This</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> an e</span><span class="pun">-</span><span class="pln">mail message to be sent </span><span class="kwd">in</span><span class="pln"> HTML format

</span><span class="str">&lt;b&gt;</span><span class="typ">This</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> HTML message</span><span class="pun">.&lt;/</span><span class="pln">b</span><span class="pun">&gt;</span><span class="pln">
</span><span class="str">&lt;h1&gt;</span><span class="typ">This</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> headline</span><span class="pun">.&lt;/</span><span class="pln">h1</span><span class="pun">&gt;</span><span class="pln">
MESSAGE_END

</span><span class="typ">Net</span><span class="pun">::</span><span class="pln">SMTP</span><span class="pun">.</span><span class="pln">start</span><span class="pun">(</span><span class="str">'localhost'</span><span class="pun">)</span><span class="pln"> </span><span class="kwd">do</span><span class="pln"> </span><span class="pun">|</span><span class="pln">smtp</span><span class="pun">|</span><span class="pln">
  smtp</span><span class="pun">.</span><span class="pln">send_message message</span><span class="pun">,</span><span class="pln"> </span><span class="str">'me@fromdomain.com'</span><span class="pun">,</span><span class="pln"> 
                             </span><span class="str">'test@todomain.com'</span><span class="pln">
</span><span class="kwd">end</span></pre>
<h2>Sending Attachments as an e-mail:</h2>
<p>To send an email with mixed content requires to set <b>Content-type</b> header to <b>multipart/mixed</b>. Then text and attachment sections can be specified within <b>boundaries</b>.</p>
<p>A boundary is started with two hyphens followed by a unique number which can not appear in the message part of the email. A final boundary denoting the email's final section must also end with two hyphens.</p>
<p>Attached files should be encoded with the <b>pack("m")</b> function to have base64 encoding before transmission.</p>
<h2>Example:</h2>
<p>Following is the example which will send  a file <b>/tmp/test.txt</b> as an attachment. Try it once:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">require</span><span class="pln"> </span><span class="str">'net/smtp'</span><span class="pln">

filename </span><span class="pun">=</span><span class="pln"> </span><span class="str">"/tmp/test.txt"</span><span class="pln">
</span><span class="com"># Read a file and encode it into base64 format</span><span class="pln">
filecontent </span><span class="pun">=</span><span class="pln"> </span><span class="typ">File</span><span class="pun">.</span><span class="pln">read</span><span class="pun">(</span><span class="pln">filename</span><span class="pun">)</span><span class="pln">
encodedcontent </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[</span><span class="pln">filecontent</span><span class="pun">].</span><span class="pln">pack</span><span class="pun">(</span><span class="str">"m"</span><span class="pun">)</span><span class="pln">   </span><span class="com"># base64</span><span class="pln">

marker </span><span class="pun">=</span><span class="pln"> </span><span class="str">"AUNIQUEMARKER"</span><span class="pln">

body </span><span class="pun">=&lt;&lt;</span><span class="pln">EOF
</span><span class="typ">This</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> a test email to send an attachement</span><span class="pun">.</span><span class="pln">
EOF

</span><span class="com"># Define the main headers.</span><span class="pln">
part1 </span><span class="pun">=&lt;&lt;</span><span class="pln">EOF
</span><span class="typ">From</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Private</span><span class="pln"> </span><span class="typ">Person</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln">me@fromdomain</span><span class="pun">.</span><span class="pln">net</span><span class="pun">&gt;</span><span class="pln">
</span><span class="typ">To</span><span class="pun">:</span><span class="pln"> A </span><span class="typ">Test</span><span class="pln"> </span><span class="typ">User</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln">test@todmain</span><span class="pun">.</span><span class="pln">com</span><span class="pun">&gt;</span><span class="pln">
</span><span class="typ">Subject</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Sending</span><span class="pln"> </span><span class="typ">Attachement</span><span class="pln">
MIME</span><span class="pun">-</span><span class="typ">Version</span><span class="pun">:</span><span class="pln"> </span><span class="lit">1.0</span><span class="pln">
</span><span class="typ">Content</span><span class="pun">-</span><span class="typ">Type</span><span class="pun">:</span><span class="pln"> multipart</span><span class="pun">/</span><span class="pln">mixed</span><span class="pun">;</span><span class="pln"> boundary</span><span class="pun">=#{</span><span class="pln">marker</span><span class="pun">}</span><span class="pln">
</span><span class="pun">--#{</span><span class="pln">marker</span><span class="pun">}</span><span class="pln">
EOF

</span><span class="com"># Define the message action</span><span class="pln">
part2 </span><span class="pun">=&lt;&lt;</span><span class="pln">EOF
</span><span class="typ">Content</span><span class="pun">-</span><span class="typ">Type</span><span class="pun">:</span><span class="pln"> text</span><span class="pun">/</span><span class="pln">plain
</span><span class="typ">Content</span><span class="pun">-</span><span class="typ">Transfer</span><span class="pun">-</span><span class="typ">Encoding</span><span class="pun">:</span><span class="lit">8bit</span><span class="pln">

</span><span class="com">#{body}</span><span class="pln">
</span><span class="pun">--#{</span><span class="pln">marker</span><span class="pun">}</span><span class="pln">
EOF

</span><span class="com"># Define the attachment section</span><span class="pln">
part3 </span><span class="pun">=&lt;&lt;</span><span class="pln">EOF
</span><span class="typ">Content</span><span class="pun">-</span><span class="typ">Type</span><span class="pun">:</span><span class="pln"> multipart</span><span class="pun">/</span><span class="pln">mixed</span><span class="pun">;</span><span class="pln"> name</span><span class="pun">=</span><span class="pln">\"</span><span class="com">#{filename}\"</span><span class="pln">
</span><span class="typ">Content</span><span class="pun">-</span><span class="typ">Transfer</span><span class="pun">-</span><span class="typ">Encoding</span><span class="pun">:</span><span class="pln">base64
</span><span class="typ">Content</span><span class="pun">-</span><span class="typ">Disposition</span><span class="pun">:</span><span class="pln"> attachment</span><span class="pun">;</span><span class="pln"> filename</span><span class="pun">=</span><span class="str">"#{filename}"</span><span class="pln">

</span><span class="com">#{encodedcontent}</span><span class="pln">
</span><span class="pun">--#{</span><span class="pln">marker</span><span class="pun">}--</span><span class="pln">
EOF

mailtext </span><span class="pun">=</span><span class="pln"> part1 </span><span class="pun">+</span><span class="pln"> part2 </span><span class="pun">+</span><span class="pln"> part3

</span><span class="com"># Let's put our code in safe area</span><span class="pln">
</span><span class="kwd">begin</span><span class="pln"> 
  </span><span class="typ">Net</span><span class="pun">::</span><span class="pln">SMTP</span><span class="pun">.</span><span class="pln">start</span><span class="pun">(</span><span class="str">'localhost'</span><span class="pun">)</span><span class="pln"> </span><span class="kwd">do</span><span class="pln"> </span><span class="pun">|</span><span class="pln">smtp</span><span class="pun">|</span><span class="pln">
     smtp</span><span class="pun">.</span><span class="pln">sendmail</span><span class="pun">(</span><span class="pln">mailtext</span><span class="pun">,</span><span class="pln"> </span><span class="str">'me@fromdomain.net'</span><span class="pun">,</span><span class="pln">
                          </span><span class="pun">[</span><span class="str">'test@todmain.com'</span><span class="pun">])</span><span class="pln">
  </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln"> </span><span class="typ">Exception</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> e  
  </span><span class="kwd">print</span><span class="pln"> </span><span class="str">"Exception occured: "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> e  
</span><span class="kwd">end</span><span class="pln">  </span></pre>
<p><b>NOTE:</b> You can specify multiple destinations inside the array but they should be separated by comma.</p>
</div>
</ion-content>
</ion-view>
