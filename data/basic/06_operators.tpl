<ion-view view-title="06 - Operators">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Operators</h1>
<hr>
<p>Ruby supports a rich set of operators, as you'd expect from a modern language. Most operators are actually method calls. For example, a + b is interpreted as a.+(b), where the + method in the object referred to by variable a is called with b as its argument.</p>
<p>For each operator (+ - * / % ** &amp; | ^ &lt;&lt; &gt;&gt; &amp;&amp; ||), there is a corresponding form of
abbreviated assignment operator (+= -= etc.)</p>
<h2>Ruby Arithmetic Operators:</h2>
<p>Assume variable a holds 10 and variable b holds 20, then:</p>
<table class="table table-bordered">
<tbody>
<tr>
<th style="width:10%">Operator</th><th style="width:45%">Description</th><th>Example</th>
</tr>
<tr>
<td>+</td><td>Addition - Adds values on either side of the operator</td><td> a + b will give 30</td>
</tr>
<tr>
<td>-</td><td>Subtraction - Subtracts right hand operand from left hand operand</td><td> a - b will give -10</td>
</tr>
<tr>
<td>*</td><td>Multiplication - Multiplies values on either side of the operator</td><td> a * b will give 200</td>
</tr>
<tr>
<td>/</td><td>Division - Divides left hand operand by right hand operand</td><td> b / a will give 2</td>
</tr>
<tr>
<td>%</td><td>Modulus - Divides left hand operand by right hand operand and returns remainder</td><td> b % a will give 0</td>
</tr>
<tr>
<td>**</td><td>Exponent - Performs exponential (power) calculation on operators</td><td> a**b will give 10 to the power 20</td>
</tr>
</tbody>
</table>
<h2>Ruby Comparison Operators:</h2>
<p>Assume variable a holds 10 and variable b holds 20, then:</p>
<table class="table table-bordered">
<tbody>
<tr>
<th style="width:10%">Operator</th><th style="width:45%">Description</th><th>Example</th>
</tr>
<tr>
<td>==</td><td> Checks if the value of two operands are equal or not, if yes then condition becomes true.</td><td> (a == b) is not true. </td>
</tr>
<tr>
<td>!=</td><td> Checks if the value of two operands are equal or not, if values are not equal then condition becomes true.</td><td> (a != b) is true. </td>
</tr>
<tr>
<td>&gt;</td><td> Checks if the value of left  operand is greater than the value of right operand, if yes then condition becomes true.</td><td> (a &gt; b) is not true. </td>
</tr>
<tr>
<td>&lt;</td><td> Checks if the value of left  operand is less than the value of right operand, if yes then condition becomes true.</td><td> (a &lt; b) is true. </td>
</tr>
<tr>
<td>&gt;=</td><td> Checks if the value of left  operand is greater than or equal to the value of right operand, if yes then condition becomes true.</td><td> (a &gt;= b) is not true. </td>
</tr>
<tr>
<td>&lt;=</td><td> Checks if the value of left  operand is less than or equal to the value of right operand, if yes then condition becomes true.</td><td> (a &lt;= b) is true. </td>
</tr>
<tr>
<td>&lt;=&gt;</td><td> Combined comparison operator. Returns 0 if first operand equals second, 1 if first operand is greater than the second and -1 if first operand is less than the second.</td><td> (a &lt;=&gt; b)  returns -1. </td>
</tr>
<tr>
<td>===</td><td> Used to test equality within a when clause of a <i>case</i> statement.</td><td> (1...10) === 5 returns true. </td>
</tr>
<tr>
<td><b>.eql?</b></td><td>True if the receiver and argument have both the same type and equal values.</td><td> 1
== 1.0 returns true, but 1<b>.eql?</b>(1.0) is false.</td>
</tr>
<tr>
<td><b>equal?</b></td><td>True if the receiver and argument have the same object id.</td><td>if aObj is duplicate of  bObj then aObj == bObj is true, a<b>.equal?</b>bObj is false but a<b>.equal?</b>aObj is true.</td>
</tr>
</tbody>
</table>
<h2>Ruby Assignment Operators:</h2>
<p>Assume variable a holds 10 and variable b holds 20, then:</p>
<table class="table table-bordered">
<tbody>
<tr>
<th style="width:10%">Operator</th><th style="width:40%">Description</th><th>Example</th>
</tr>
<tr>
<td>=</td><td>Simple assignment operator, Assigns values from right side operands to left side operand</td><td> c = a + b will assigne value of a + b into c</td>
</tr>
<tr>
<td>+=</td><td>Add AND assignment operator, It adds right operand to the left operand and assign the result to left operand</td><td> c += a is equivalent to c = c + a</td>
</tr>
<tr>
<td>-=</td><td>Subtract AND assignment operator, It subtracts right operand from the left operand and assign the result to left operand</td><td> c -= a is equivalent to c = c - a</td>
</tr>
<tr>
<td>*=</td><td>Multiply AND assignment operator, It multiplies right operand with the left operand and assign the result to left operand</td><td> c *= a is equivalent to c = c * a</td>
</tr>
<tr>
<td>/=</td><td>Divide AND assignment operator, It divides left operand with the right operand and assign the result to left operand</td><td> c /= a is equivalent to c = c / a</td>
</tr>
<tr>
<td>%=</td><td>Modulus AND assignment operator, It takes modulus using two operands and assign the result to  left operand</td><td> c %= a is equivalent to c = c % a</td>
</tr>
<tr>
<td>**=</td><td>Exponent AND assignment operator, Performs exponential (power) calculation on operators and assign value to the left operand</td><td> c **= a is equivalent to c = c ** a</td>
</tr>
</tbody>
</table>
<h2>Ruby Parallel Assignment:</h2>
<p>Ruby also supports the parallel assignment of variables. This enables multiple variables to be initialized with a single line of Ruby code. For example:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">a </span><span class="pun">=</span><span class="pln"> </span><span class="lit">10</span><span class="pln">
b </span><span class="pun">=</span><span class="pln"> </span><span class="lit">20</span><span class="pln">
c </span><span class="pun">=</span><span class="pln"> </span><span class="lit">30</span></pre>
<p>may be more quickly declared using parallel assignment:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">a</span><span class="pun">,</span><span class="pln"> b</span><span class="pun">,</span><span class="pln"> c </span><span class="pun">=</span><span class="pln"> </span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">20</span><span class="pun">,</span><span class="pln"> </span><span class="lit">30</span></pre>
<p>Parallel assignment is also useful for swapping the values held in two variables:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">a</span><span class="pun">,</span><span class="pln"> b </span><span class="pun">=</span><span class="pln"> b</span><span class="pun">,</span><span class="pln"> c</span></pre>
<h2>Ruby Bitwise Operators:</h2>
<p>Bitwise operator works on bits and perform bit by bit operation.</p>
<p>Assume if a = 60; and b = 13; now in binary format they will be as follows:</p>
<p>a = 0011 1100</p>
<p>b = 0000 1101</p>
<p>-----------------</p>
<p>a&amp;b = 0000 1100</p>
<p>a|b = 0011 1101</p>
<p>a^b = 0011 0001</p>
<p>~a&nbsp; = 1100 0011</p>
<p>There are following Bitwise operators supported by Ruby language</p>
<table class="table table-bordered">
<tbody>
<tr>
<th style="width:10%">Operator</th><th style="width:45%">Description</th><th>Example</th>
</tr>
<tr>
<td>&amp;</td><td> Binary AND Operator copies a bit to the result if it exists in both operands. </td><td> (a &amp; b) will give 12, which is 0000 1100</td>
</tr>
<tr>
<td>|</td><td> Binary OR Operator copies a bit if it exists in either operand. </td><td> (a | b) will give 61, which is 0011 1101</td>
</tr>
<tr>
<td>^</td><td> Binary XOR Operator copies the bit if it is set in one operand but not both. </td><td> (a ^ b) will give 49, which is 0011 0001</td>
</tr>
<tr>
<td>~</td><td> Binary Ones Complement Operator is unary and has the effect of 'flipping' bits. </td><td> (~a ) will give -61, which is 1100 0011 in 2's complement form due to a signed binary number.</td>
</tr>
<tr>
<td>&lt;&lt;</td><td> Binary Left Shift Operator. The left operands value is moved left by the number of bits specified by the right operand. </td><td> a &lt;&lt; 2 will give 240, which is 1111 0000</td>
</tr>
<tr>
<td>&gt;&gt;</td><td> Binary Right Shift Operator. The left operands value is moved right by the number of bits specified by the right operand. </td><td> a &gt;&gt; 2 will give 15, which is 0000 1111</td>
</tr>
</tbody>
</table>
<h2>Ruby Logical Operators:</h2>
<p>There are following logical operators supported by Ruby language</p>
<p>Assume variable a holds 10 and variable b holds 20, then:</p>
<table class="table table-bordered">
<tbody>
<tr>
<th style="width:10%">Operator</th><th style="width:45%">Description</th><th>Example</th>
</tr>
<tr>
<td>and</td><td> Called Logical AND operator. If both the operands are true, then the condition becomes true.</td><td> (a and b) is true.</td>
</tr>
<tr>
<td>or</td><td>Called Logical OR Operator. If any of the two operands are non zero, then the condition becomes true.</td><td> (a or b) is true.</td>
</tr>
<tr>
<td>&amp;&amp;</td><td> Called Logical AND operator. If both the operands are non zero, then the condition becomes true.</td><td> (a &amp;&amp; b) is true. </td>
</tr>
<tr>
<td>||</td><td>Called Logical OR Operator. If any of the two operands are non zero, then the condition becomes true.</td><td> (a || b) is true.</td>
</tr>
<tr>
<td>!</td><td>Called Logical NOT Operator. Use to reverses the logical state of its operand. If a condition is true, then Logical NOT operator will make false.</td><td> !(a &amp;&amp; b) is false. </td>
</tr>
<tr>
<td>not</td><td>Called Logical NOT Operator. Use to reverses the logical state of its operand. If a condition is true, then Logical NOT operator will make false.</td><td> not(a &amp;&amp; b) is false. </td>
</tr>
</tbody>
</table>
<h2>Ruby Ternary operator:</h2>
<p>There is one more operator called Ternary Operator. This first evaluates an expression for a true or false value and then execute one of the two given statements depending upon the result of the evaluation. The conditional operator has this syntax:</p>
<table class="table table-bordered">
<tbody>
<tr>
<th style="width:10%">Operator</th><th style="width:40%">Description</th><th>Example</th>
</tr>
<tr>
<td>? :</td><td>Conditional Expression</td><td> If Condition is true ? Then value X : Otherwise value Y</td>
</tr>
</tbody>
</table>
<h2>Ruby Range operators:</h2>
<p>Sequence ranges in Ruby are used to create a range of successive values - consisting of a start value, an end value and a range of values in between.</p>
<p>In Ruby, these sequences are created using the ".." and "..." range operators. The two-dot form creates an inclusive range, while the three-dot form creates a range that excludes the specified high value.</p>
<table class="table table-bordered">
<tbody>
<tr>
<th style="width:10%">Operator</th><th style="width:40%">Description</th><th>Example</th>
</tr>
<tr>
<td>..</td><td>Creates a range from start point to end point inclusive</td><td> 1..10     Creates a range from 1 to 10 inclusive</td>
</tr>
<tr>
<td>...</td><td>Creates a range from start point to end point exclusive</td><td> 1...10   Creates a range from 1 to 9</td>
</tr>
</tbody>
</table>
<h2>Ruby defined? operators:</h2>
<p>defined? is a special operator that takes the form of a method call to determine whether or not the passed expression is defined. It returns a description string of the expression, or <i>nil</i> if the expression isn't defined.</p>
<p>There are various usage of defined? operator:</p>
<h2>Usage 1</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> variable </span><span class="com"># True if variable is initialized</span></pre>
<p>For Example:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">foo </span><span class="pun">=</span><span class="pln"> </span><span class="lit">42</span><span class="pln">
</span><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> foo    </span><span class="com"># =&gt; "local-variable"</span><span class="pln">
</span><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> $_     </span><span class="com"># =&gt; "global-variable"</span><span class="pln">
</span><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> bar    </span><span class="com"># =&gt; nil (undefined)</span></pre>
<h2>Usage 2</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> method_call </span><span class="com"># True if a method is defined</span></pre>
<p>For Example:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> puts        </span><span class="com"># =&gt; "method"</span><span class="pln">
</span><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> puts</span><span class="pun">(</span><span class="pln">bar</span><span class="pun">)</span><span class="pln">   </span><span class="com"># =&gt; nil (bar is not defined here)</span><span class="pln">
</span><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> unpack      </span><span class="com"># =&gt; nil (not defined here)</span></pre>
<h2>Usage 3</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="com"># True if a method exists that can be called with super user</span><span class="pln">
</span><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> </span><span class="kwd">super</span></pre>
<p>For Example:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> </span><span class="kwd">super</span><span class="pln">     </span><span class="com"># =&gt; "super" (if it can be called)</span><span class="pln">
</span><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> </span><span class="kwd">super</span><span class="pln">     </span><span class="com"># =&gt; nil (if it cannot be)</span></pre>
<h2>Usage 4</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> </span><span class="kwd">yield</span><span class="pln">   </span><span class="com"># True if a code block has been passed</span></pre>
<p>For Example:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> </span><span class="kwd">yield</span><span class="pln">    </span><span class="com"># =&gt; "yield" (if there is a block passed)</span><span class="pln">
</span><span class="kwd">defined</span><span class="pun">?</span><span class="pln"> </span><span class="kwd">yield</span><span class="pln">    </span><span class="com"># =&gt; nil (if there is no block)</span></pre>
<h2>Ruby dot "." and double Colon "::" Operators:</h2>
<p>You call a module method by preceding its name with the module's name and a period, and you reference a constant using the module name and two colons.</p>
<p>The <b>::</b> is a unary operator that allows: constants, instance methods and class methods defined within a class or module, to be accessed from anywhere outside the class or module.</p>
<p><b>Remember:</b> in Ruby, classes and methods may be considered constants too.</p>
<p>You need just to prefix the <b>::</b> Const_name with an expression that returns the appropriate class or module object.</p>
<p>If no prefix expression is used, the main Object class is used by default.</p>
<p>Here are two examples:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">MR_COUNT </span><span class="pun">=</span><span class="pln"> </span><span class="lit">0</span><span class="pln">        </span><span class="com"># constant defined on main Object class</span><span class="pln">
</span><span class="kwd">module</span><span class="pln"> </span><span class="typ">Foo</span><span class="pln">
  MR_COUNT </span><span class="pun">=</span><span class="pln"> </span><span class="lit">0</span><span class="pln">
  </span><span class="pun">::</span><span class="pln">MR_COUNT </span><span class="pun">=</span><span class="pln"> </span><span class="lit">1</span><span class="pln">    </span><span class="com"># set global count to 1</span><span class="pln">
  MR_COUNT </span><span class="pun">=</span><span class="pln"> </span><span class="lit">2</span><span class="pln">      </span><span class="com"># set local count to 2</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
puts MR_COUNT       </span><span class="com"># this is the global constant</span><span class="pln">
puts </span><span class="typ">Foo</span><span class="pun">::</span><span class="pln">MR_COUNT  </span><span class="com"># this is the local "Foo" constant</span></pre>
<p>Second Example:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">CONST </span><span class="pun">=</span><span class="pln"> </span><span class="str">' out there'</span><span class="pln">
</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Inside_one</span><span class="pln">
   CONST </span><span class="pun">=</span><span class="pln"> proc </span><span class="pun">{</span><span class="str">' in there'</span><span class="pun">}</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> where_is_my_CONST
      </span><span class="pun">::</span><span class="pln">CONST </span><span class="pun">+</span><span class="pln"> </span><span class="str">' inside one'</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Inside_two</span><span class="pln">
   CONST </span><span class="pun">=</span><span class="pln"> </span><span class="str">' inside two'</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> where_is_my_CONST
      CONST
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
puts </span><span class="typ">Inside_one</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">.</span><span class="pln">where_is_my_CONST
puts </span><span class="typ">Inside_two</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">.</span><span class="pln">where_is_my_CONST
puts </span><span class="typ">Object</span><span class="pun">::</span><span class="pln">CONST </span><span class="pun">+</span><span class="pln"> </span><span class="typ">Inside_two</span><span class="pun">::</span><span class="pln">CONST
puts </span><span class="typ">Inside_two</span><span class="pun">::</span><span class="pln">CONST </span><span class="pun">+</span><span class="pln"> CONST
puts </span><span class="typ">Inside_one</span><span class="pun">::</span><span class="pln">CONST
puts </span><span class="typ">Inside_one</span><span class="pun">::</span><span class="pln">CONST</span><span class="pun">.</span><span class="pln">call </span><span class="pun">+</span><span class="pln"> </span><span class="typ">Inside_two</span><span class="pun">::</span><span class="pln">CONST</span></pre>
<h2>Ruby Operators Precedence</h2>
<p>The following table lists all operators from highest precedence to lowest.</p>
<table class="table table-bordered">
<tbody><tr><th>Method</th><th>Operator</th><th>Description</th></tr>
<tr>
<td>Yes</td>
<td>::</td>
<td>Constant resolution operator</td>
</tr>
<tr>
<td>Yes</td>
<td>[ ] [ ]=</td>
<td>Element reference, element set</td>
</tr>
<tr>
<td>Yes</td>
<td>**</td>
<td>Exponentiation (raise to the power)</td>
</tr>
<tr>
<td>Yes</td>
<td>! ~ + -</td>
<td>Not, complement, unary plus and minus (method names for the last two are +@ and -@)</td>
</tr>
<tr>
<td>Yes</td>
<td>* / %</td>
<td>Multiply, divide, and modulo</td>
</tr>
<tr>
<td>Yes</td>
<td>+ -</td>
<td>Addition and subtraction</td>
</tr>
<tr>
<td>Yes</td>
<td>&gt;&gt; &lt;&lt;</td>
<td>Right and left bitwise shift</td>
</tr>
<tr>
<td>Yes</td>
<td>&amp;</td>
<td>Bitwise 'AND'</td>
</tr>
<tr>
<td>Yes</td>
<td>^ |</td>
<td>Bitwise exclusive `OR' and regular `OR'</td>
</tr>
<tr>
<td>Yes</td>
<td>&lt;= &lt; &gt; &gt;=</td>
<td>Comparison operators</td>
</tr>
<tr>
<td>Yes</td>
<td>&lt;=&gt; == === != =~ !~</td>
<td>Equality and pattern match operators (!= and !~ may not be defined as methods)</td>
</tr>
<tr>
<td></td>
<td>&amp;&amp;</td>
<td>Logical 'AND'</td>
</tr>
<tr>
<td></td>
<td>||</td>
<td>Logical 'OR'</td>
</tr>
<tr>
<td></td>
<td>.. ...</td>
<td>Range (inclusive and exclusive)</td>
</tr>
<tr>
<td></td>
<td>?&nbsp;:</td>
<td>Ternary if-then-else</td>
</tr>
<tr>
<td></td>
<td>= %= { /= -= += |= &amp;= &gt;&gt;= &lt;&lt;= *= &amp;&amp;= ||= **=</td>
<td>Assignment</td>
</tr>
<tr>
<td></td>
<td>defined?</td>
<td>Check if specified symbol defined</td>
</tr>
<tr>
<td></td>
<td>not</td>
<td>Logical negation</td>
</tr>
<tr>
<td></td>
<td>or and</td>
<td>Logical composition</td>
</tr>
</tbody></table>
<p><b>NOTE:</b> Operators with a <i>Yes</i> in the method column are actually methods, and as such may be overridden.</p>
</div>
</ion-content>
</ion-view>