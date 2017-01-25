<ion-view view-title="11 - Blocks">
<ion-content style="margin:0 12px">
  <div class="col-md-7 middle-col">
<h1>Blocks</h1>
<hr>
<p>You have seen how Ruby defines methods where you can put number of statements and then you call that method. Similarly, Ruby has a concept of Block.</p>
<ion-list>
<li><p>A block consists of chunks of code. </p></li>
<li><p>You assign a name to a block.</p></li>
<li><p>The code in the block is always enclosed within braces ({}).</p></li>
<li><p>A block is always invoked from a function with the same name as that of the block. This means that if you have a
block with the name <i>test</i>, then you use the function <i>test</i> to invoke this block.</p></li>
<li><p>You invoke a block by using the <i>yield</i> statement.</p></li>
</ion-list>
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">block_name</span><span class="pun">{</span><span class="pln">
   statement1
   statement2
   </span><span class="pun">..........</span><span class="pln">
</span><span class="pun">}</span></pre>
<p>Here, you will learn to invoke a block by using a simple <i>yield</i> statement. You will also learn to use a <i>yield</i> statement with parameters for invoking a block. You will check the sample code with both types of <i>yield</i> statements.</p>
<h2>The <i>yield</i> Statement:</h2>
<p>Let's look at an example of the yield statement:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">def</span><span class="pln"> test
   puts </span><span class="str">"You are in the method"</span><span class="pln">
   </span><span class="kwd">yield</span><span class="pln">
   puts </span><span class="str">"You are again back to the method"</span><span class="pln">
   </span><span class="kwd">yield</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
test </span><span class="pun">{</span><span class="pln">puts </span><span class="str">"You are in the block"</span><span class="pun">}</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">You</span><span class="pln"> are </span><span class="kwd">in</span><span class="pln"> the method
</span><span class="typ">You</span><span class="pln"> are </span><span class="kwd">in</span><span class="pln"> the block
</span><span class="typ">You</span><span class="pln"> are again back to the method
</span><span class="typ">You</span><span class="pln"> are </span><span class="kwd">in</span><span class="pln"> the block</span></pre>
<p>You also can pass parameters with the yield statement. Here is an example:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">def</span><span class="pln"> test
   </span><span class="kwd">yield</span><span class="pln"> </span><span class="lit">5</span><span class="pln">
   puts </span><span class="str">"You are in the method test"</span><span class="pln">
   </span><span class="kwd">yield</span><span class="pln"> </span><span class="lit">100</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
test </span><span class="pun">{|</span><span class="pln">i</span><span class="pun">|</span><span class="pln"> puts </span><span class="str">"You are in the block #{i}"</span><span class="pun">}</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">You</span><span class="pln"> are </span><span class="kwd">in</span><span class="pln"> the block </span><span class="lit">5</span><span class="pln">
</span><span class="typ">You</span><span class="pln"> are </span><span class="kwd">in</span><span class="pln"> the method test
</span><span class="typ">You</span><span class="pln"> are </span><span class="kwd">in</span><span class="pln"> the block </span><span class="lit">100</span></pre>
<p>Here, the <i>yield</i> statement is written followed by parameters. You can even pass more than one parameter. In the block, you place a variable between two vertical lines (||) to accept the parameters. Therefore, in the preceding code, the yield 5 statement passes the value 5 as a parameter to the test block.</p>
<p>Now, look at the following statement:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">test </span><span class="pun">{|</span><span class="pln">i</span><span class="pun">|</span><span class="pln"> puts </span><span class="str">"You are in the block #{i}"</span><span class="pun">}</span></pre>
<p>Here, the value 5 is received in the variable i. Now, observe the following puts statement:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">puts </span><span class="str">"You are in the block #{i}"</span></pre>
<p>The output of this puts statement is:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">You</span><span class="pln"> are </span><span class="kwd">in</span><span class="pln"> the block </span><span class="lit">5</span></pre>
<p>If you want to pass more than one parameters, then the <i>yield</i> statement becomes:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">yield</span><span class="pln"> a</span><span class="pun">,</span><span class="pln"> b</span></pre>
<p>and the block is:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">test </span><span class="pun">{|</span><span class="pln">a</span><span class="pun">,</span><span class="pln"> b</span><span class="pun">|</span><span class="pln"> statement</span><span class="pun">}</span></pre>
<p>The parameters will be separated by commas.</p>
<h2>Blocks and Methods:</h2>
<p>You have seen how a block and a method can be associated with each other. You normally invoke a block by using the yield statement from a method that has the same name as that of the block. Therefore, you write:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">def</span><span class="pln"> test
  </span><span class="kwd">yield</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
test</span><span class="pun">{</span><span class="pln"> puts </span><span class="str">"Hello world"</span><span class="pun">}</span></pre>
<p>This example is the simplest way to implement a block. You call the test block by using the <i>yield</i> statement.</p>
<p>But if the last argument of a method is preceded by &amp;, then you can pass a block to this method and this block will be assigned to the last parameter. In case both * and &amp; are present in the argument list, &amp; should come later.</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">def</span><span class="pln"> test</span><span class="pun">(&amp;</span><span class="pln">block</span><span class="pun">)</span><span class="pln">
   block</span><span class="pun">.</span><span class="pln">call
</span><span class="kwd">end</span><span class="pln">
test </span><span class="pun">{</span><span class="pln"> puts </span><span class="str">"Hello World!"</span><span class="pun">}</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Hello</span><span class="pln"> </span><span class="typ">World</span><span class="pun">!</span></pre>
<h2>BEGIN and END Blocks</h2>
<p>Every Ruby source file can declare blocks of code to be run as the file is being loaded (the BEGIN blocks) and after the program has finished executing (the END blocks).</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">BEGIN</span><span class="pln"> </span><span class="pun">{</span><span class="pln"> 
  </span><span class="com"># BEGIN block code </span><span class="pln">
  puts </span><span class="str">"BEGIN code block"</span><span class="pln">
</span><span class="pun">}</span><span class="pln"> 

</span><span class="kwd">END</span><span class="pln"> </span><span class="pun">{</span><span class="pln"> 
  </span><span class="com"># END block code </span><span class="pln">
  puts </span><span class="str">"END code block"</span><span class="pln">
</span><span class="pun">}</span><span class="pln">
  </span><span class="com"># MAIN block code </span><span class="pln">
puts </span><span class="str">"MAIN code block"</span></pre>
<p>A program may include multiple BEGIN and END blocks. BEGIN blocks are executed in the order they are encountered. END blocks are executed in reverse order. When executed, above program produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">BEGIN</span><span class="pln"> code block
MAIN code block
</span><span class="kwd">END</span><span class="pln"> code block</span></pre>
</div>
 </ion-content>
</ion-view>
