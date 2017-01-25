<ion-view view-title="CGI Sessions">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>CGI Sessions</h1>
<hr>

   <p>A CGI::Session maintains a persistent state for Web users in a CGI environment. Sessions should be closed after use, as this ensures that their data is written out to the store. When you've permanently finished with a session, you should delete it.</p>
<pre class="prettyprint notranslate tryit">#!/usr/bin/ruby

require 'cgi'
require 'cgi/session'
cgi = CGI.new("html4")

sess = CGI::Session.new( cgi, "session_key" =&gt; "a_test",
                              "prefix" =&gt; "rubysess.")
lastaccess = sess["lastaccess"].to_s
sess["lastaccess"] = Time.now
if cgi['bgcolor'][0] =~ /[a-z]/
  sess["bgcolor"] = cgi['bgcolor']
end

cgi.out{
  cgi.html {
    cgi.body ("bgcolor" =&gt; sess["bgcolor"]){
      "The background of this page"    +
      "changes based on the 'bgcolor'" +
      "each user has in session."      +
      "Last access time: #{lastaccess}"
    }
  }
}
</pre>
<p>Accessing "/cgi-bin/test.cgi?bgcolor=red" would turn the page red for a single user for each successive hit until a new "bgcolor" was specified via the URL.</p>
<p>Session data is stored in a temporary file for each session, and the prefix parameter assigns a string to be prepended to the filename, making your sessions easy to identify on the filesystem of the server.</p>
<p>CGI::Session still lacks many features, such as the capability to store objects other than Strings, session storage across multiple servers</p>
<h2>Class CGI::Session:</h2>
<p>A CGI::Session maintains a persistent state for web users in a CGI environment. Sessions may be memory-resident or may be stored on disk.</p>
<h2>Class methods:</h2>
<p>Ruby class <i>Class CGI::Session</i> provides a single class method to create a session:</p>
<pre class="prettyprint notranslate">CGI::Session::new( cgi[, option])
</pre>
<p>Starts a new CGI session and returns the corresponding CGI::Session object. option may be an option hash specifying one or more of the following:</p>
<ion-list>
<li><p><b>session_key:</b> Key name holding the session ID. Default is _session_id.</p></li>
<li><p><b>session_id:</b>  Unique session ID. Generated automatically</p></li>
<li><p><b>new_session:</b> If true, create a new session id for this session. If false, use an existing session identified by session_id. If omitted, use an existing session if available, otherwise create a new one.</p></li>
<li><p><b>database_manager:</b> Class to use to save sessions; may be CGI::Session::FileStore or CGI::Session::MemoryStore. Default is FileStore.</p></li>
<li><p><b>tmpdir:</b>  For FileStore, directory for session files.</p></li>
<li><p><b>prefix:</b> For FileStore, prefix of session filenames.</p></li>
</ion-list>
<h2>Instance Methods:</h2>
<table class="table table-bordered">
<tbody><tr><th style="width:5%">SN</th><th>Methods with Description</th></tr>
<tr><td>1</td><td><b>[ ]</b><p>Returns the value for the given key. See example above.</p></td></tr>
<tr><td>2</td><td><b>[ ]=</b><p>Sets the value for the given key. See example above.</p></td></tr>
<tr><td>3</td><td><b>delete</b><p>Calls the delete method of the underlying database manager. For FileStore, deletes the physical file containing the session. For MemoryStore, removes the session from memory.</p></td></tr>
<tr><td>4</td><td><b>update</b><p>Calls the update method of the underlying database manager. For FileStore, writes the session data out to disk. Has no effect with MemoryStore.</p></td></tr>
</tbody></table>
</div>
</ion-content>
</ion-view>