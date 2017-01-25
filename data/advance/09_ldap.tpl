<ion-view view-title="09 - Ruby/LDAP">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Ruby/LDAP Tutorial</h1>
<hr>

<p>Ruby/LDAP is an extension library for Ruby. It provides the interface to some LDAP libraries like OpenLDAP, UMich LDAP, Netscape SDK, ActiveDirectory.</p>
<p>The common API for application development is described in RFC1823 and is supported by Ruby/LDAP.</p>
<h2>Ruby/LDAP Installation:</h2>
<p>You can download and install a complete Ruby/LDAP package from <a href="#" onclick="window.open('http://sourceforge.net/projects/ruby-ldap/','_system')" title="Ruby/LDAP">SOURCEFORGE.NET</a>.</p>
<p>Before installing Ruby/LDAP, make sure you have the following components:</p>
<ion-list>
<li><p>Ruby 1.8.x (at least 1.8.2 if you want to use ldap/control).</p></li>
<li><p>OpenLDAP, Netscape SDK, Windows 2003 or Windows XP.</p></li>
</ion-list>
<p>Now, you can use standard Ruby Installation method. Before starting, if you'd like to see the available options for extconf.rb, run it with '--help' option.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">$ ruby extconf</span><span class="pun">.</span><span class="pln">rb </span><span class="pun">[--</span><span class="kwd">with</span><span class="pun">-</span><span class="pln">openldap1</span><span class="pun">|--</span><span class="kwd">with</span><span class="pun">-</span><span class="pln">openldap2</span><span class="pun">|</span><span class="pln"> \
                   </span><span class="pun">--</span><span class="kwd">with</span><span class="pun">-</span><span class="pln">netscape</span><span class="pun">|--</span><span class="kwd">with</span><span class="pun">-</span><span class="pln">wldap32</span><span class="pun">]</span><span class="pln">
$ make
$ make install</span></pre>
<p><b>NOTE:</b> If you're building the software on Windows, you may need to use nmake instead of make.</p>
<h2>Establish LDAP Connection:</h2>
<p>This is a two-step process:</p>
<h2>Step 1: Create Connection Object</h2>
<p>Following is the syntax to create a connection to a LDAP directory.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">LDAP</span><span class="pun">::</span><span class="typ">Conn</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">host</span><span class="pun">=</span><span class="str">'localhost'</span><span class="pun">,</span><span class="pln"> port</span><span class="pun">=</span><span class="pln">LDAP_PORT</span><span class="pun">)</span></pre>
<ion-list>
<li><p><b>host:</b> This is the host ID running LDAP directory. We will take it as <i>localhost</i>.</p></li>
<li><p><b>port:</b> This is the port being used for LDAP service. Standard LDAP ports are 636 and 389. Make sure which port is being used at your server otherwise you can use LDAP::LDAP_PORT.</p></li>
</ion-list>
<p>This call returns a new <i>LDAP::Conn</i> connection to the server, <i>host</i>, on port <i>port</i>.</p>
<h2>Step 2: Binding</h2>
<p>This is where we usually specify the username and password we will use for the rest of the session.</p>
<p>Following is the syntax to bind an LDAP connection, using the DN, <b>dn</b>, the credential, <b>pwd</b>, and the bind method, <b>method</b></p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">conn</span><span class="pun">.</span><span class="pln">bind</span><span class="pun">(</span><span class="pln">dn</span><span class="pun">=</span><span class="kwd">nil</span><span class="pun">,</span><span class="pln"> password</span><span class="pun">=</span><span class="kwd">nil</span><span class="pun">,</span><span class="pln"> method</span><span class="pun">=</span><span class="pln">LDAP</span><span class="pun">::</span><span class="pln">LDAP_AUTH_SIMPLE</span><span class="pun">)</span><span class="kwd">do</span><span class="pln">
</span><span class="pun">....</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>You can use same method without a code block. In this case, you would need to unbind the connection explicitly as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">conn</span><span class="pun">.</span><span class="pln">bind</span><span class="pun">(</span><span class="pln">dn</span><span class="pun">=</span><span class="kwd">nil</span><span class="pun">,</span><span class="pln"> password</span><span class="pun">=</span><span class="kwd">nil</span><span class="pun">,</span><span class="pln"> method</span><span class="pun">=</span><span class="pln">LDAP</span><span class="pun">::</span><span class="pln">LDAP_AUTH_SIMPLE</span><span class="pun">)</span><span class="pln">
</span><span class="pun">....</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">unbind</span></pre>
<p>If a code block is given, <i>self</i> is yielded to the block.</p>
<p>We can now perform search, add, modify or delete operations inside the block of the bind method (between bind and unbind), provided we have the proper permissions.</p>
<h2>Example:</h2>
<p>Assuming we are working on a local server, let's put things together with appropriate host, domain, user id and password, etc.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'ldap'</span><span class="pln">

$HOST </span><span class="pun">=</span><span class="pln">    </span><span class="str">'localhost'</span><span class="pln">
$PORT </span><span class="pun">=</span><span class="pln">    LDAP</span><span class="pun">::</span><span class="pln">LDAP_PORT
$SSLPORT </span><span class="pun">=</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="pln">LDAPS_PORT

conn </span><span class="pun">=</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="typ">Conn</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">$HOST</span><span class="pun">,</span><span class="pln"> $PORT</span><span class="pun">)</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">bind</span><span class="pun">(</span><span class="str">'cn=root, dc=localhost, dc=localdomain'</span><span class="pun">,</span><span class="str">'secret'</span><span class="pun">)</span><span class="pln">
</span><span class="pun">....</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">unbind</span></pre>
<h2>Adding an LDAP Entry:</h2>
<p>Adding an LDPA entry is a two step process:</p>
<h2>Step 1: Creating <i>LDAP::Mod</i> object</h2>
<p>We need <i>LDAP::Mod</i> object pass to <i>conn.add</i> method to create an entry. Here is a simple syntax to create <i>LDAP::Mod</i> object:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Mod</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">mod_type</span><span class="pun">,</span><span class="pln"> attr</span><span class="pun">,</span><span class="pln"> vals</span><span class="pun">)</span></pre>
<ion-list>
<li><p><b>mod_type:</b> One or more option LDAP_MOD_ADD, LDAP_MOD_REPLACE or LDAP_MOD_DELETE.</p></li>
<li><p><b>attr:</b> should be the name of the attribute on which to operate.</p></li>
<li><p><b>vals:</b> is an array of values pertaining to <i>attr</i>. If <i>vals</i> contains binary data, <i>mod_type</i> should be logically OR'ed (|) with LDAP_MOD_BVALUES.</p></li>
</ion-list>
<p>This call returns <i>LDAP::Mod</i> object, which can be passed to methods in the LDAP::Conn class, such as Conn#add, Conn#add_ext, Conn#modify and Conn#modify_ext.</p>
<h2>Step 2: Calling <i>conn.add</i> Method</h2>
<p>Once we are ready with <i>LDAP::Mod</i> object, we can call <i>conn.add</i> method to create an entry. Here is a syntax to call this method:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">conn</span><span class="pun">.</span><span class="pln">add</span><span class="pun">(</span><span class="pln">dn</span><span class="pun">,</span><span class="pln"> attrs</span><span class="pun">)</span></pre>
<p>This method adds an entry with the DN, <i>dn</i>, and the attributes, <i>attrs</i>. Here, <i>attrs</i> should be either an array of <i>LDAP::Mod</i> objects or a hash of attribute/value array pairs.</p>
<h2>Example:</h2>
<p>Here is a complete example, which will create two directory entries:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'ldap'</span><span class="pln">

$HOST </span><span class="pun">=</span><span class="pln">    </span><span class="str">'localhost'</span><span class="pln">
$PORT </span><span class="pun">=</span><span class="pln">    LDAP</span><span class="pun">::</span><span class="pln">LDAP_PORT
$SSLPORT </span><span class="pun">=</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="pln">LDAPS_PORT

conn </span><span class="pun">=</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="typ">Conn</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">$HOST</span><span class="pun">,</span><span class="pln"> $PORT</span><span class="pun">)</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">bind</span><span class="pun">(</span><span class="str">'cn=root, dc=localhost, dc=localdomain'</span><span class="pun">,</span><span class="str">'secret'</span><span class="pun">)</span><span class="pln">

conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"bind"</span><span class="pun">)</span><span class="pln">
entry1 </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[</span><span class="pln">
  LDAP</span><span class="pun">.</span><span class="pln">mod</span><span class="pun">(</span><span class="pln">LDAP</span><span class="pun">::</span><span class="pln">LDAP_MOD_ADD</span><span class="pun">,</span><span class="str">'objectclass'</span><span class="pun">,[</span><span class="str">'top'</span><span class="pun">,</span><span class="str">'domain'</span><span class="pun">]),</span><span class="pln">
  LDAP</span><span class="pun">.</span><span class="pln">mod</span><span class="pun">(</span><span class="pln">LDAP</span><span class="pun">::</span><span class="pln">LDAP_MOD_ADD</span><span class="pun">,</span><span class="str">'o'</span><span class="pun">,[</span><span class="str">'TTSKY.NET'</span><span class="pun">]),</span><span class="pln">
  LDAP</span><span class="pun">.</span><span class="pln">mod</span><span class="pun">(</span><span class="pln">LDAP</span><span class="pun">::</span><span class="pln">LDAP_MOD_ADD</span><span class="pun">,</span><span class="str">'dc'</span><span class="pun">,[</span><span class="str">'localhost'</span><span class="pun">]),</span><span class="pln">
</span><span class="pun">}</span><span class="pln">

entry2 </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[</span><span class="pln">
  LDAP</span><span class="pun">.</span><span class="pln">mod</span><span class="pun">(</span><span class="pln">LDAP</span><span class="pun">::</span><span class="pln">LDAP_MOD_ADD</span><span class="pun">,</span><span class="str">'objectclass'</span><span class="pun">,[</span><span class="str">'top'</span><span class="pun">,</span><span class="str">'person'</span><span class="pun">]),</span><span class="pln">
  LDAP</span><span class="pun">.</span><span class="pln">mod</span><span class="pun">(</span><span class="pln">LDAP</span><span class="pun">::</span><span class="pln">LDAP_MOD_ADD</span><span class="pun">,</span><span class="pln"> </span><span class="str">'cn'</span><span class="pun">,</span><span class="pln"> </span><span class="pun">[</span><span class="str">'Zara Ali'</span><span class="pun">]),</span><span class="pln">
  LDAP</span><span class="pun">.</span><span class="pln">mod</span><span class="pun">(</span><span class="pln">LDAP</span><span class="pun">::</span><span class="pln">LDAP_MOD_ADD </span><span class="pun">|</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="pln">LDAP_MOD_BVALUES</span><span class="pun">,</span><span class="pln"> </span><span class="str">'sn'</span><span class="pun">,</span><span class="pln"> 
                     </span><span class="pun">[</span><span class="str">'ttate'</span><span class="pun">,</span><span class="str">'ALI'</span><span class="pun">,</span><span class="pln"> </span><span class="str">"zero\000zero"</span><span class="pun">]),</span><span class="pln">
</span><span class="pun">]</span><span class="pln">

</span><span class="kwd">begin</span><span class="pln">
  conn</span><span class="pun">.</span><span class="pln">add</span><span class="pun">(</span><span class="str">"dc=localhost, dc=localdomain"</span><span class="pun">,</span><span class="pln"> entry1</span><span class="pun">)</span><span class="pln">
  conn</span><span class="pun">.</span><span class="pln">add</span><span class="pun">(</span><span class="str">"cn=Zara Ali, dc=localhost, dc=localdomain"</span><span class="pun">,</span><span class="pln"> entry2</span><span class="pun">)</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="typ">ResultError</span><span class="pln">
  conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"add"</span><span class="pun">)</span><span class="pln">
  </span><span class="kwd">exit</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"add"</span><span class="pun">)</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">unbind</span></pre>
<h2>Modifying an LDAP Entry:</h2>
<p>Modifying an entry is similar to adding one. Just call the <i>modify</i> method instead of <i>add</i> with the attributes to modify. Here is a simple syntax of <i>modify</i> method.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">conn</span><span class="pun">.</span><span class="pln">modify</span><span class="pun">(</span><span class="pln">dn</span><span class="pun">,</span><span class="pln"> mods</span><span class="pun">)</span></pre>
<p>This method modifies an entry with the DN, <i>dn</i>, and the attributes, <i>mods</i>. Here, <i>mods</i> should be either an array of <i>LDAP::Mod</i> objects or a hash of attribute/value array pairs.</p>
<h2>Example:</h2>
<p>To modify the surname of the entry, which we added in the previous section, we would write:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'ldap'</span><span class="pln">

$HOST </span><span class="pun">=</span><span class="pln">    </span><span class="str">'localhost'</span><span class="pln">
$PORT </span><span class="pun">=</span><span class="pln">    LDAP</span><span class="pun">::</span><span class="pln">LDAP_PORT
$SSLPORT </span><span class="pun">=</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="pln">LDAPS_PORT

conn </span><span class="pun">=</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="typ">Conn</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">$HOST</span><span class="pun">,</span><span class="pln"> $PORT</span><span class="pun">)</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">bind</span><span class="pun">(</span><span class="str">'cn=root, dc=localhost, dc=localdomain'</span><span class="pun">,</span><span class="str">'secret'</span><span class="pun">)</span><span class="pln">

conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"bind"</span><span class="pun">)</span><span class="pln">
entry1 </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[</span><span class="pln">
  LDAP</span><span class="pun">.</span><span class="pln">mod</span><span class="pun">(</span><span class="pln">LDAP</span><span class="pun">::</span><span class="pln">LDAP_MOD_REPLACE</span><span class="pun">,</span><span class="pln"> </span><span class="str">'sn'</span><span class="pun">,</span><span class="pln"> </span><span class="pun">[</span><span class="str">'Mohtashim'</span><span class="pun">]),</span><span class="pln">
</span><span class="pun">]</span><span class="pln">

</span><span class="kwd">begin</span><span class="pln">
  conn</span><span class="pun">.</span><span class="pln">modify</span><span class="pun">(</span><span class="str">"cn=Zara Ali, dc=localhost, dc=localdomain"</span><span class="pun">,</span><span class="pln"> entry1</span><span class="pun">)</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="typ">ResultError</span><span class="pln">
  conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"modify"</span><span class="pun">)</span><span class="pln">
  </span><span class="kwd">exit</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"modify"</span><span class="pun">)</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">unbind</span></pre>
<h2>Deleting an LDAP Entry:</h2>
<p>To delete an entry, call the <i>delete</i> method with the distinguished name as parameter. Here is a simple syntax of <i>delete</i> method.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">conn</span><span class="pun">.</span><span class="kwd">delete</span><span class="pun">(</span><span class="pln">dn</span><span class="pun">)</span></pre>
<p>This method deletes an entry with the DN, <i>dn</i>.</p>
<h2>Example:</h2>
<p>To delete <i>Zara Mohtashim</i> entry, which we added in the previous section, we would write:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'ldap'</span><span class="pln">

$HOST </span><span class="pun">=</span><span class="pln">    </span><span class="str">'localhost'</span><span class="pln">
$PORT </span><span class="pun">=</span><span class="pln">    LDAP</span><span class="pun">::</span><span class="pln">LDAP_PORT
$SSLPORT </span><span class="pun">=</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="pln">LDAPS_PORT

conn </span><span class="pun">=</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="typ">Conn</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">$HOST</span><span class="pun">,</span><span class="pln"> $PORT</span><span class="pun">)</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">bind</span><span class="pun">(</span><span class="str">'cn=root, dc=localhost, dc=localdomain'</span><span class="pun">,</span><span class="str">'secret'</span><span class="pun">)</span><span class="pln">

conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"bind"</span><span class="pun">)</span><span class="pln">
</span><span class="kwd">begin</span><span class="pln">
  conn</span><span class="pun">.</span><span class="kwd">delete</span><span class="pun">(</span><span class="str">"cn=Zara-Mohtashim, dc=localhost, dc=localdomain"</span><span class="pun">)</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="typ">ResultError</span><span class="pln">
  conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"delete"</span><span class="pun">)</span><span class="pln">
  </span><span class="kwd">exit</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"delete"</span><span class="pun">)</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">unbind</span></pre>
<h2>Modifying the Distinguished Name:</h2>
<p>It's not possible to modify the distinguished name of an entry with the <i>modify</i> method. Instead, use the <i>modrdn</i> method. Here is simple syntax of <i>modrdn</i> method:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">conn</span><span class="pun">.</span><span class="pln">modrdn</span><span class="pun">(</span><span class="pln">dn</span><span class="pun">,</span><span class="pln"> new_rdn</span><span class="pun">,</span><span class="pln"> delete_old_rdn</span><span class="pun">)</span></pre>
<p>This method modifies the RDN of the entry with DN, <i>dn</i>, giving it the new RDN, <i>new_rdn</i>. If <i>delete_old_rdn</i> is <i>true</i>, the old RDN value will be deleted from the entry.</p>
<h2>Example:</h2>
<p>Suppose we have the following entry:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">dn</span><span class="pun">:</span><span class="pln"> cn</span><span class="pun">=</span><span class="typ">Zara</span><span class="pln"> </span><span class="typ">Ali</span><span class="pun">,</span><span class="pln">dc</span><span class="pun">=</span><span class="pln">localhost</span><span class="pun">,</span><span class="pln">dc</span><span class="pun">=</span><span class="pln">localdomain
cn</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Zara</span><span class="pln"> </span><span class="typ">Ali</span><span class="pln">
sn</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Ali</span><span class="pln">
objectclass</span><span class="pun">:</span><span class="pln"> person</span></pre>
<p>Then, we can modify its distinguished name with the following code:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'ldap'</span><span class="pln">

$HOST </span><span class="pun">=</span><span class="pln">    </span><span class="str">'localhost'</span><span class="pln">
$PORT </span><span class="pun">=</span><span class="pln">    LDAP</span><span class="pun">::</span><span class="pln">LDAP_PORT
$SSLPORT </span><span class="pun">=</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="pln">LDAPS_PORT

conn </span><span class="pun">=</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="typ">Conn</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">$HOST</span><span class="pun">,</span><span class="pln"> $PORT</span><span class="pun">)</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">bind</span><span class="pun">(</span><span class="str">'cn=root, dc=localhost, dc=localdomain'</span><span class="pun">,</span><span class="str">'secret'</span><span class="pun">)</span><span class="pln">

conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"bind"</span><span class="pun">)</span><span class="pln">
</span><span class="kwd">begin</span><span class="pln">
  conn</span><span class="pun">.</span><span class="pln">modrdn</span><span class="pun">(</span><span class="str">"cn=Zara Ali, dc=localhost, dc=localdomain"</span><span class="pun">,</span><span class="pln">
              </span><span class="str">"cn=Zara Mohtashim"</span><span class="pun">,</span><span class="pln"> </span><span class="kwd">true</span><span class="pun">)</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="typ">ResultError</span><span class="pln">
  conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"modrdn"</span><span class="pun">)</span><span class="pln">
  </span><span class="kwd">exit</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"modrdn"</span><span class="pun">)</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">unbind</span></pre>
<h2>Performing a Search:</h2>
<p>To perform a search on a LDAP directory, use the <i>search</i> method with one of three different search modes:</p>
<ion-list>
<li><p><b>LDAP_SCOPE_BASEM:</b>  Search only the base node.</p></li>
<li><p><b>LDAP_SCOPE_ONELEVEL:</b> Search all children of the base node.</p></li>
<li><p><b>LDAP_SCOPE_SUBTREE:</b> Search the whole subtree including the base node.</p></li>
</ion-list>
<h2>Example:</h2>
<p>Here, we are going to search the whole subtree of entry <i>dc=localhost, dc=localdomain</i> for <i>person</i> objects:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'ldap'</span><span class="pln">

$HOST </span><span class="pun">=</span><span class="pln">    </span><span class="str">'localhost'</span><span class="pln">
$PORT </span><span class="pun">=</span><span class="pln">    LDAP</span><span class="pun">::</span><span class="pln">LDAP_PORT
$SSLPORT </span><span class="pun">=</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="pln">LDAPS_PORT

</span><span class="kwd">base</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> </span><span class="str">'dc=localhost,dc=localdomain'</span><span class="pln">
scope </span><span class="pun">=</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="pln">LDAP_SCOPE_SUBTREE
filter </span><span class="pun">=</span><span class="pln"> </span><span class="str">'(objectclass=person)'</span><span class="pln">
attrs </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[</span><span class="str">'sn'</span><span class="pun">,</span><span class="pln"> </span><span class="str">'cn'</span><span class="pun">]</span><span class="pln">

conn </span><span class="pun">=</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="typ">Conn</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">$HOST</span><span class="pun">,</span><span class="pln"> $PORT</span><span class="pun">)</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">bind</span><span class="pun">(</span><span class="str">'cn=root, dc=localhost, dc=localdomain'</span><span class="pun">,</span><span class="str">'secret'</span><span class="pun">)</span><span class="pln">

conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"bind"</span><span class="pun">)</span><span class="pln">
</span><span class="kwd">begin</span><span class="pln">
  conn</span><span class="pun">.</span><span class="pln">search</span><span class="pun">(</span><span class="kwd">base</span><span class="pun">,</span><span class="pln"> scope</span><span class="pun">,</span><span class="pln"> filter</span><span class="pun">,</span><span class="pln"> attrs</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln"> </span><span class="pun">|</span><span class="pln">entry</span><span class="pun">|</span><span class="pln">
     </span><span class="com"># print distinguished name</span><span class="pln">
     p entry</span><span class="pun">.</span><span class="pln">dn
     </span><span class="com"># print all attribute names</span><span class="pln">
     p entry</span><span class="pun">.</span><span class="pln">attrs
     </span><span class="com"># print values of attribute 'sn'</span><span class="pln">
     p entry</span><span class="pun">.</span><span class="pln">vals</span><span class="pun">(</span><span class="str">'sn'</span><span class="pun">)</span><span class="pln">
     </span><span class="com"># print entry as Hash</span><span class="pln">
     p entry</span><span class="pun">.</span><span class="pln">to_hash
  </span><span class="pun">}</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln"> LDAP</span><span class="pun">::</span><span class="typ">ResultError</span><span class="pln">
  conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"search"</span><span class="pun">)</span><span class="pln">
  </span><span class="kwd">exit</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">perror</span><span class="pun">(</span><span class="str">"search"</span><span class="pun">)</span><span class="pln">
conn</span><span class="pun">.</span><span class="pln">unbind</span></pre>
<p>This invokes the given code block for each matching entry where the LDAP entry is represented by an instance of the LDAP::Entry class. With the last parameter of search, you can specify the attributes in which you are interested, omitting all others. If you pass nil here, all attributes are returned same as "SELECT *" in relational databases.</p>
<p>The dn method(alias for get_dn) of the LDAP::Entry class returns the distinguished name of the entry, and with the to_hash method, you can get a hash representation of its attributes (including the distinguished name). To get a list of an entry's attributes, use the attrs method (alias for get_attributes). Also, to get the list of one specific attribute's values, use the vals method (alias for  get_values)</p>
<h2>Handling Errors:</h2>
<p>Ruby/LDAP defines two different exception classes:</p>
<ion-list>
<li><p>In case of an error, the new, bind or unbind methods raise an LDAP::Error exception.</p></li>
<li><p>In case of add, modify, delete or searching an LDAP directory raise an LDAP::ResultError.</p></li>
</ion-list>
<h2>Further Reading:</h2>
<p>For complete details on LDAP methods, please refer to standard documentation for <a href="#" onclick="window.open('http://ruby-ldap.sourceforge.net/rdoc/','_system')" title="LDAP Documentation" target="_blank">LDAP Documentation</a>.</p>
</div>
</ion-content>
</ion-view>
