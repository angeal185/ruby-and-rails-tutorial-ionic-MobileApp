<ion-view view-title="07 - Comments">
  <ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Comments</h1>
<hr>
<p>Comments are lines of annotation within Ruby code that are ignored at runtime. A single line comment starts with # character and  they extend from # to the end of the line as follows:</p>
<pre class="prettyprint notranslate tryit prettyprinted" style="cursor: default;"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="com"># This is a single line comment.</span><span class="pln">

puts </span><span class="str">"Hello, Ruby!"</span></pre>
<p>When executed, above program produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Hello</span><span class="pun">,</span><span class="pln"> </span><span class="typ">Ruby</span><span class="pun">!</span></pre>
<h2>Ruby Multiline Comments</h2>
<p>You can comment multiple lines using <b>=begin</b>  and <b>=end</b> syntax as follows:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

puts </span><span class="str">"Hello, Ruby!"</span><span class="pln">

</span><span class="pun">=</span><span class="kwd">begin</span><span class="pln">
</span><span class="typ">This</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> a multiline comment </span><span class="kwd">and</span><span class="pln"> con spwan </span><span class="kwd">as</span><span class="pln"> many lines </span><span class="kwd">as</span><span class="pln"> you
like</span><span class="pun">.</span><span class="pln"> </span><span class="typ">But</span><span class="pln"> </span><span class="pun">=</span><span class="kwd">begin</span><span class="pln"> </span><span class="kwd">and</span><span class="pln"> </span><span class="pun">=</span><span class="kwd">end</span><span class="pln"> should come </span><span class="kwd">in</span><span class="pln"> the first line only</span><span class="pun">.</span><span class="pln"> 
</span><span class="pun">=</span><span class="kwd">end</span></pre>
<p>When executed, above program produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Hello</span><span class="pun">,</span><span class="pln"> </span><span class="typ">Ruby</span><span class="pun">!</span></pre>
<p>Make sure trailing comments are far enough from the code that it is easily distinguished. If more than one trailing comment exists in a block, align them. For example:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="lit">@counter</span><span class="pln">      </span><span class="com"># keeps track times page has been hit</span><span class="pln">
</span><span class="lit">@siteCounter</span><span class="pln">  </span><span class="com"># keeps track of times all pages have been hit</span></pre>
</div>
 </ion-content>
</ion-view>