<ion-view view-title="06 - Socket Programming">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Socket Programming</h1>
<hr>

<p>Ruby provides two levels of access to network services. At a low level, you can access the basic socket support in the underlying operating system, which allows you to implement clients and servers for both connection-oriented and connectionless protocols.</p>
<p>Ruby also has libraries that provide higher-level access to specific application-level network protocols, such as FTP, HTTP, and so on.</p>
<p>This tutorial gives you understanding on most famous concept in Networking - Socket Programming</p>
<h2>What are Sockets?</h2>
<p>Sockets are the endpoints of a bidirectional communications channel. Sockets may communicate within a process, between processes on the same machine, or between processes on different continents.</p>
<p>Sockets may be implemented over a number of different channel types: Unix domain sockets, TCP, UDP, and so on. The <i>socket</i> library provides specific classes for handling the common transports as well as a generic interface for handling the rest.</p>
<p>Sockets have their own vocabulary:</p>
<table class="table table-bordered">
<tbody><tr><th>Term</th><th>Description</th></tr>
<tr><td>domain</td><td>The family of protocols that will be used as the transport mechanism. These values are constants such as PF_INET, PF_UNIX, PF_X25, and so on.</td></tr>
<tr><td>type</td><td>The type of communications between the two endpoints, typically SOCK_STREAM for connection-oriented protocols and SOCK_DGRAM for connectionless protocols.</td></tr>
<tr><td>protocol</td><td>Typically zero, this may be used to identify a variant of a protocol within a domain and type.</td></tr>
<tr><td>hostname</td><td>The identifier of a network interface:
<ion-list>
<li><p>A string, which can be a host name, a dotted-quad address, or an IPV6 address in colon (and possibly dot) notation</p></li>
<li><p>A string "&lt;broadcast&gt;", which specifies an INADDR_BROADCAST address.</p></li>
<li><p>A zero-length string, which specifies INADDR_ANY, or</p></li>
<li><p>An Integer, interpreted as a binary address in host byte order.</p></li>
</ion-list></td></tr>
<tr><td>port</td><td>Each server listens for clients calling on one or more ports. A port may be a Fixnum port number, a string containing a port number, or the name of a service.</td></tr>
</tbody></table>
<h2>A Simple Client:</h2>
<p>Here we will write a very simple client program which will open a connection to a given port and given host. Ruby class <b>TCPSocket</b> provides <i>open</i> function to open such a socket.</p> 
<p>The <b>TCPSocket.open(hosname, port )</b> opens a TCP connection to <i>hostname</i> on the <i>port</i>.</p>
<p>Once you have a socket open, you can read from it like any IO object. When done, remember to close it, as you would close a file.</p>
<p>The following code is a very simple client that connects to a given host and port, reads any available data from the socket, and then exits:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">require</span><span class="pln"> </span><span class="str">'socket'</span><span class="pln">      </span><span class="com"># Sockets are in standard library</span><span class="pln">

hostname </span><span class="pun">=</span><span class="pln"> </span><span class="str">'localhost'</span><span class="pln">
port </span><span class="pun">=</span><span class="pln"> </span><span class="lit">2000</span><span class="pln">

s </span><span class="pun">=</span><span class="pln"> </span><span class="typ">TCPSocket</span><span class="pun">.</span><span class="pln">open</span><span class="pun">(</span><span class="pln">hostname</span><span class="pun">,</span><span class="pln"> port</span><span class="pun">)</span><span class="pln">

</span><span class="kwd">while</span><span class="pln"> line </span><span class="pun">=</span><span class="pln"> s</span><span class="pun">.</span><span class="pln">gets   </span><span class="com"># Read lines from the socket</span><span class="pln">
  puts line</span><span class="pun">.</span><span class="pln">chop      </span><span class="com"># And print with platform line terminator</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
s</span><span class="pun">.</span><span class="pln">close               </span><span class="com"># Close the socket when done</span></pre>
<h2>A Simple Server:</h2>
<p>To write Internet servers, we use the <b>TCPServer</b> class. A TCPServer object is a factory for TCPSocket objects.</p>
<p>Now call <b>TCPServer.open(hostname, port</b> function to specify a <i>port</i> for your service and create a <b>TCPServer</b> object.</p>
<p>Next, call the <i>accept</i> method of the returned TCPServer object. This method waits until a client connects to the port you specified, and then returns a <i>TCPSocket</i> object that represents the connection to that client.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">require</span><span class="pln"> </span><span class="str">'socket'</span><span class="pln">               </span><span class="com"># Get sockets from stdlib</span><span class="pln">

server </span><span class="pun">=</span><span class="pln"> </span><span class="typ">TCPServer</span><span class="pun">.</span><span class="pln">open</span><span class="pun">(</span><span class="lit">2000</span><span class="pun">)</span><span class="pln">  </span><span class="com"># Socket to listen on port 2000</span><span class="pln">
loop </span><span class="pun">{</span><span class="pln">                         </span><span class="com"># Servers run forever</span><span class="pln">
  client </span><span class="pun">=</span><span class="pln"> server</span><span class="pun">.</span><span class="pln">accept       </span><span class="com"># Wait for a client to connect</span><span class="pln">
  client</span><span class="pun">.</span><span class="pln">puts</span><span class="pun">(</span><span class="typ">Time</span><span class="pun">.</span><span class="pln">now</span><span class="pun">.</span><span class="pln">ctime</span><span class="pun">)</span><span class="pln">  </span><span class="com"># Send the time to the client</span><span class="pln">
  client</span><span class="pun">.</span><span class="pln">puts </span><span class="str">"Closing the connection. Bye!"</span><span class="pln">
  client</span><span class="pun">.</span><span class="pln">close                 </span><span class="com"># Disconnect from the client</span><span class="pln">
</span><span class="pun">}</span></pre>
<p>Now run this server in background and then run above client to see the result.</p>
<h2>Multi-Client TCP Servers:</h2>
<p>Most servers on the Internet are designed to deal with large numbers of clients at any one time.</p>
<p>Ruby's <i>Thread</i> class makes it easy to create a multithreaded server.one that accepts requests and immediately creates a new thread of execution to process the connection while allowing the main program to await more connections:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">require</span><span class="pln"> </span><span class="str">'socket'</span><span class="pln">                </span><span class="com"># Get sockets from stdlib</span><span class="pln">

server </span><span class="pun">=</span><span class="pln"> </span><span class="typ">TCPServer</span><span class="pun">.</span><span class="pln">open</span><span class="pun">(</span><span class="lit">2000</span><span class="pun">)</span><span class="pln">   </span><span class="com"># Socket to listen on port 2000</span><span class="pln">
loop </span><span class="pun">{</span><span class="pln">                          </span><span class="com"># Servers run forever</span><span class="pln">
  </span><span class="typ">Thread</span><span class="pun">.</span><span class="pln">start</span><span class="pun">(</span><span class="pln">server</span><span class="pun">.</span><span class="pln">accept</span><span class="pun">)</span><span class="pln"> </span><span class="kwd">do</span><span class="pln"> </span><span class="pun">|</span><span class="pln">client</span><span class="pun">|</span><span class="pln">
    client</span><span class="pun">.</span><span class="pln">puts</span><span class="pun">(</span><span class="typ">Time</span><span class="pun">.</span><span class="pln">now</span><span class="pun">.</span><span class="pln">ctime</span><span class="pun">)</span><span class="pln"> </span><span class="com"># Send the time to the client</span><span class="pln">
	client</span><span class="pun">.</span><span class="pln">puts </span><span class="str">"Closing the connection. Bye!"</span><span class="pln">
    client</span><span class="pun">.</span><span class="pln">close                </span><span class="com"># Disconnect from the client</span><span class="pln">
  </span><span class="kwd">end</span><span class="pln">
</span><span class="pun">}</span></pre>
<p>In this example you have a permanent loop, and when server.accept responds, a new thread is created and started immediately to handle the connection that has just been accepted, using the connection object passed into the thread. However, the main program immediately loops back and awaits new connections.</p>
<p>Using Ruby threads in this way means the code is portable and will run in the same way on Linux, OS X, and Windows.</p>
<h2>A Tiny Web Browser:</h2>
<p>We can use the socket library to implement any Internet protocol. Here, for example, is code to fetch the content of a web page:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">require</span><span class="pln"> </span><span class="str">'socket'</span><span class="pln">
 
host </span><span class="pun">=</span><span class="pln"> </span><span class="str">'www.tutorialspoint.com'</span><span class="pln">     </span><span class="com"># The web server</span><span class="pln">
port </span><span class="pun">=</span><span class="pln"> </span><span class="lit">80</span><span class="pln">                           </span><span class="com"># Default HTTP port</span><span class="pln">
path </span><span class="pun">=</span><span class="pln"> </span><span class="str">"/index.htm"</span><span class="pln">                 </span><span class="com"># The file we want </span><span class="pln">

</span><span class="com"># This is the HTTP request we send to fetch a file</span><span class="pln">
request </span><span class="pun">=</span><span class="pln"> </span><span class="str">"GET #{path} HTTP/1.0\r\n\r\n"</span><span class="pln">

socket </span><span class="pun">=</span><span class="pln"> </span><span class="typ">TCPSocket</span><span class="pun">.</span><span class="pln">open</span><span class="pun">(</span><span class="pln">host</span><span class="pun">,</span><span class="pln">port</span><span class="pun">)</span><span class="pln">  </span><span class="com"># Connect to server</span><span class="pln">
socket</span><span class="pun">.</span><span class="kwd">print</span><span class="pun">(</span><span class="pln">request</span><span class="pun">)</span><span class="pln">               </span><span class="com"># Send request</span><span class="pln">
response </span><span class="pun">=</span><span class="pln"> socket</span><span class="pun">.</span><span class="pln">read              </span><span class="com"># Read complete response</span><span class="pln">
</span><span class="com"># Split response at first blank line into headers and body</span><span class="pln">
headers</span><span class="pun">,</span><span class="pln">body </span><span class="pun">=</span><span class="pln"> response</span><span class="pun">.</span><span class="pln">split</span><span class="pun">(</span><span class="str">"\r\n\r\n"</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2</span><span class="pun">)</span><span class="pln"> 
</span><span class="kwd">print</span><span class="pln"> body                          </span><span class="com"># And display it</span></pre>
<p>To implement the similar web client, you can use a prebuilt library like <b>Net::HTTP</b> for working with HTTP. Here is code that does the equivalent of the previous code:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">require</span><span class="pln"> </span><span class="str">'net/http'</span><span class="pln">                  </span><span class="com"># The library we need</span><span class="pln">
host </span><span class="pun">=</span><span class="pln"> </span><span class="str">'www.tutorialspoint.com'</span><span class="pln">     </span><span class="com"># The web server</span><span class="pln">
path </span><span class="pun">=</span><span class="pln"> </span><span class="str">'/index.htm'</span><span class="pln">                 </span><span class="com"># The file we want </span><span class="pln">

http </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Net</span><span class="pun">::</span><span class="pln">HTTP</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">host</span><span class="pun">)</span><span class="pln">          </span><span class="com"># Create a connection</span><span class="pln">
headers</span><span class="pun">,</span><span class="pln"> body </span><span class="pun">=</span><span class="pln"> http</span><span class="pun">.</span><span class="kwd">get</span><span class="pun">(</span><span class="pln">path</span><span class="pun">)</span><span class="pln">      </span><span class="com"># Request the file</span><span class="pln">
</span><span class="kwd">if</span><span class="pln"> headers</span><span class="pun">.</span><span class="pln">code </span><span class="pun">==</span><span class="pln"> </span><span class="str">"200"</span><span class="pln">            </span><span class="com"># Check the status code   </span><span class="pln">
  </span><span class="kwd">print</span><span class="pln"> body                        
</span><span class="kwd">else</span><span class="pln">                                
  puts </span><span class="str">"#{headers.code} #{headers.message}"</span><span class="pln"> 
</span><span class="kwd">end</span></pre>
<p>Please check similar libraries  to work with FTP, SMTP, POP, and IMAP protocols.</p>
<h2>Further Readings:</h2>
<p>I have given you a quick start with Socket Programming. It's a big subject, so its recommended to go through the following link to find more detail on <a onclick="window.open('http://www.ruby-doc.org/stdlib/libdoc/socket/rdoc/index.html','_system')" href="#" title="Ruby Socket Library">Ruby Socket Library and Class Methods</a>.</p>
</div>
</ion-content>
</ion-view>
