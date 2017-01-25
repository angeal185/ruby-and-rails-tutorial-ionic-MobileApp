<ion-view view-title="Installation - Unix">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Installation - Unix</h1>
<hr>
<p>Here are the steps to be followed to install Ruby on a Unix machine:</p>
<p><b>NOTE:</b> Before proceeding, make sure you have root privilege.</p>
<ion-list>
<li><p>Download a zipped file  having latest version of Ruby.  Follow <a onclick="window.open('http://www.ruby-lang.org/en/downloads/','_system')">Download Link</a>.</p></li>
<li><p>After having downloaded the Ruby archive, unpack it and change into the newly created directory:</p></li>
</ion-list>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">$ tar </span><span class="pun">-</span><span class="pln">xvzf ruby</span><span class="pun">-</span><span class="lit">1.6</span><span class="pun">.</span><span class="lit">7.tgz</span><span class="pln">
$ cd ruby</span><span class="pun">-</span><span class="lit">1.6</span><span class="pun">.</span><span class="lit">7</span></pre>
<ion-list>
<li><p>Now, configure and compile the source code as follows:</p></li>
</ion-list>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">$ </span><span class="pun">./</span><span class="pln">configure
$ make</span></pre>
<ion-list>
<li><p>Finally, install Ruby interpreter as follows:</p></li>
</ion-list>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">$ su </span><span class="pun">-</span><span class="pln">l root </span><span class="com"># become a root user</span><span class="pln">
$ make install
$ </span><span class="kwd">exit</span><span class="pln">       </span><span class="com"># become the original user again</span></pre>
<ion-list>
<li><p>After installation, make sure everything is working fine by issuing the following command on the command-line:</p></li>
</ion-list>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">$ruby </span><span class="pun">-</span><span class="pln">v
ruby </span><span class="lit">1.6</span><span class="pun">.</span><span class="lit">7</span><span class="pln"> </span><span class="pun">(</span><span class="lit">2002</span><span class="pun">-</span><span class="lit">06</span><span class="pun">-</span><span class="lit">04</span><span class="pun">)</span><span class="pln"> </span><span class="pun">[</span><span class="pln">i386</span><span class="pun">-</span><span class="pln">netbsd</span><span class="pun">]</span></pre>
<ion-list>
<li><p>If everything is fine, this should output the version of the installed Ruby interpreter as shown above. You may have installed different version, so it will display a different version.</p></li>
</ion-list>
<h2>Using yum to install Ruby:</h2>
<p>If your computer is connected to the Internet then easiest way to install ruby  or any other other RPM is using <b>yum</b> utility. Give following command at command prompt and  you will find ruby gets installed on your computer.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">$ yum install ruby</span></pre>
</div>
</ion-content>
</ion-view>