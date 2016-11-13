<ion-view view-title="20 - Exceptions">
  <ion-content style="margin:0 12px">
  <div class="col-md-7 middle-col">
<h1>Exceptions</h1>
<hr>
<p>The execution and the exception always go together. If you are opening a file, which does not exist, then if you did not handle this situation properly, then your program is considered to be of bad quality.</p>
<p>The program stops if an exception occurs. So exceptions are used to handle various type of errors, which may occur during a program execution and take appropriate action instead of halting program completely.</p>
<p>Ruby provide a nice mechanism to handle exceptions. We enclose the code that could raise an exception in a <i>begin/end</i> block and use <i>rescue</i> clauses to tell Ruby the types of exceptions we want to handle.</p>
<h2>Syntax :</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">begin</span><span class="pln">  
</span><span class="com"># -  </span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln"> </span><span class="typ">OneTypeOfException</span><span class="pln">  
</span><span class="com"># -  </span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln"> </span><span class="typ">AnotherTypeOfException</span><span class="pln">  
</span><span class="com"># -  </span><span class="pln">
</span><span class="kwd">else</span><span class="pln">  
</span><span class="com"># Other exceptions</span><span class="pln">
</span><span class="kwd">ensure</span><span class="pln">
</span><span class="com"># Always will be executed</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>Everything from <i>begin</i> to <i>rescue</i> is protected. If an exception occurs during the execution of this block of code, control is passed to the block between <i>rescue</i> and <i>end</i>.</p>
<p>For each <i>rescue</i> clause in the <i>begin</i> block, Ruby compares the raised Exception against each of the parameters in turn. The match will succeed if the exception named in the rescue clause is the same as the type of the currently thrown exception, or is a superclass of that exception.</p>
<p>In an event that an exception does not match any of the error types specified, we are allowed to use an <i>else</i> clause after all the <i>rescue</i> clauses.</p>
<h2>Example:</h2>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">begin</span><span class="pln">
   file </span><span class="pun">=</span><span class="pln"> open</span><span class="pun">(</span><span class="str">"/unexistant_file"</span><span class="pun">)</span><span class="pln">
   </span><span class="kwd">if</span><span class="pln"> file
      puts </span><span class="str">"File opened successfully"</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln">
      file </span><span class="pun">=</span><span class="pln"> STDIN
</span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> file</span><span class="pun">,</span><span class="pln"> </span><span class="str">"=="</span><span class="pun">,</span><span class="pln"> STDIN</span><span class="pun">,</span><span class="pln"> </span><span class="str">"\n"</span></pre>
<p>This will produce the following result. You can see that <i>STDIN</i> is substituted to <i>file</i> because <i>open</i> failed.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#&lt;IO:0xb7d16f84&gt;==#&lt;IO:0xb7d16f84&gt;</span></pre>
<h2>Using <i>retry</i> Statement:</h2>
<p>You can capture an exception using <i>rescue</i> block and then use <i>retry</i> statement to execute <i>begin</i> block from the beginning.</p> 
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">begin</span><span class="pln">
    </span><span class="com"># Exceptions raised by this code will </span><span class="pln">
	</span><span class="com"># be caught by the following rescue clause</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln">
    </span><span class="com"># This block will capture all types of exceptions</span><span class="pln">
    </span><span class="kwd">retry</span><span class="pln">  </span><span class="com"># This will move control to the beginning of </span><i><span class="com">begin</span></i><span class="pln">
</span><span class="kwd">end</span></pre>
<h2>Example:</h2>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">begin</span><span class="pln">
   file </span><span class="pun">=</span><span class="pln"> open</span><span class="pun">(</span><span class="str">"/unexistant_file"</span><span class="pun">)</span><span class="pln">
   </span><span class="kwd">if</span><span class="pln"> file
      puts </span><span class="str">"File opened successfully"</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln">
   fname </span><span class="pun">=</span><span class="pln"> </span><span class="str">"existant_file"</span><span class="pln">
   </span><span class="kwd">retry</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>The following is the flow of the process:</p>
<ul class="list">
<li><p>an exception occurred at open</p></li>
<li><p>went to rescue. fname was re-assigned</p></li>
<li><p>by retry went to the beginning of the begin</p></li>
<li><p>this time file opens successfully</p></li>
<li><p>continued the essential process.</p></li>
</ul>
<p><b>NOTE:</b> Notice that if the file of re-substituted name does not exist this example code retries infinitely. Be careful if you use <i>retry</i> for an exception process.</p>
<h2>Using <i>raise</i> Statement:</h2>
<p>You can use <i>raise</i> statement to raise an exception. The following method raises an exception whenever it's called. It's second message will be printed. Program</p>
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">raise</span><span class="pln"> 

OR

</span><span class="kwd">raise</span><span class="pln"> </span><span class="str">"Error Message"</span><span class="pln"> 

OR

</span><span class="kwd">raise</span><span class="pln"> </span><span class="typ">ExceptionType</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Error Message"</span><span class="pln">

OR

</span><span class="kwd">raise</span><span class="pln"> </span><span class="typ">ExceptionType</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Error Message"</span><span class="pln"> condition
</span></pre>
<p>The first form simply reraises the current exception (or a RuntimeError if there is no current exception). This is used in exception handlers that need to intercept an exception before passing it on.</p>
<p>The second form creates a new <i>RuntimeError</i> exception, setting its message to the given string. This exception is then raised up the call stack.</p>
<p>The third form uses the first argument to create an exception and then sets the associated message to the second argument.</p>
<p>The fourth form  is similar to third form but you can add any conditional statement like <i>unless</i> to raise an exception.</p>
<h2>Example:</h2>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">begin</span><span class="pln">  
    puts </span><span class="str">'I am before the raise.'</span><span class="pln">  
    </span><span class="kwd">raise</span><span class="pln"> </span><span class="str">'An error has occurred.'</span><span class="pln">  
    puts </span><span class="str">'I am after the raise.'</span><span class="pln">  
</span><span class="kwd">rescue</span><span class="pln">  
    puts </span><span class="str">'I am rescued.'</span><span class="pln">  
</span><span class="kwd">end</span><span class="pln">  
puts </span><span class="str">'I am after the begin block.'</span><span class="pln">  </span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">I am before the </span><span class="kwd">raise</span><span class="pun">.</span><span class="pln">  
I am rescued</span><span class="pun">.</span><span class="pln">  
I am after the </span><span class="kwd">begin</span><span class="pln"> block</span><span class="pun">.</span><span class="pln">  </span></pre>
<p>One more example showing usage of <i>raise</i>:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">begin</span><span class="pln">  
  </span><span class="kwd">raise</span><span class="pln"> </span><span class="str">'A test exception.'</span><span class="pln">  
</span><span class="kwd">rescue</span><span class="pln"> </span><span class="typ">Exception</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> e  
  puts e</span><span class="pun">.</span><span class="pln">message  
  puts e</span><span class="pun">.</span><span class="pln">backtrace</span><span class="pun">.</span><span class="pln">inspect  
</span><span class="kwd">end</span><span class="pln">  </span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">A test exception</span><span class="pun">.</span><span class="pln">
</span><span class="pun">[</span><span class="str">"main.rb:4"</span><span class="pun">]</span></pre>
<h2>Using <i>ensure</i> Statement:</h2>
<p>Sometimes, you need to guarantee that some processing is done at the end of a block of code, regardless of whether an exception was raised. For example, you may have a file open on entry to the block and you need to make sure it gets closed as the block exits.</p>
<p>The <i>ensure</i> clause does just this. ensure goes after the last rescue clause and contains a chunk of code that will always be executed as the block terminates. It doesn't matter if the block exits normally, if it raises and rescues an exception, or if it is terminated by an uncaught exception, the <i>ensure</i> block will get run.</p>
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">begin</span><span class="pln"> 
   </span><span class="com">#.. process </span><span class="pln">
   </span><span class="com">#..raise exception</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln"> 
   </span><span class="com">#.. handle error </span><span class="pln">
</span><span class="kwd">ensure</span><span class="pln"> 
   </span><span class="com">#.. finally ensure execution</span><span class="pln">
   </span><span class="com">#.. This will always execute.</span><span class="pln">
</span><span class="kwd">end</span></pre>
<h2>Example:</h2>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="kwd">begin</span><span class="pln">
  </span><span class="kwd">raise</span><span class="pln"> </span><span class="str">'A test exception.'</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln"> </span><span class="typ">Exception</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> e
  puts e</span><span class="pun">.</span><span class="pln">message
  puts e</span><span class="pun">.</span><span class="pln">backtrace</span><span class="pun">.</span><span class="pln">inspect
</span><span class="kwd">ensure</span><span class="pln">
  puts </span><span class="str">"Ensuring execution"</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">A test exception</span><span class="pun">.</span><span class="pln">
</span><span class="pun">[</span><span class="str">"main.rb:4"</span><span class="pun">]</span><span class="pln">
</span><span class="typ">Ensuring</span><span class="pln"> execution</span></pre>
<h2>Using <i>else</i> Statement:</h2>
<p>If the <i>else</i> clause is present, it goes after the <i>rescue</i> clauses and before any <i>ensure</i>.</p>
<p>The body of an <i>else</i> clause is executed only if no exceptions are raised by the main body of code.</p>
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">begin</span><span class="pln"> 
   </span><span class="com">#.. process </span><span class="pln">
   </span><span class="com">#..raise exception</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln"> 
   </span><span class="com"># .. handle error</span><span class="pln">
</span><span class="kwd">else</span><span class="pln">
   </span><span class="com">#.. executes if there is no exception</span><span class="pln">
</span><span class="kwd">ensure</span><span class="pln"> 
   </span><span class="com">#.. finally ensure execution</span><span class="pln">
   </span><span class="com">#.. This will always execute.</span><span class="pln">
</span><span class="kwd">end</span></pre>
<h2>Example:</h2>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="kwd">begin</span><span class="pln">
 </span><span class="com"># raise 'A test exception.'</span><span class="pln">
 puts </span><span class="str">"I'm not raising exception"</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln"> </span><span class="typ">Exception</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> e
  puts e</span><span class="pun">.</span><span class="pln">message
  puts e</span><span class="pun">.</span><span class="pln">backtrace</span><span class="pun">.</span><span class="pln">inspect
</span><span class="kwd">else</span><span class="pln">
   puts </span><span class="str">"Congratulations-- no errors!"</span><span class="pln">
</span><span class="kwd">ensure</span><span class="pln">
  puts </span><span class="str">"Ensuring execution"</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">I</span><span class="str">'m not raising exception
Congratulations-- no errors!
Ensuring execution</span></pre>
<p>Raised error message can be captured using $! variable.</p>
<h2>Catch and Throw:</h2>
<p>While the exception mechanism of raise and rescue is great for abandoning execution when things go wrong, it's sometimes nice to be able to jump out of some deeply nested construct during normal processing. This is where catch and throw come in handy.</p>
<p>The <i>catch</i> defines a block that is labeled with the given name (which may be a Symbol or a String). The block is executed normally until a throw is encountered.</p>
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">throw</span><span class="pln"> </span><span class="pun">:</span><span class="pln">lablename
</span><span class="com">#.. this will not be executed</span><span class="pln">
</span><span class="kwd">catch</span><span class="pln"> </span><span class="pun">:</span><span class="pln">lablename </span><span class="kwd">do</span><span class="pln">
</span><span class="com">#.. matching catch will be executed after a throw is encountered.</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

OR

</span><span class="kwd">throw</span><span class="pln"> </span><span class="pun">:</span><span class="pln">lablename condition
</span><span class="com">#.. this will not be executed</span><span class="pln">
</span><span class="kwd">catch</span><span class="pln"> </span><span class="pun">:</span><span class="pln">lablename </span><span class="kwd">do</span><span class="pln">
</span><span class="com">#.. matching catch will be executed after a throw is encountered.</span><span class="pln">
</span><span class="kwd">end</span></pre>
<h2>Example:</h2>
<p>The following example uses a throw to terminate interaction with the user if '!' is typed in response to any prompt.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">def</span><span class="pln"> promptAndGet</span><span class="pun">(</span><span class="pln">prompt</span><span class="pun">)</span><span class="pln">
   </span><span class="kwd">print</span><span class="pln"> prompt
   res </span><span class="pun">=</span><span class="pln"> readline</span><span class="pun">.</span><span class="pln">chomp
   </span><span class="kwd">throw</span><span class="pln"> </span><span class="pun">:</span><span class="pln">quitRequested </span><span class="kwd">if</span><span class="pln"> res </span><span class="pun">==</span><span class="pln"> </span><span class="str">"!"</span><span class="pln">
   </span><span class="kwd">return</span><span class="pln"> res
</span><span class="kwd">end</span><span class="pln">

</span><span class="kwd">catch</span><span class="pln"> </span><span class="pun">:</span><span class="pln">quitRequested </span><span class="kwd">do</span><span class="pln">
   name </span><span class="pun">=</span><span class="pln"> promptAndGet</span><span class="pun">(</span><span class="str">"Name: "</span><span class="pun">)</span><span class="pln">
   age </span><span class="pun">=</span><span class="pln"> promptAndGet</span><span class="pun">(</span><span class="str">"Age: "</span><span class="pun">)</span><span class="pln">
   sex </span><span class="pun">=</span><span class="pln"> promptAndGet</span><span class="pun">(</span><span class="str">"Sex: "</span><span class="pun">)</span><span class="pln">
   </span><span class="com"># ..</span><span class="pln">
   </span><span class="com"># process information</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
promptAndGet</span><span class="pun">(</span><span class="str">"Name:"</span><span class="pun">)</span></pre>
<p>You should try above program on your machine because it needs manual interaction. This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Name</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Ruby</span><span class="pln"> on </span><span class="typ">Rails</span><span class="pln">
</span><span class="typ">Age</span><span class="pun">:</span><span class="pln"> </span><span class="lit">3</span><span class="pln">
</span><span class="typ">Sex</span><span class="pun">:</span><span class="pln"> </span><span class="pun">!</span><span class="pln">
</span><span class="typ">Name</span><span class="pun">:</span><span class="typ">Just</span><span class="pln"> </span><span class="typ">Ruby</span></pre>
<h2>Class Exception:</h2>
<p>Ruby's standard classes and modules raise exceptions. All the exception classes form a hierarchy, with the class Exception at the top. The next level contains seven different types:</p>
<ion-list>
<li><p>Interrupt</p></li>
<li><p>NoMemoryError</p></li>
<li><p>SignalException</p></li>
<li><p>ScriptError</p></li>
<li><p>StandardError</p></li>
<li><p>SystemExit</p></li>
</ion-list>
<p>There is one other exception at this level, Fatal, but the Ruby interpreter only uses this internally.</p>
<p>Both ScriptError and StandardError have a number of subclasses, but we do not need to go into the details here. The important thing is that if we create our own exception classes, they need to be subclasses of either class Exception or one of its descendants.</p>
<p>Let's look at an example:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">FileSaveError</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln"> </span><span class="typ">StandardError</span><span class="pln">
   attr_reader </span><span class="pun">:</span><span class="pln">reason
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">reason</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@reason</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> reason
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>Now, look at the following example, which will use this exception:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">File</span><span class="pun">.</span><span class="pln">open</span><span class="pun">(</span><span class="pln">path</span><span class="pun">,</span><span class="pln"> </span><span class="str">"w"</span><span class="pun">)</span><span class="pln"> </span><span class="kwd">do</span><span class="pln"> </span><span class="pun">|</span><span class="pln">file</span><span class="pun">|</span><span class="pln">
</span><span class="kwd">begin</span><span class="pln">
    </span><span class="com"># Write out the data ...</span><span class="pln">
</span><span class="kwd">rescue</span><span class="pln">
    </span><span class="com"># Something went wrong!</span><span class="pln">
    </span><span class="kwd">raise</span><span class="pln"> </span><span class="typ">FileSaveError</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">$</span><span class="pun">!)</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>The important line here is raise <i>FileSaveError.new($!)</i>. We call raise to signal that an exception has occurred, passing it a new instance of FileSaveError, with the reason being that specific exception caused the writing of the data to fail.</p>
</div>
 </ion-content>
</ion-view>
