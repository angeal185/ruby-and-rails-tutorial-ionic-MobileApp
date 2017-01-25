<ion-view view-title="18 - Iterators">
  <ion-content style="margin:0 12px">
  <div class="col-md-7 middle-col">
<h1>Iterators - each and collect</h1>
<hr>
<p>Iterators are nothing but methods supported by <i>collections</i>. Objects that store a group of data members are called collections. In Ruby, arrays and hashes can be termed collections.</p>
<p>Iterators return all the elements of a collection, one after the other. We will be discussing two iterators here, <i>each</i> and <i>collect</i>. Let's look at these in detail.</p>
<h2>Ruby <i>each</i> Iterator:</h2>
<p>The each iterator returns all the elements of an array or a hash.</p>
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">collection</span><span class="pun">.</span><span class="pln">each </span><span class="kwd">do</span><span class="pln"> </span><span class="pun">|</span><span class="pln">variable</span><span class="pun">|</span><span class="pln">
   code
</span><span class="kwd">end</span></pre>
<p>Executes <i>code</i> for each element in <i>collection</i>. Here, <i>collection</i> could be an array or a ruby hash.</p>
<h2>Example:</h2>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

ary </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[</span><span class="lit">1</span><span class="pun">,</span><span class="lit">2</span><span class="pun">,</span><span class="lit">3</span><span class="pun">,</span><span class="lit">4</span><span class="pun">,</span><span class="lit">5</span><span class="pun">]</span><span class="pln">
ary</span><span class="pun">.</span><span class="pln">each </span><span class="kwd">do</span><span class="pln"> </span><span class="pun">|</span><span class="pln">i</span><span class="pun">|</span><span class="pln">
   puts i
</span><span class="kwd">end</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="lit">1</span><span class="pln">
</span><span class="lit">2</span><span class="pln">
</span><span class="lit">3</span><span class="pln">
</span><span class="lit">4</span><span class="pln">
</span><span class="lit">5</span></pre>
<p>You always associate the <i>each</i> iterator with a block. It returns each value of the array, one by one, to the block. The value is stored in the variable <b>i</b> and then displayed on the screen.</p>
<h2>Ruby <i>collect</i> Iterator:</h2>
<p>The <i>collect</i> iterator returns all the elements of a collection.</p>
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">collection </span><span class="pun">=</span><span class="pln"> collection</span><span class="pun">.</span><span class="pln">collect</span></pre>
<p>The <i>collect</i> method need not always be associated with a block. The <i>collect</i> method returns the entire collection, regardless of whether it is an array or a hash.</p>
<h2>Example:</h2>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

a </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[</span><span class="lit">1</span><span class="pun">,</span><span class="lit">2</span><span class="pun">,</span><span class="lit">3</span><span class="pun">,</span><span class="lit">4</span><span class="pun">,</span><span class="lit">5</span><span class="pun">]</span><span class="pln">
b </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Array</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">
b </span><span class="pun">=</span><span class="pln"> a</span><span class="pun">.</span><span class="pln">collect
puts b</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="lit">1</span><span class="pln">
</span><span class="lit">2</span><span class="pln">
</span><span class="lit">3</span><span class="pln">
</span><span class="lit">4</span><span class="pln">
</span><span class="lit">5</span></pre>
<p><b>NOTE</b>: The <i>collect</i> method is not the right way to do copying between arrays. There is another method called a <i>clone</i>, which should be used to copy one array into another array.</p>
<p>You normally use the collect method when you want to do something with each of the values to get the new array. For example, this code produces an array b containing 10 times each value in a.</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

a </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[</span><span class="lit">1</span><span class="pun">,</span><span class="lit">2</span><span class="pun">,</span><span class="lit">3</span><span class="pun">,</span><span class="lit">4</span><span class="pun">,</span><span class="lit">5</span><span class="pun">]</span><span class="pln">
b </span><span class="pun">=</span><span class="pln"> a</span><span class="pun">.</span><span class="pln">collect</span><span class="pun">{|</span><span class="pln">x</span><span class="pun">|</span><span class="pln"> </span><span class="lit">10</span><span class="pun">*</span><span class="pln">x</span><span class="pun">}</span><span class="pln">
puts b</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="lit">10</span><span class="pln">
</span><span class="lit">20</span><span class="pln">
</span><span class="lit">30</span><span class="pln">
</span><span class="lit">40</span><span class="pln">
</span><span class="lit">50</span></pre>
</div>
 </ion-content>
</ion-view>
