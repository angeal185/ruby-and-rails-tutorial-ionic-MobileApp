<ion-view view-title="08 - Web Services">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Web Services with Ruby - SOAP4R</h1>
<hr>
<h2>What is SOAP ?</h2>
<p>The Simple Object Access Protocol (SOAP) is a cross-platform and language-independent RPC protocol based on XML and, usually (but not necessarily) HTTP.</p>
<p>It uses XML to encode the information that makes the remote procedure call, and HTTP to transport that information across a network from clients to servers and vice versa.</p>
<p>SOAP has several advantages over other technologies like COM, CORBA etc: for example, its relatively cheap deployment and debugging costs, its extensibility and ease-of-use, and the existence of several implementations for different languages and platforms.</p>
<!-- <p>Please refer to out simple tutorial  to understand <a href="/soap/" title="SOAP Tutorial">SOAP</a>.</p> -->
<p>This tutorial will make you familiar to the SOAP implementation for Ruby (SOAP4R). This is a basic tutorial, so if you need a deep detail, you would need to refer other resources.</p>
<h2>Installing SOAP4R:</h2>
<p>SOAP4R is the SOAP implementation for Ruby developed by Hiroshi Nakamura and can be downloaded from:</p>
<p><b>NOTE:</b> There may be a great chance that you already have installed this component.</p>
<pre class="prettyprint notranslate prettyprinted"><a href="#" onclick="window.open('http://raa.ruby-lang.org/project/soap4r/','_system')"><span class="typ">Download</span><span class="pln"> SOAP</span></a>
</pre>
<p>If you are aware of <b>gem</b> utility then you can use following command to install SOAP4R and related packages.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">$ gem install soap4r </span><span class="pun">--</span><span class="pln">include</span><span class="pun">-</span><span class="pln">dependencies</span></pre>
<p>If you are working on Windows then you need to download a zipped file from the above location and need to install it using standard installation method by running <i>ruby install.rb</i>.</p>
<h2>Writing SOAP4R Servers:</h2>
<p>SOAP4R supports two different types of servers:</p>
<ion-list>
<li><p>CGI/FastCGI based (SOAP::RPC::CGIStub)</p></li>
<li><p>Standalone (SOAP::RPC:StandaloneServer)</p></li>
</ion-list>
<p>This tutorial will give deatail on writing a stand alone server. There are following steps involved in writing a SOAP server:</p>
<h2>Step 1 - Inherit SOAP::RPC::StandaloneServer Class:</h2>
<p>To implement your own stand alone server you need to write a new class which will be child of <i>SOAP::StandaloneServer</i> as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">MyServer</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln"> SOAP</span><span class="pun">::</span><span class="pln">RPC</span><span class="pun">::</span><span class="typ">StandaloneServer</span><span class="pln">
  </span><span class="pun">...............</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p><b>NOTE:</b> If you want to write a FastCGI based server then you need to take <i>SOAP::RPC::CGIStub</i> as parent class, rest of the procedure will remain same.</p>
<h2>Step 2 - Define Handler Methods:</h2>
<p>Second step is to write your Web Services methods, which  you would like to expose to the outside world.</p>
<p>They can be written as simple Ruby methods. For example, let's write two methods to add two numbers and divide two numbers:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">MyServer</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln"> SOAP</span><span class="pun">::</span><span class="pln">RPC</span><span class="pun">::</span><span class="typ">StandaloneServer</span><span class="pln">
   </span><span class="pun">...............</span><span class="pln">

   </span><span class="com"># Handler methods</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> add</span><span class="pun">(</span><span class="pln">a</span><span class="pun">,</span><span class="pln"> b</span><span class="pun">)</span><span class="pln">
      </span><span class="kwd">return</span><span class="pln"> a </span><span class="pun">+</span><span class="pln"> b
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> div</span><span class="pun">(</span><span class="pln">a</span><span class="pun">,</span><span class="pln"> b</span><span class="pun">)</span><span class="pln"> 
      </span><span class="kwd">return</span><span class="pln"> a </span><span class="pun">/</span><span class="pln"> b 
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span></pre>
<h2>Step 3 - Expose Handler Methods:</h2>
<p>Next step is to add our defined methods to our server. The <i>initialize</i> method is used to expose service methods with one of the two following methods:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">MyServer</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln"> SOAP</span><span class="pun">::</span><span class="pln">RPC</span><span class="pun">::</span><span class="typ">StandaloneServer</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(*</span><span class="pln">args</span><span class="pun">)</span><span class="pln">
      add_method</span><span class="pun">(</span><span class="pln">receiver</span><span class="pun">,</span><span class="pln"> methodName</span><span class="pun">,</span><span class="pln"> </span><span class="pun">*</span><span class="pln">paramArg</span><span class="pun">)</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>Here is the description of the parameters:</p>
<table class="table table-bordered">
<tbody><tr><th>Paramter</th><th>Description</th></tr>
<tr><td><b>receiver</b></td><td>The object that contains the methodName method. you define the service methods in the same class as the methodDef method, this parameter is <i>self</i>.</td></tr>
<tr><td><b>methodName</b></td><td>The name of the method that is called due to a RPC request.</td></tr>
<tr><td><b>paramArg</b></td><td>Specifies, when given, the parameter names and parameter modes.</td></tr>
</tbody></table>
<p>To understand the usage of <i>inout</i> or <i>out</i> parameters, consider the following service method that takes two parameters (inParam and inoutParam), returns one normal return value (retVal) and two further parameters: <i>inoutParam</i> and <i>outParam</i>:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">def</span><span class="pln"> aMeth</span><span class="pun">(</span><span class="pln">inParam</span><span class="pun">,</span><span class="pln"> inoutParam</span><span class="pun">)</span><span class="pln">
   retVal </span><span class="pun">=</span><span class="pln"> inParam </span><span class="pun">+</span><span class="pln"> inoutParam
   outParam </span><span class="pun">=</span><span class="pln"> inParam </span><span class="pun">.</span><span class="pln"> inoutParam
   inoutParam </span><span class="pun">=</span><span class="pln"> inParam </span><span class="pun">*</span><span class="pln"> inoutParam
   </span><span class="kwd">return</span><span class="pln"> retVal</span><span class="pun">,</span><span class="pln"> inoutParam</span><span class="pun">,</span><span class="pln"> outParam
</span><span class="kwd">end</span></pre>
<p>Now, we can expose this method as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">add_method</span><span class="pun">(</span><span class="kwd">self</span><span class="pun">,</span><span class="pln"> </span><span class="str">'aMeth'</span><span class="pun">,</span><span class="pln"> </span><span class="pun">[</span><span class="pln">
    </span><span class="pun">%</span><span class="pln">w</span><span class="pun">(</span><span class="kwd">in</span><span class="pln"> inParam</span><span class="pun">),</span><span class="pln">
    </span><span class="pun">%</span><span class="pln">w</span><span class="pun">(</span><span class="pln">inout inoutParam</span><span class="pun">),</span><span class="pln">
    </span><span class="pun">%</span><span class="pln">w</span><span class="pun">(</span><span class="kwd">out</span><span class="pln"> outParam</span><span class="pun">),</span><span class="pln">
    </span><span class="pun">%</span><span class="pln">w</span><span class="pun">(</span><span class="pln">retval </span><span class="kwd">return</span><span class="pun">)</span><span class="pln">
</span><span class="pun">])</span></pre>
<h2>Step 4 - Start the Server:</h2>
<p>The final step is to start your server by instantiating one instance of the derived class and calling <b>start</b> method.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">myServer </span><span class="pun">=</span><span class="pln"> </span><span class="typ">MyServer</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">'ServerName'</span><span class="pun">,</span><span class="pln">
                        </span><span class="str">'urn:ruby:ServiceName'</span><span class="pun">,</span><span class="pln"> hostname</span><span class="pun">,</span><span class="pln"> port</span><span class="pun">)</span><span class="pln">

myServer</span><span class="pun">.</span><span class="pln">start</span></pre>
<p>Here is the description of required parameters :</p>
<table class="table table-bordered">
<tbody><tr><th>Paramter</th><th>Description</th></tr>
<tr><td><b>ServerName</b></td><td>A server name, you can give what you like most.</td></tr>
<tr><td><b>urn:ruby:ServiceName</b></td><td>Here <i>urn:ruby</i> is constant but you can give a unique <i>ServiceName</i> name for this server.</td></tr>
<tr><td><b>hostname</b></td><td>Specifies the hostname on which this server will listen.</td></tr>
<tr><td><b>port</b></td><td>An available port number to be used for the web service.</td></tr>
</tbody></table>
<h2>Example:</h2>
<p>Now, using above steps, let us write one standalone server:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">require</span><span class="pln"> </span><span class="str">"soap/rpc/standaloneserver"</span><span class="pln">

</span><span class="kwd">begin</span><span class="pln">
   </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">MyServer</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln"> SOAP</span><span class="pun">::</span><span class="pln">RPC</span><span class="pun">::</span><span class="typ">StandaloneServer</span><span class="pln">

      </span><span class="com"># Expose our services</span><span class="pln">
      </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(*</span><span class="pln">args</span><span class="pun">)</span><span class="pln">
         add_method</span><span class="pun">(</span><span class="kwd">self</span><span class="pun">,</span><span class="pln"> </span><span class="str">'add'</span><span class="pun">,</span><span class="pln"> </span><span class="str">'a'</span><span class="pun">,</span><span class="pln"> </span><span class="str">'b'</span><span class="pun">)</span><span class="pln">
         add_method</span><span class="pun">(</span><span class="kwd">self</span><span class="pun">,</span><span class="pln"> </span><span class="str">'div'</span><span class="pun">,</span><span class="pln"> </span><span class="str">'a'</span><span class="pun">,</span><span class="pln"> </span><span class="str">'b'</span><span class="pun">)</span><span class="pln">
      </span><span class="kwd">end</span><span class="pln">

      </span><span class="com"># Handler methods</span><span class="pln">
      </span><span class="kwd">def</span><span class="pln"> add</span><span class="pun">(</span><span class="pln">a</span><span class="pun">,</span><span class="pln"> b</span><span class="pun">)</span><span class="pln">
         </span><span class="kwd">return</span><span class="pln"> a </span><span class="pun">+</span><span class="pln"> b
      </span><span class="kwd">end</span><span class="pln">
      </span><span class="kwd">def</span><span class="pln"> div</span><span class="pun">(</span><span class="pln">a</span><span class="pun">,</span><span class="pln"> b</span><span class="pun">)</span><span class="pln"> 
         </span><span class="kwd">return</span><span class="pln"> a </span><span class="pun">/</span><span class="pln"> b 
      </span><span class="kwd">end</span><span class="pln">
  </span><span class="kwd">end</span><span class="pln">
  server </span><span class="pun">=</span><span class="pln"> </span><span class="typ">MyServer</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"MyServer"</span><span class="pun">,</span><span class="pln"> 
            </span><span class="str">'urn:ruby:calculation'</span><span class="pun">,</span><span class="pln"> </span><span class="str">'localhost'</span><span class="pun">,</span><span class="pln"> </span><span class="lit">8080</span><span class="pun">)</span><span class="pln">
  trap</span><span class="pun">(</span><span class="str">'INT){
     server.shutdown
  }
  server.start
rescue =&gt; err
  puts err.message
end</span></pre>
<p>When executed, this server application starts a standalone SOAP server on <i>localhost</i> and listens for requests on <i>port</i> 8080. It exposes one service methods, <i>add</i> and <i>div</i>, which takes two parameters and return the result.</p>
<p>Now, you can run this server in background as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">$ ruby </span><span class="typ">MyServer</span><span class="pun">.</span><span class="pln">rb</span><span class="pun">&amp;</span></pre>
<h2>Writing SOAP4R Clients:</h2>
<p>The <i>SOAP::RPC::Driver</i> class provides support for writing SOAP client applications. This tutorial will describe this class and demonstrate its usage on the basis of an application.</p>
<p>Following is the bare minimum information you would need to call a SOAP service:</p>
<ion-list>
<li><p>The URL of the SOAP service (SOAP Endpoint URL)</p></li>
<li><p>The namespace of the service methods (Method Namespace URI)</p></li>
<li><p>The names of the service methods and their parameters</p></li>
</ion-list>
<p>Now, we will write a SOAP client which would call service methods defined in above example, named <i>add</i> and <i>div</i>.</p>
<p>Here are the main steps to create a SOAP client:</p>
<h2>Step 1 - Create a SOAP Driver Instance:</h2>
<p>We create an instance of <i>SOAP::RPC::Driver</i> by calling its new method as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">SOAP</span><span class="pun">::</span><span class="pln">RPC</span><span class="pun">::</span><span class="typ">Driver</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">endPoint</span><span class="pun">,</span><span class="pln"> nameSpace</span><span class="pun">,</span><span class="pln"> soapAction</span><span class="pun">)</span></pre>
<p>Here is the description of required parameters :</p>
<table class="table table-bordered">
<tbody><tr><th>Paramter</th><th>Description</th></tr>
<tr><td><b>endPoint</b></td><td>URL of the SOAP server to connect with.</td></tr>
<tr><td><b>nameSpace</b></td><td> The namespace to use for all RPCs done with this SOAP::RPC::Driver object.</td></tr>
<tr><td><b>soapAction</b></td><td>A value for the SOAPAction field of the HTTP header. If <i>nil</i> this defaults to the empty string ""</td></tr>
</tbody></table>
<h2>Step 2 - Add Service Methods:</h2>
<p>To add a SOAP service method to a <i>SOAP::RPC::Driver</i> we can call the following method using <i>SOAP::RPC::Driver</i> instance:</p>
<pre class="prettyprint notranslate prettyprinted"><i><span class="pln">driver</span></i><span class="pun">.</span><span class="pln">add_method</span><span class="pun">(</span><span class="pln">name</span><span class="pun">,</span><span class="pln"> </span><span class="pun">*</span><span class="pln">paramArg</span><span class="pun">)</span></pre>
<p>Here is the description of the parameters:</p>
<table class="table table-bordered">
<tbody><tr><th>Paramter</th><th>Description</th></tr>
<tr><td><b>name</b></td><td>The name of the remote web service method.</td></tr>
<tr><td><b>paramArg</b></td><td> Specifies the names of the remote procedures' parameters.</td></tr>
</tbody></table>
<h2>Step 3 - Invoke SOAP service:</h2>
<p>The final step is to invoice SOAP service using <i>SOAP::RPC::Driver</i> instance as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">result </span><span class="pun">=</span><span class="pln"> driver</span><span class="pun">.</span><i><span class="pln">serviceMethod</span></i><span class="pun">(</span><span class="pln">paramArg</span><span class="pun">...)</span></pre>
<p>Here <i>serviceMethod</i> is the actual web service method and <i>paramArg...</i> is the list parameters required to pass in the service method.</p>
<h2>Example:</h2>
<p>Based on the above steps, we will write a SOAP client as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'soap/rpc/driver'</span><span class="pln">

NAMESPACE </span><span class="pun">=</span><span class="pln"> </span><span class="str">'urn:ruby:calculation'</span><span class="pln">
URL </span><span class="pun">=</span><span class="pln"> </span><span class="str">'http://localhost:8080/'</span><span class="pln">

</span><span class="kwd">begin</span><span class="pln">
   driver </span><span class="pun">=</span><span class="pln"> SOAP</span><span class="pun">::</span><span class="pln">RPC</span><span class="pun">::</span><span class="typ">Driver</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">URL</span><span class="pun">,</span><span class="pln"> NAMESPACE</span><span class="pun">)</span><span class="pln">
   
   </span><span class="com"># Add remote sevice methods</span><span class="pln">
   driver</span><span class="pun">.</span><span class="pln">add_method</span><span class="pun">(</span><span class="str">'add'</span><span class="pun">,</span><span class="pln"> </span><span class="str">'a'</span><span class="pun">,</span><span class="pln"> </span><span class="str">'b'</span><span class="pun">)</span><span class="pln">

   </span><span class="com"># Call remote service methods</span><span class="pln">
   puts driver</span><span class="pun">.</span><span class="pln">add</span><span class="pun">(</span><span class="lit">20</span><span class="pun">,</span><span class="pln"> </span><span class="lit">30</span><span class="pun">)</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> err
   puts err</span><span class="pun">.</span><span class="pln">message
</span><span class="kwd">end</span></pre>
<h2>Further Readings:</h2>
<p>I have explained you just very basic concepts of Web Services with Ruby. If you want to drill down it further, then there is following link to find more details on <a href="#" onclick="window.open('http://www.ruby-doc.org/stdlib/libdoc/soap/rdoc/index.html','_system')" title="Web Services with Ruby">Web Services with Ruby</a>.</p>
</div>
</ion-content>
</ion-view>
