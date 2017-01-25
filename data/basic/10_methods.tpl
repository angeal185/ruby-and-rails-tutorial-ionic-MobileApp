<ion-view view-title="10 - Methods">
  <ion-content style="margin:0 12px">
  <div class="col-md-7 middle-col">
<h1>Methods</h1>
<hr>
<p>Ruby methods are very similar to functions in any other programming language. Ruby methods are used to bundle one or more repeatable statements into a single unit.</p>
<p>Method names should begin with a lowercase letter. If you begin a method name with an uppercase letter, Ruby might think that it is a constant and hence can parse the call incorrectly.</p>
<p>Methods should be defined before calling them, otherwise Ruby will raise an exception for undefined method invoking.</p>
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">def</span><span class="pln"> method_name </span><span class="pun">[(</span><span class="pln"> </span><span class="pun">[</span><span class="pln">arg </span><span class="pun">[=</span><span class="pln"> </span><span class="kwd">default</span><span class="pun">]]...[,</span><span class="pln"> </span><span class="pun">*</span><span class="pln"> arg </span><span class="pun">[,</span><span class="pln"> </span><span class="pun">&amp;</span><span class="pln">expr </span><span class="pun">]])]</span><span class="pln">
   expr</span><span class="pun">..</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>So you can define a simple method as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">def</span><span class="pln"> method_name 
   expr</span><span class="pun">..</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>You can represent a method that accepts parameters like this:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">def</span><span class="pln"> method_name </span><span class="pun">(</span><span class="pln">var1</span><span class="pun">,</span><span class="pln"> var2</span><span class="pun">)</span><span class="pln">
   expr</span><span class="pun">..</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>You can set default values for the parameters which will be used if method is called without passing required parameters:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">def</span><span class="pln"> method_name </span><span class="pun">(</span><span class="pln">var1</span><span class="pun">=</span><span class="pln">value1</span><span class="pun">,</span><span class="pln"> var2</span><span class="pun">=</span><span class="pln">value2</span><span class="pun">)</span><span class="pln">
   expr</span><span class="pun">..</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>Whenever you call the simple method, you write only the method name as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">method_name</span></pre>
<p>However, when you call a method with parameters, you write the method name along with the parameters, such as:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">method_name </span><span class="lit">25</span><span class="pun">,</span><span class="pln"> </span><span class="lit">30</span></pre>
<p>The most important drawback to using methods with parameters is that you need to remember the number of parameters whenever you call such methods. For example, if a method accepts three parameters and you pass only two, then Ruby displays an error.</p>
<h2>Example:</h2>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">def</span><span class="pln"> test</span><span class="pun">(</span><span class="pln">a1</span><span class="pun">=</span><span class="str">"Ruby"</span><span class="pun">,</span><span class="pln"> a2</span><span class="pun">=</span><span class="str">"Perl"</span><span class="pun">)</span><span class="pln">
   puts </span><span class="str">"The programming language is #{a1}"</span><span class="pln">
   puts </span><span class="str">"The programming language is #{a2}"</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
test </span><span class="str">"C"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"C++"</span><span class="pln">
test</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">The</span><span class="pln"> programming language </span><span class="kwd">is</span><span class="pln"> C
</span><span class="typ">The</span><span class="pln"> programming language </span><span class="kwd">is</span><span class="pln"> C</span><span class="pun">++</span><span class="pln">
</span><span class="typ">The</span><span class="pln"> programming language </span><span class="kwd">is</span><span class="pln"> </span><span class="typ">Ruby</span><span class="pln">
</span><span class="typ">The</span><span class="pln"> programming language </span><span class="kwd">is</span><span class="pln"> </span><span class="typ">Perl</span></pre>
<h2>Return Values from Methods:</h2>
<p>Every method in Ruby returns a value by default.  This returned value will be the value of the last statement. For example:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">def</span><span class="pln"> test
   i </span><span class="pun">=</span><span class="pln"> </span><span class="lit">100</span><span class="pln">
   j </span><span class="pun">=</span><span class="pln"> </span><span class="lit">10</span><span class="pln">
   k </span><span class="pun">=</span><span class="pln"> </span><span class="lit">0</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>This method, when called, will return the last declared variable k.</p>
<h2>Ruby <i>return</i> Statement:</h2>
<p>The <i>return</i> statement in ruby is used to return one or more values from a Ruby Method.</p>
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">return</span><span class="pln"> </span><span class="pun">[</span><span class="pln">expr</span><span class="pun">[</span><span class="str">`,' expr...]]</span></pre>
<p>If more than two expressions are given, the array containing these values will be the return value. If no expression given, nil will be the return value.</p>
<h2>Example:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">return</span><span class="pln">

OR

</span><span class="kwd">return</span><span class="pln"> </span><span class="lit">12</span><span class="pln">

OR

</span><span class="kwd">return</span><span class="pln"> </span><span class="lit">1</span><span class="pun">,</span><span class="lit">2</span><span class="pun">,</span><span class="lit">3</span></pre>
<p>Have a look at this example:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">def</span><span class="pln"> test
   i </span><span class="pun">=</span><span class="pln"> </span><span class="lit">100</span><span class="pln">
   j </span><span class="pun">=</span><span class="pln"> </span><span class="lit">200</span><span class="pln">
   k </span><span class="pun">=</span><span class="pln"> </span><span class="lit">300</span><span class="pln">
</span><span class="kwd">return</span><span class="pln"> i</span><span class="pun">,</span><span class="pln"> j</span><span class="pun">,</span><span class="pln"> k
</span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">var</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> test
puts </span><span class="kwd">var</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="lit">100</span><span class="pln">
</span><span class="lit">200</span><span class="pln">
</span><span class="lit">300</span></pre>
<h2>Variable Number of Parameters:</h2>
<p>Suppose you declare a method that takes two parameters, whenever you call this method, you need to pass two parameters along with it.</p>
<p>However, Ruby allows you to declare methods that work with a variable number of parameters. Let us examine a sample of this:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">def</span><span class="pln"> sample </span><span class="pun">(*</span><span class="pln">test</span><span class="pun">)</span><span class="pln">
   puts </span><span class="str">"The number of parameters is #{test.length}"</span><span class="pln">
   </span><span class="kwd">for</span><span class="pln"> i </span><span class="kwd">in</span><span class="pln"> </span><span class="lit">0.</span><span class="pun">..</span><span class="pln">test</span><span class="pun">.</span><span class="pln">length
      puts </span><span class="str">"The parameters are #{test[i]}"</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
sample </span><span class="str">"Zara"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"6"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"F"</span><span class="pln">
sample </span><span class="str">"Mac"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"36"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"M"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"MCA"</span></pre>
<p>In this code, you have declared a method sample that accepts one parameter test. However, this parameter is a variable parameter. This means that this parameter can take in any number of variables. So above code will produce following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">The</span><span class="pln"> number of parameters </span><span class="kwd">is</span><span class="pln"> </span><span class="lit">3</span><span class="pln">
</span><span class="typ">The</span><span class="pln"> parameters are </span><span class="typ">Zara</span><span class="pln">
</span><span class="typ">The</span><span class="pln"> parameters are </span><span class="lit">6</span><span class="pln">
</span><span class="typ">The</span><span class="pln"> parameters are F
</span><span class="typ">The</span><span class="pln"> number of parameters </span><span class="kwd">is</span><span class="pln"> </span><span class="lit">4</span><span class="pln">
</span><span class="typ">The</span><span class="pln"> parameters are </span><span class="typ">Mac</span><span class="pln">
</span><span class="typ">The</span><span class="pln"> parameters are </span><span class="lit">36</span><span class="pln">
</span><span class="typ">The</span><span class="pln"> parameters are M
</span><span class="typ">The</span><span class="pln"> parameters are MCA</span></pre>
<h2>Class Methods:</h2>
<p>When a method is defined outside of the class definition, the method is marked as <i>private</i> by default. On the other hand, the methods defined in the class definition are marked as public by default. The default visibility and the <i>private</i> mark of the methods can be changed by <i>public</i> or <i>private</i> of the Module.</p>
<p>Whenever you want to access a method of a class, you first need to instantiate the class. Then, using the object, you can access any member of the class.</p>
<p>Ruby gives you a way to access a method without instantiating a class. Let us see how a class method is declared and accessed:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">Accounts</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> reading_charge
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> </span><span class="typ">Accounts</span><span class="pun">.</span><span class="pln">return_date
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>See how the method return_date is declared. It is declared with the class name followed by a period, which is followed by the name of the method. You can access this class method directly as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Accounts</span><span class="pun">.</span><span class="pln">return_date</span></pre>
<p>To access this method, you need not create objects of the class Accounts.</p>
<h2>Ruby <i>alias</i> Statement:</h2>
<p>This gives alias to methods or global variables. Aliases can not be defined within the method body. The alias of the method keep the current definition of the method, even when methods are overridden.</p>
<p>Making aliases for the numbered global variables ($1, $2,...) is prohibited. Overriding the built-in global variables may cause serious problems.</p>
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">alias</span><span class="pln"> method</span><span class="pun">-</span><span class="pln">name method</span><span class="pun">-</span><span class="pln">name
</span><span class="kwd">alias</span><span class="pln"> </span><span class="kwd">global</span><span class="pun">-</span><span class="pln">variable</span><span class="pun">-</span><span class="pln">name </span><span class="kwd">global</span><span class="pun">-</span><span class="pln">variable</span><span class="pun">-</span><span class="pln">name</span></pre>
<h2>Example:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">alias</span><span class="pln"> foo bar
</span><span class="kwd">alias</span><span class="pln"> $MATCH $</span><span class="pun">&amp;</span></pre>
<p>Here we have defined foo alias for bar and $MATCH is an alias for $&amp;</p>
<h2>Ruby <i>undef</i> Statement:</h2>
<p>This cancels the method definition. An <i>undef</i> can not appear in the method body.</p>
<p>By using <i>undef</i> and <i>alias</i>, the interface of the class can be modified independently from the superclass, but notice it may be broke programs by the internal method call to self.</p>
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">undef</span><span class="pln"> method</span><span class="pun">-</span><span class="pln">name</span></pre>
<h2>Example:</h2>
<p>To undefine a method called <i>bar</i> do the following:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">undef</span><span class="pln"> bar</span></pre>
</div>
 </ion-content>
</ion-view>