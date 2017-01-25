<ion-view view-title="17 - Ranges">
  <ion-content style="margin:0 12px">
  <div class="col-md-7 middle-col">
<h1>Ranges</h1>
<hr>
<p>Ranges occur everywhere: January to December, 0 to 9, lines 50 through 67, and so on. Ruby supports ranges and allows us to use ranges in a variety of ways:</p>
<ion-list>
<li><p>Ranges as Sequences</p></li>
<li><p>Ranges as Conditions</p></li>
<li><p>Ranges as Intervals</p></li>
</ion-list>
<h2>Ranges as Sequences:</h2>
<p>The first and perhaps most natural use of ranges is to express a sequence. Sequences have a start point, an end point, and a way to produce successive values in the sequence.</p>
<p>Ruby creates these sequences using the <b>''..''</b> and <b>''...''</b> range operators. The two-dot form creates an inclusive range, while the three-dot form creates a range that excludes the specified high value.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pun">(</span><span class="lit">1.</span><span class="pun">.</span><span class="lit">5</span><span class="pun">)</span><span class="pln">        </span><span class="com">#==&gt; 1, 2, 3, 4, 5</span><span class="pln">
</span><span class="pun">(</span><span class="lit">1.</span><span class="pun">..</span><span class="lit">5</span><span class="pun">)</span><span class="pln">       </span><span class="com">#==&gt; 1, 2, 3, 4</span><span class="pln">
</span><span class="pun">(</span><span class="str">'a'</span><span class="pun">..</span><span class="str">'d'</span><span class="pun">)</span><span class="pln">    </span><span class="com">#==&gt; 'a', 'b', 'c', 'd'</span></pre>
<p>The sequence 1..100 is held as a Range <i>object</i> containing references to two <i>Fixnum</i> objects. If you need to, you can convert a range to a list using the <i>to_a</i> method. Try the following example:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

$</span><span class="pun">,</span><span class="pln"> </span><span class="pun">=</span><span class="str">", "</span><span class="pln">   </span><span class="com"># Array value separator</span><span class="pln">
range1 </span><span class="pun">=</span><span class="pln"> </span><span class="pun">(</span><span class="lit">1.</span><span class="pun">.</span><span class="lit">10</span><span class="pun">).</span><span class="pln">to_a
range2 </span><span class="pun">=</span><span class="pln"> </span><span class="pun">(</span><span class="str">'bar'</span><span class="pun">..</span><span class="str">'bat'</span><span class="pun">).</span><span class="pln">to_a

puts </span><span class="str">"#{range1}"</span><span class="pln">
puts </span><span class="str">"#{range2}"</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="lit">1</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2</span><span class="pun">,</span><span class="pln"> </span><span class="lit">3</span><span class="pun">,</span><span class="pln"> </span><span class="lit">4</span><span class="pun">,</span><span class="pln"> </span><span class="lit">5</span><span class="pun">,</span><span class="pln"> </span><span class="lit">6</span><span class="pun">,</span><span class="pln"> </span><span class="lit">7</span><span class="pun">,</span><span class="pln"> </span><span class="lit">8</span><span class="pun">,</span><span class="pln"> </span><span class="lit">9</span><span class="pun">,</span><span class="pln"> </span><span class="lit">10</span><span class="pln">
bar</span><span class="pun">,</span><span class="pln"> bas</span><span class="pun">,</span><span class="pln"> bat</span></pre>
<p>Ranges implement methods that let you iterate over them and test their contents in a variety of ways:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="com"># Assume a range</span><span class="pln">
digits </span><span class="pun">=</span><span class="pln"> </span><span class="lit">0.</span><span class="pun">.</span><span class="lit">9</span><span class="pln">

puts digits</span><span class="pun">.</span><span class="pln">include</span><span class="pun">?(</span><span class="lit">5</span><span class="pun">)</span><span class="pln">
ret </span><span class="pun">=</span><span class="pln"> digits</span><span class="pun">.</span><span class="pln">min
puts </span><span class="str">"Min value is #{ret}"</span><span class="pln">

ret </span><span class="pun">=</span><span class="pln"> digits</span><span class="pun">.</span><span class="pln">max
puts </span><span class="str">"Max value is #{ret}"</span><span class="pln">

ret </span><span class="pun">=</span><span class="pln"> digits</span><span class="pun">.</span><span class="pln">reject </span><span class="pun">{|</span><span class="pln">i</span><span class="pun">|</span><span class="pln"> i </span><span class="pun">&lt;</span><span class="pln"> </span><span class="lit">5</span><span class="pln"> </span><span class="pun">}</span><span class="pln">
puts </span><span class="str">"Rejected values are #{ret}"</span><span class="pln">

digits</span><span class="pun">.</span><span class="pln">each </span><span class="kwd">do</span><span class="pln"> </span><span class="pun">|</span><span class="pln">digit</span><span class="pun">|</span><span class="pln">
   puts </span><span class="str">"In Loop #{digit}"</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">true</span><span class="pln">
</span><span class="typ">Min</span><span class="pln"> value </span><span class="kwd">is</span><span class="pln"> </span><span class="lit">0</span><span class="pln">
</span><span class="typ">Max</span><span class="pln"> value </span><span class="kwd">is</span><span class="pln"> </span><span class="lit">9</span><span class="pln">
</span><span class="typ">Rejected</span><span class="pln"> values are </span><span class="lit">5</span><span class="pun">,</span><span class="pln"> </span><span class="lit">6</span><span class="pun">,</span><span class="pln"> </span><span class="lit">7</span><span class="pun">,</span><span class="pln"> </span><span class="lit">8</span><span class="pun">,</span><span class="pln"> </span><span class="lit">9</span><span class="pln">
</span><span class="typ">In</span><span class="pln"> </span><span class="typ">Loop</span><span class="pln"> </span><span class="lit">0</span><span class="pln">
</span><span class="typ">In</span><span class="pln"> </span><span class="typ">Loop</span><span class="pln"> </span><span class="lit">1</span><span class="pln">
</span><span class="typ">In</span><span class="pln"> </span><span class="typ">Loop</span><span class="pln"> </span><span class="lit">2</span><span class="pln">
</span><span class="typ">In</span><span class="pln"> </span><span class="typ">Loop</span><span class="pln"> </span><span class="lit">3</span><span class="pln">
</span><span class="typ">In</span><span class="pln"> </span><span class="typ">Loop</span><span class="pln"> </span><span class="lit">4</span><span class="pln">
</span><span class="typ">In</span><span class="pln"> </span><span class="typ">Loop</span><span class="pln"> </span><span class="lit">5</span><span class="pln">
</span><span class="typ">In</span><span class="pln"> </span><span class="typ">Loop</span><span class="pln"> </span><span class="lit">6</span><span class="pln">
</span><span class="typ">In</span><span class="pln"> </span><span class="typ">Loop</span><span class="pln"> </span><span class="lit">7</span><span class="pln">
</span><span class="typ">In</span><span class="pln"> </span><span class="typ">Loop</span><span class="pln"> </span><span class="lit">8</span><span class="pln">
</span><span class="typ">In</span><span class="pln"> </span><span class="typ">Loop</span><span class="pln"> </span><span class="lit">9</span></pre>
<h2>Ranges as Conditions:</h2>
<p>Ranges may also be used as conditional expressions. For example, the following code fragment prints sets of lines from standard input, where the first line in each set contains the word <i>start</i> and the last line the word <i>end.</i>:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">while</span><span class="pln"> gets
   </span><span class="kwd">print</span><span class="pln"> </span><span class="kwd">if</span><span class="pln"> </span><span class="pun">/</span><span class="pln">start</span><span class="pun">/../</span><span class="kwd">end</span><span class="pun">/</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>Ranges can be used in case statements:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

score </span><span class="pun">=</span><span class="pln"> </span><span class="lit">70</span><span class="pln">

result </span><span class="pun">=</span><span class="pln"> </span><span class="kwd">case</span><span class="pln"> score
   </span><span class="kwd">when</span><span class="pln"> </span><span class="lit">0.</span><span class="pun">.</span><span class="lit">40</span><span class="pln"> </span><span class="kwd">then</span><span class="pln"> </span><span class="str">"Fail"</span><span class="pln">
   </span><span class="kwd">when</span><span class="pln"> </span><span class="lit">41.</span><span class="pun">.</span><span class="lit">60</span><span class="pln"> </span><span class="kwd">then</span><span class="pln"> </span><span class="str">"Pass"</span><span class="pln">
   </span><span class="kwd">when</span><span class="pln"> </span><span class="lit">61.</span><span class="pun">.</span><span class="lit">70</span><span class="pln"> </span><span class="kwd">then</span><span class="pln"> </span><span class="str">"Pass with Merit"</span><span class="pln">
   </span><span class="kwd">when</span><span class="pln"> </span><span class="lit">71.</span><span class="pun">.</span><span class="lit">100</span><span class="pln"> </span><span class="kwd">then</span><span class="pln"> </span><span class="str">"Pass with Distinction"</span><span class="pln">
   </span><span class="kwd">else</span><span class="pln"> </span><span class="str">"Invalid Score"</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

puts result</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Pass</span><span class="pln"> </span><span class="kwd">with</span><span class="pln"> </span><span class="typ">Merit</span></pre>
<h2>Ranges as Intervals:</h2>
<p>A final use of the versatile range is as an interval test: seeing if some value falls within the interval represented by the range. This is done using ===, the case equality operator.</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">if</span><span class="pln"> </span><span class="pun">((</span><span class="lit">1.</span><span class="pun">.</span><span class="lit">10</span><span class="pun">)</span><span class="pln"> </span><span class="pun">===</span><span class="pln"> </span><span class="lit">5</span><span class="pun">)</span><span class="pln">
  puts </span><span class="str">"5 lies in (1..10)"</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="kwd">if</span><span class="pln"> </span><span class="pun">((</span><span class="str">'a'</span><span class="pun">..</span><span class="str">'j'</span><span class="pun">)</span><span class="pln"> </span><span class="pun">===</span><span class="pln"> </span><span class="str">'c'</span><span class="pun">)</span><span class="pln">
  puts </span><span class="str">"c lies in ('a'..'j')"</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="kwd">if</span><span class="pln"> </span><span class="pun">((</span><span class="str">'a'</span><span class="pun">..</span><span class="str">'j'</span><span class="pun">)</span><span class="pln"> </span><span class="pun">===</span><span class="pln"> </span><span class="str">'z'</span><span class="pun">)</span><span class="pln">
  puts </span><span class="str">"z lies in ('a'..'j')"</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="lit">5</span><span class="pln"> lies </span><span class="kwd">in</span><span class="pln"> </span><span class="pun">(</span><span class="lit">1.</span><span class="pun">.</span><span class="lit">10</span><span class="pun">)</span><span class="pln">
c lies </span><span class="kwd">in</span><span class="pln"> </span><span class="pun">(</span><span class="str">'a'</span><span class="pun">..</span><span class="str">'j'</span><span class="pun">)</span></pre>
</div>
 </ion-content>
</ion-view>
