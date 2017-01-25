<ion-view view-title="Environment Variables">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Environment Variables</h1>
<hr>
<p>Ruby interpreter uses the following environment variables to control its behavior. The ENV object contains a list of all the 
current environment variables set.</p>
<table class="table table-bordered">
<tbody><tr><th>Variable</th><th>Description</th></tr>
<tr><td><b>DLN_LIBRARY_PATH</b></td><td> Search path for dynamically loaded modules.</td></tr>
<tr><td><b>HOME</b></td><td> Directory moved to when no argument is passed to Dir::chdir. Also used by File::expand_path to expand "~".</td></tr>
<tr><td><b>LOGDIR</b></td><td> Directory moved to when no arguments are passed to Dir::chdir and environment variable HOME isn't set.</td></tr>
<tr><td><b>PATH</b></td><td> Search path for executing subprocesses and searching for Ruby programs with the -S option. Separate each path with a colon (semicolon in DOS and Windows).</td></tr>
<tr><td><b>RUBYLIB</b></td><td>Search path for libraries. Separate each path with a colon (semicolon in DOS and Windows).</td></tr>
<tr><td><b>RUBYLIB_PREFIX</b></td><td>Used to modify the RUBYLIB search path by replacing prefix of library path1 with
path2 using the format path1;path2 or path1path2.</td></tr>
<tr><td><b>RUBYOPT</b></td><td> Command-line options passed to Ruby interpreter. Ignored in taint mode (Where $SAFE is greater than 0).</td></tr>
<tr><td><b>RUBYPATH</b></td><td>With -S option, search path for Ruby programs. Takes precedence over PATH. Ignored in taint mode (where $SAFE is greater than 0).</td></tr>
<tr><td><b>RUBYSHELL</b></td><td> Specifies shell for spawned processes. If not set, SHELL or COMSPEC are checked.</td></tr>
</tbody></table>
<p>For Unix, use <b>env</b> command to see a list of all environment variables.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">HOSTNAME</span><span class="pun">=</span><span class="pln">ip</span><span class="pun">-</span><span class="lit">72</span><span class="pun">-</span><span class="lit">167</span><span class="pun">-</span><span class="lit">112</span><span class="pun">-</span><span class="lit">17.ip</span><span class="pun">.</span><span class="pln">secureserver</span><span class="pun">.</span><span class="pln">net
RUBYPATH</span><span class="pun">=</span><span class="str">/usr/</span><span class="pln">bin
SHELL</span><span class="pun">=</span><span class="str">/bin/</span><span class="pln">bash
TERM</span><span class="pun">=</span><span class="pln">xterm
HISTSIZE</span><span class="pun">=</span><span class="lit">1000</span><span class="pln">
SSH_CLIENT</span><span class="pun">=</span><span class="lit">122.169</span><span class="pun">.</span><span class="lit">131.179</span><span class="pln"> </span><span class="lit">1742</span><span class="pln"> </span><span class="lit">22</span><span class="pln">
SSH_TTY</span><span class="pun">=</span><span class="str">/dev/</span><span class="pln">pts</span><span class="pun">/</span><span class="lit">1</span><span class="pln">
USER</span><span class="pun">=</span><span class="pln">amrood
JRE_HOME</span><span class="pun">=</span><span class="str">/usr/</span><span class="pln">java</span><span class="pun">/</span><span class="pln">jdk</span><span class="pun">/</span><span class="pln">jre
J2RE_HOME</span><span class="pun">=</span><span class="str">/usr/</span><span class="pln">java</span><span class="pun">/</span><span class="pln">jdk</span><span class="pun">/</span><span class="pln">jre
PATH</span><span class="pun">=</span><span class="str">/usr/</span><span class="kwd">local</span><span class="pun">/</span><span class="pln">bin</span><span class="pun">:</span><span class="str">/bin:/</span><span class="pln">usr</span><span class="pun">/</span><span class="pln">bin</span><span class="pun">:</span><span class="str">/home/</span><span class="pln">guest</span><span class="pun">/</span><span class="pln">bin
MAIL</span><span class="pun">=</span><span class="str">/var/</span><span class="pln">spool</span><span class="pun">/</span><span class="pln">mail</span><span class="pun">/</span><span class="pln">guest
PWD</span><span class="pun">=</span><span class="str">/home/</span><span class="pln">amrood
INPUTRC</span><span class="pun">=</span><span class="str">/etc/</span><span class="pln">inputrc
JAVA_HOME</span><span class="pun">=</span><span class="str">/usr/</span><span class="pln">java</span><span class="pun">/</span><span class="pln">jdk
LANG</span><span class="pun">=</span><span class="pln">C
HOME</span><span class="pun">=/</span><span class="pln">root
SHLVL</span><span class="pun">=</span><span class="lit">2</span><span class="pln">
JDK_HOME</span><span class="pun">=</span><span class="str">/usr/</span><span class="pln">java</span><span class="pun">/</span><span class="pln">jdk
LOGDIR</span><span class="pun">=</span><span class="str">/usr/</span><span class="pln">log</span><span class="pun">/</span><span class="pln">ruby
LOGNAME</span><span class="pun">=</span><span class="pln">amrood
SSH_CONNECTION</span><span class="pun">=</span><span class="lit">122.169</span><span class="pun">.</span><span class="lit">131.179</span><span class="pln"> </span><span class="lit">1742</span><span class="pln"> </span><span class="lit">72.167</span><span class="pun">.</span><span class="lit">112.17</span><span class="pln"> </span><span class="lit">22</span><span class="pln">
LESSOPEN</span><span class="pun">=|</span><span class="str">/usr/</span><span class="pln">bin</span><span class="pun">/</span><span class="pln">lesspipe</span><span class="pun">.</span><span class="pln">sh </span><span class="pun">%</span><span class="pln">s
RUBYLIB</span><span class="pun">=</span><span class="str">/usr/</span><span class="pln">lib</span><span class="pun">/</span><span class="pln">ruby
G_BROKEN_FILENAMES</span><span class="pun">=</span><span class="lit">1</span><span class="pln">
_</span><span class="pun">=</span><span class="str">/bin/</span><span class="pln">env</span></pre>
</div>
</ion-content>
</ion-view>