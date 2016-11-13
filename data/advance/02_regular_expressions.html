<ion-view view-title="02 - Regular Expressions">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Regular Expressions</h1>
<hr>
<p>A <i>regular expression</i> is a special sequence of characters that helps you match or find other strings or sets of strings using
a specialized syntax held in a pattern.</p>
<p>A <i>regular expression literal</i> is a pattern between slashes or between arbitrary delimiters followed by %r as follows:</p>
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="str">/pattern/</span><span class="pln">
</span><span class="pun">/</span><span class="pln">pattern</span><span class="pun">/</span><span class="pln">im    </span><span class="com"># option can be specified</span><span class="pln">
</span><span class="pun">%</span><span class="pln">r</span><span class="pun">!</span><span class="str">/usr/</span><span class="kwd">local</span><span class="pun">!</span><span class="pln"> </span><span class="com"># general delimited regular expression</span></pre>
<h2>Example:</h2>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

line1 </span><span class="pun">=</span><span class="pln"> </span><span class="str">"Cats are smarter than dogs"</span><span class="pun">;</span><span class="pln">
line2 </span><span class="pun">=</span><span class="pln"> </span><span class="str">"Dogs also like meat"</span><span class="pun">;</span><span class="pln">

</span><span class="kwd">if</span><span class="pln"> </span><span class="pun">(</span><span class="pln"> line1 </span><span class="pun">=~</span><span class="pln"> </span><span class="pun">/</span><span class="typ">Cats</span><span class="pun">(.*)/</span><span class="pln"> </span><span class="pun">)</span><span class="pln">
  puts </span><span class="str">"Line1 contains Cats"</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">if</span><span class="pln"> </span><span class="pun">(</span><span class="pln"> line2 </span><span class="pun">=~</span><span class="pln"> </span><span class="pun">/</span><span class="typ">Cats</span><span class="pun">(.*)/</span><span class="pln"> </span><span class="pun">)</span><span class="pln">
  puts </span><span class="str">"Line2 contains  Dogs"</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Line1</span><span class="pln"> contains </span><span class="typ">Cats</span></pre>
<h2>Regular-expression modifiers:</h2>
<p>Regular expression literals may include an optional modifier to control various aspects of matching. The modifier is specified after the second slash character, as shown previously and may be represented by one of these characters:</p>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Modifier</th><th>Description</th></tr>
<tr><td>i</td><td>Ignore case when matching text.</td></tr>
<tr><td>o</td><td>Perform #{} interpolations only once, the first time the regexp literal is evaluated.</td></tr>
<tr><td>x</td><td>Ignores whitespace and allows comments in regular expressions</td></tr>
<tr><td>m</td><td>Matches multiple lines, recognizing newlines as normal characters</td></tr>
<tr><td>u,e,s,n</td><td>Interpret the regexp as Unicode (UTF-8), EUC, SJIS, or ASCII. If none of these modifiers is specified, the regular expression is assumed to use the source encoding.</td></tr>
</tbody></table>
<p>Like string literals delimited with %Q, Ruby allows you to begin your regular expressions with %r followed by a delimiter of your choice. This is useful when the pattern you are describing contains a lot of forward slash characters that you don't want to escape:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com"># Following matches a single slash character, no escape required</span><span class="pln">
</span><span class="pun">%</span><span class="pln">r</span><span class="pun">|/|</span><span class="pln">               

</span><span class="com"># Flag characters are allowed with this syntax, too</span><span class="pln">
</span><span class="pun">%</span><span class="pln">r</span><span class="pun">[&lt;/(.*)&gt;]</span><span class="pln">i  </span></pre>
<h2>Regular-expression patterns:</h2>
<p>Except for control characters, <b>(+ ? . * ^ $ ( ) [ ] { } | \)</b>, all characters match themselves. You can escape a control character by preceding it with a backslash.</p>
<p>Following table lists the regular expression syntax that is available in Ruby.</p>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Pattern</th><th>Description</th></tr>
<tr><td>^</td><td>Matches beginning of line.</td></tr>
<tr><td>$</td><td>Matches end of line.</td></tr>
<tr><td>.</td><td>Matches any single character except newline. Using m option allows it to match
newline as well.</td></tr>
<tr><td>[...]</td><td>Matches any single character in brackets.</td></tr>
<tr><td>[^...]</td><td>Matches any single character not in brackets</td></tr>
<tr><td>re*</td><td>Matches 0 or more occurrences of preceding expression.</td></tr>
<tr><td>re+</td><td>Matches 1 or more occurrence of preceding expression.</td></tr>
<tr><td>re?</td><td>Matches 0 or 1 occurrence of preceding expression.</td></tr>
<tr><td>re{ n}</td><td>Matches exactly n number of occurrences of preceding expression.</td></tr>
<tr><td>re{ n,}</td><td>Matches n or more occurrences of preceding expression.</td></tr>
<tr><td>re{ n, m}</td><td>Matches at least n and at most m occurrences of preceding expression.</td></tr>
<tr><td>a| b</td><td>Matches either a or b.</td></tr>
<tr><td>(re)</td><td>Groups regular expressions and remembers matched text.</td></tr>
<tr><td>(?imx)</td><td>Temporarily toggles on i, m, or x options within a regular expression. If in parentheses,
only that area is affected.</td></tr>
<tr><td>(?-imx)</td><td>Temporarily toggles off i, m, or x options within a regular expression. If in
parentheses, only that area is affected.</td></tr>
<tr><td>(?: re)</td><td>Groups regular expressions without remembering matched text.</td></tr>
<tr><td>(?imx: re)</td><td>Temporarily toggles on i, m, or x options within parentheses.</td></tr>
<tr><td>(?-imx: re)</td><td>Temporarily toggles off i, m, or x options within parentheses.</td></tr>
<tr><td>(?#...)</td><td>Comment.</td></tr>
<tr><td>(?= re)</td><td>Specifies position using a pattern. Doesn't have a range.</td></tr>
<tr><td>(?! re)</td><td>Specifies position using pattern negation. Doesn't have a range.</td></tr>
<tr><td>(?&gt; re)</td><td>Matches independent pattern without backtracking.</td></tr>
<tr><td>\w</td><td>Matches word characters.</td></tr>
<tr><td>\W</td><td>Matches nonword characters.</td></tr>
<tr><td>\s</td><td>Matches whitespace. Equivalent to [\t\n\r\f].</td></tr>
<tr><td>\S</td><td>Matches nonwhitespace.</td></tr>
<tr><td>\d</td><td>Matches digits. Equivalent to [0-9].</td></tr>
<tr><td>\D</td><td>Matches nondigits.</td></tr>
<tr><td>\A</td><td>Matches beginning of string.</td></tr>
<tr><td>\Z</td><td>Matches end of string. If a newline exists, it matches just before newline.</td></tr>
<tr><td>\z</td><td>Matches end of string.</td></tr>
<tr><td>\G</td><td>Matches point where last match finished.</td></tr>
<tr><td>\b</td><td>Matches word boundaries when outside brackets. Matches backspace (0x08) when inside brackets.</td></tr>
<tr><td>\B</td><td>Matches nonword boundaries.</td></tr>
<tr><td>\n, \t, etc.</td><td>Matches newlines, carriage returns, tabs, etc.</td></tr>
<tr><td>\1...\9</td><td>Matches nth grouped subexpression.</td></tr>
<tr><td>\10</td><td>Matches nth grouped subexpression if it matched already. Otherwise refers to the octal
representation of a character code.</td></tr>
</tbody></table>
<h2>Regular-expression Examples:</h2>
<h2>Literal characters:</h2>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Example</th><th>Description</th></tr>
<tr><td>/ruby/</td><td>Match "ruby". </td></tr>
<tr><td>¥</td><td>Matches Yen sign. Multibyte characters are supported in Ruby 1.9 and Ruby 1.8.</td></tr>
</tbody></table>
<h2>Character classes:</h2>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Example</th><th>Description</th></tr>
<tr><td>/[Rr]uby/ </td><td>Match "Ruby" or "ruby"</td></tr>
<tr><td>/rub[ye]/ </td><td>Match "ruby" or "rube"</td></tr>
<tr><td>/[aeiou]/</td><td>Match any one lowercase vowel</td></tr>
<tr><td>/[0-9]/ </td><td>Match any digit; same as /[0123456789]/</td></tr>
<tr><td>/[a-z]/</td><td>Match any lowercase ASCII letter</td></tr>
<tr><td>/[A-Z]/</td><td>Match any uppercase ASCII letter</td></tr>
<tr><td>/[a-zA-Z0-9]/</td><td>Match any of the above</td></tr>
<tr><td>/[^aeiou]/ </td><td>Match anything other than a lowercase vowel</td></tr>
<tr><td>/[^0-9]/</td><td>Match anything other than a digit</td></tr>
</tbody></table>
<h2>Special Character Classes:</h2>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Example</th><th>Description</th></tr>
<tr><td>/./ </td><td>Match any character except newline</td></tr>
<tr><td>/./m </td><td>In multiline mode . matches newline, too</td></tr>
<tr><td>/\d/</td><td>Match a digit: /[0-9]/</td></tr>
<tr><td>/\D/ </td><td>Match a nondigit: /[^0-9]/</td></tr>
<tr><td>/\s/</td><td>Match a whitespace character: /[ \t\r\n\f]/</td></tr>
<tr><td>/\S/ </td><td>Match nonwhitespace: /[^ \t\r\n\f]/</td></tr>
<tr><td>/\w/ </td><td>Match a single word character: /[A-Za-z0-9_]/</td></tr>
<tr><td>/\W/</td><td>Match a nonword character: /[^A-Za-z0-9_]/</td></tr>
</tbody></table>
<h2>Repetition Cases:</h2>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Example</th><th>Description</th></tr>
<tr><td>/ruby?/ </td><td>Match "rub" or "ruby": the y is optional</td></tr>
<tr><td>/ruby*/ </td><td>Match "rub" plus 0 or more ys</td></tr>
<tr><td>/ruby+/</td><td>Match "rub" plus 1 or more ys</td></tr>
<tr><td>/\d{3}/</td><td>Match exactly 3 digits</td></tr>
<tr><td>/\d{3,}/</td><td>Match 3 or more digits</td></tr>
<tr><td>/\d{3,5}/</td><td>Match 3, 4, or 5 digits</td></tr>
</tbody></table>
<h2>Nongreedy repetition:</h2>
<p>This matches the smallest number of repetitions:</p>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Example</th><th>Description</th></tr>
<tr><td>/&lt;.*&gt;/</td><td>Greedy repetition: matches "&lt;ruby&gt;perl&gt;"</td></tr>
<tr><td>/&lt;.*?&gt;/ </td><td>Nongreedy: matches "&lt;ruby&gt;" in "&lt;ruby&gt;perl&gt;"</td></tr>
</tbody></table>
<h2>Grouping with parentheses:</h2>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Example</th><th>Description</th></tr>
<tr><td>/\D\d+/ </td><td>No group: + repeats \d</td></tr>
<tr><td>/(\D\d)+/ </td><td>Grouped: + repeats \D\d pair</td></tr>
<tr><td>/([Rr]uby(, )?)+/</td><td>Match "Ruby", "Ruby, ruby, ruby", etc.</td></tr>
</tbody></table>
<h2>Backreferences:</h2>
<p>This matches a previously matched group again:</p>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Example</th><th>Description</th></tr>
<tr><td>/([Rr])uby&amp;\1ails/</td><td>Match ruby&amp;rails or Ruby&amp;Rails</td></tr>
<tr><td> /(['"])(?:(?!\1).)*\1/</td><td>Single or double-quoted string. \1 matches whatever the 1st group matched
. \2 matches whatever the 2nd group matched, etc.</td></tr>
</tbody></table>
<h2>Alternatives:</h2>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Example</th><th>Description</th></tr>
<tr><td>/ruby|rube/</td><td>Match "ruby" or "rube"</td></tr>
<tr><td>/rub(y|le))/</td><td>Match "ruby" or "ruble"</td></tr>
<tr><td>/ruby(!+|\?)/ </td><td>"ruby" followed by one or more ! or one ?</td></tr>
</tbody></table>
<h2>Anchors:</h2>
<p>This need to specify match position</p>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Example</th><th>Description</th></tr>
<tr><td>/^Ruby/</td><td>Match "Ruby" at the start of a string or internal line</td></tr>
<tr><td>/Ruby$/ </td><td>Match "Ruby" at the end of a string or line</td></tr>
<tr><td>/\ARuby/ </td><td>Match "Ruby" at the start of a string</td></tr>
<tr><td>/Ruby\Z/</td><td>Match "Ruby" at the end of a string</td></tr>
<tr><td>/\bRuby\b/</td><td>Match "Ruby" at a word boundary</td></tr>
<tr><td>/\brub\B/</td><td>\B is nonword boundary: match "rub" in "rube" and "ruby" but not alone</td></tr>
<tr><td>/Ruby(?=!)/</td><td>Match "Ruby", if followed by an exclamation point</td></tr>
<tr><td>/Ruby(?!!)/ </td><td>Match "Ruby", if not followed by an exclamation point</td></tr>
</tbody></table>
<h2>Special syntax with parentheses:</h2>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Example</th><th>Description</th></tr>
<tr><td>/R(?#comment)/ </td><td>Matches "R". All the rest is a comment</td></tr>
<tr><td>/R(?i)uby/ </td><td>Case-insensitive while matching "uby"</td></tr>
<tr><td>/R(?i:uby)/ </td><td>Same as above</td></tr>
<tr><td>/rub(?:y|le))/</td><td>Group only without creating \1 backreference</td></tr>
</tbody></table>
<h2>Search and Replace:</h2>
<p>Some of the most important String methods that use regular expressions are <b>sub</b> and <b>gsub</b> , and their in-place variants <b>sub!</b> and <b>gsub!</b>.</p>
<p>All of these methods perform a search-and-replace operation using a Regexp pattern. The <b>sub</b> &amp; <b>sub!</b> replace the first occurrence of the pattern and  <b>gsub</b> &amp; <b>gsub!</b> replace all occurrences.</p>
<p>The <b>sub</b> and <b>gsub</b> return a new string, leaving the original unmodified where as <b>sub!</b> and <b>gsub!</b> modify the string on which they are called.</p>
<p>Following is the example:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

phone </span><span class="pun">=</span><span class="pln"> </span><span class="str">"2004-959-559 #This is Phone Number"</span><span class="pln">

</span><span class="com"># Delete Ruby-style comments</span><span class="pln">
phone </span><span class="pun">=</span><span class="pln"> phone</span><span class="pun">.</span><span class="kwd">sub</span><span class="pun">!(</span><span class="str">/#.*$/</span><span class="pun">,</span><span class="pln"> </span><span class="str">""</span><span class="pun">)</span><span class="pln">   
puts </span><span class="str">"Phone Num : #{phone}"</span><span class="pln">

</span><span class="com"># Remove anything other than digits</span><span class="pln">
phone </span><span class="pun">=</span><span class="pln"> phone</span><span class="pun">.</span><span class="pln">gsub</span><span class="pun">!(</span><span class="str">/\D/</span><span class="pun">,</span><span class="pln"> </span><span class="str">""</span><span class="pun">)</span><span class="pln">    
puts </span><span class="str">"Phone Num : #{phone}"</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Phone</span><span class="pln"> </span><span class="typ">Num</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="lit">2004</span><span class="pun">-</span><span class="lit">959</span><span class="pun">-</span><span class="lit">559</span><span class="pln">
</span><span class="typ">Phone</span><span class="pln"> </span><span class="typ">Num</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="lit">2004959559</span></pre>
<p>Following is another example:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

text </span><span class="pun">=</span><span class="pln"> </span><span class="str">"rails are rails, really good Ruby on Rails"</span><span class="pln">

</span><span class="com"># Change "rails" to "Rails" throughout</span><span class="pln">
text</span><span class="pun">.</span><span class="pln">gsub</span><span class="pun">!(</span><span class="str">"rails"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Rails"</span><span class="pun">)</span><span class="pln">

</span><span class="com"># Capitalize the word "Rails" throughout</span><span class="pln">
text</span><span class="pun">.</span><span class="pln">gsub</span><span class="pun">!(</span><span class="str">/\brails\b/</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Rails"</span><span class="pun">)</span><span class="pln">

puts </span><span class="str">"#{text}"</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Rails</span><span class="pln"> are </span><span class="typ">Rails</span><span class="pun">,</span><span class="pln"> really good </span><span class="typ">Ruby</span><span class="pln"> on </span><span class="typ">Rails</span></pre>
</div>
</ion-content>
</ion-view>