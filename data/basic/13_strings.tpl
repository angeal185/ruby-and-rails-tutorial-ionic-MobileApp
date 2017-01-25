<ion-view view-title="13 - Strings">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Strings</h1>
<hr>
<p>A String object in Ruby holds and manipulates an arbitrary sequence of one or more bytes, typically representing characters
that represent human language.</p>
<p>The simplest string literals are enclosed in single quotes (the apostrophe character). The text within the quote marks is the value of the string:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="str">'This is a simple Ruby string literal'</span></pre>
<p>If you need to place an apostrophe within a single-quoted string literal, precede it with a backslash so that the Ruby interpreter does not think that it terminates the string:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="str">'Won\'t you read O\'Reilly\'s book?'</span></pre>
<p>The backslash also works to escape another backslash, so that the second backslash is not itself interpreted as an escape character. </p>
<p>Following are string-related features Ruby.</p>
<h2>Expression Substitution:</h2>
<p>Expression substitution is a means of embedding the value of any Ruby expression into a string using #{ and }:</p>
<pre class="prettyprint notranslate tryit prettyprinted" style="cursor: default;"><span class="com">#!/usr/bin/ruby</span><span class="pln">

x</span><span class="pun">,</span><span class="pln"> y</span><span class="pun">,</span><span class="pln"> z </span><span class="pun">=</span><span class="pln"> </span><span class="lit">12</span><span class="pun">,</span><span class="pln"> </span><span class="lit">36</span><span class="pun">,</span><span class="pln"> </span><span class="lit">72</span><span class="pln">
puts </span><span class="str">"The value of x is #{ x }."</span><span class="pln">
puts </span><span class="str">"The sum of x and y is #{ x + y }."</span><span class="pln">
puts </span><span class="str">"The average was #{ (x + y + z)/3 }."</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">The</span><span class="pln"> value of x </span><span class="kwd">is</span><span class="pln"> </span><span class="lit">12.</span><span class="pln">
</span><span class="typ">The</span><span class="pln"> sum of x </span><span class="kwd">and</span><span class="pln"> y </span><span class="kwd">is</span><span class="pln"> </span><span class="lit">48.</span><span class="pln">
</span><span class="typ">The</span><span class="pln"> average was </span><span class="lit">40.</span></pre>
<h2>General Delimited Strings:</h2>
<p>With general delimited strings, you can create strings inside a pair of matching though arbitrary delimiter characters, e.g., !, (, {, &lt;, etc., preceded by a percent character (%). Q, q, and x have special meanings. General delimited strings can be</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pun">%{</span><span class="typ">Ruby</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> fun</span><span class="pun">.}</span><span class="pln">  equivalent to </span><span class="str">"Ruby is fun."</span><span class="pln">
</span><span class="pun">%</span><span class="pln">Q</span><span class="pun">{</span><span class="pln"> </span><span class="typ">Ruby</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> fun</span><span class="pun">.</span><span class="pln"> </span><span class="pun">}</span><span class="pln"> equivalent to </span><span class="str">" Ruby is fun. "</span><span class="pln">
</span><span class="pun">%</span><span class="pln">q</span><span class="pun">[</span><span class="typ">Ruby</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> fun</span><span class="pun">.]</span><span class="pln">  equivalent to a single</span><span class="pun">-</span><span class="pln">quoted </span><span class="kwd">string</span><span class="pln">
</span><span class="pun">%</span><span class="pln">x</span><span class="pun">!</span><span class="pln">ls</span><span class="pun">!</span><span class="pln"> equivalent to back tick command output </span><span class="str">`ls`</span></pre>
<h2>Escape Characters:</h2>
<p>Following table is a list of escape or non-printable characters that can be represented with backslash notation.</p>
<p><b>NOTE:</b> In a double-quoted string, an escape character is interpreted; in a single-quoted string, an escape character is preserved.</p>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Backslash<br>notation</th><th>Hexadecimal<br>character</th><th>Description</th></tr>
<tr><td>\a</td><td>0x07</td><td>Bell or alert</td></tr>
<tr><td>\b</td><td>0x08</td><td>Backspace</td></tr>
<tr><td>\cx</td><td>&nbsp;</td><td>Control-x</td></tr>
<tr><td>\C-x</td><td>&nbsp;</td><td>Control-x</td></tr>
<tr><td>\e</td><td>0x1b</td><td>Escape</td></tr>
<tr><td>\f</td><td>0x0c</td><td>Formfeed</td></tr>
<tr><td>\M-\C-x</td><td>&nbsp;</td><td>Meta-Control-x</td></tr>
<tr><td>\n</td><td>0x0a</td><td>Newline</td></tr>
<tr><td>\nnn</td><td>&nbsp;</td><td>Octal notation, where n is in the range 0.7</td></tr>
<tr><td>\r</td><td>0x0d</td><td>Carriage return</td></tr>
<tr><td>\s</td><td>0x20</td><td>Space</td></tr>
<tr><td>\t</td><td>0x09</td><td>Tab</td></tr>
<tr><td>\v</td><td>0x0b</td><td>Vertical tab</td></tr>
<tr><td>\x</td><td>&nbsp;</td><td>Character x</td></tr>
<tr><td>\xnn</td><td>&nbsp;</td><td>Hexadecimal notation, where n is in the
range 0.9, a.f, or A.F</td></tr>
</tbody></table>
<h2>Character Encoding:</h2>
<p>The default character set for Ruby is ASCII, whose characters may be represented by single bytes. If you use UTF-8, or another modern character set, characters may be represented in one to four bytes.</p>
<p>You can change your character set using $KCODE at the beginning of your program, like this:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">$KCODE </span><span class="pun">=</span><span class="pln"> </span><span class="str">'u'</span></pre>
<p>Following are the possible values for $KCODE.</p>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Code</th><th>Description</th></tr>
<tr><td>a</td><td>ASCII (same as none). This is the default.</td></tr>
<tr><td>e</td><td>EUC.</td></tr>
<tr><td>n</td><td>None (same as ASCII).</td></tr>
<tr><td>u</td><td>UTF-8.</td></tr>
</tbody></table>
<h2>String Built-in Methods:</h2>
<p>We need to have an instance of String object to call a String method. Following is the way to create an instance of String object:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">new</span><span class="pln"> </span><span class="pun">[</span><span class="typ">String</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">str</span><span class="pun">=</span><span class="str">""</span><span class="pun">)]</span></pre>
<p>This will return a new string object containing a copy of <i>str</i>. Now, using <i>str</i> object, we can call any available instance methods. For example:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

myStr </span><span class="pun">=</span><span class="pln"> </span><span class="typ">String</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"THIS IS TEST"</span><span class="pun">)</span><span class="pln">
foo </span><span class="pun">=</span><span class="pln"> myStr</span><span class="pun">.</span><span class="pln">downcase

puts </span><span class="str">"#{foo}"</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">this</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> test</span></pre>
<p>Following are the public String methods ( Assuming str is a String object ):</p>
<table class="table table-bordered">
<tbody><tr>
<th style="width:5%">SN</th>
<th>Methods with Description</th>
</tr>
<tr>
<td>1</td>
<td><b>str % arg</b>
<p>Formats a string using a format specification. arg must be an array if it contains more than one substitution. For information on the format specification. see sprintf under "Kernel Module."</p></td>
</tr>
<tr>
<td>2</td>
<td><b>str * integer</b>
<p>Returns a new string containing integer times str. In other words, str is repeated integer imes.</p></td>
</tr>
<tr>
<td>3</td>
<td><b>str + other_str</b>
<p>Concatenates other_str to str.</p></td>
</tr>
<tr>
<td>4</td>
<td><b>str &lt;&lt; obj</b>
<p>Concatenates an object to str. If the object is a Fixnum in the range 0.255, it is converted to a character. Compare it with concat.</p></td>
</tr>
<tr><td>5</td>
<td><b>str &lt;=&gt; other_str</b>
<p>Compares str with other_str, returning -1 (less than), 0 (equal), or 1 (greater than). The comparison is casesensitive.</p></td>
</tr>
<tr>
<td>6</td>
<td><b>str == obj</b>
<p>Tests str and obj for equality. If obj is not a String, returns false; returns true if str &lt;=&gt; obj returns 0.</p></td>
</tr>
<tr>
<td>7</td>
<td><b>str =~ obj</b>
<p>Matches str against a regular expression pattern obj. Returns the position where the match starts; otherwise,
false.</p></td>
</tr>
<tr>
<td>8</td>
<td><b>str.capitalize</b>
<p>Capitalizes a string.</p></td>
</tr>
<tr>
<td>9</td>
<td><b>str.capitalize!</b>
<p>Same as capitalize, but changes are made in place.</p></td>
</tr>
<tr>
<td>10</td>
<td><b>str.casecmp</b>
<p>Makes a case-insensitive comparison of strings.</p></td>
</tr>
<tr>
<td>11</td>
<td><b>str.center</b>
<p>Centers a string.</p></td>
</tr>
<tr>
<td>12</td>
<td><b>str.chomp</b>
<p>Removes the record separator ($/), usually \n, from the end of a string. If no record separator exists, does nothing.</p></td>
</tr>
<tr>
<td>13</td>
<td><b>str.chomp!</b>
<p>Same as chomp, but changes are made in place.</p></td>
</tr>
<tr>
<td>14</td>
<td><b>str.chop</b>
<p>Removes the last character in str.</p></td>
</tr>
<tr>
<td>15</td>
<td><b>str.chop!</b>
<p>Same as chop, but changes are made in place.</p></td>
</tr>
<tr>
<td>16</td>
<td><b>str.concat(other_str)</b>
<p>Concatenates other_str to str.</p></td>
</tr>
<tr>
<td>17</td>
<td><b>str.count(str, ...)</b>
<p>Counts one or more sets of characters. If there is more than one set of characters, counts the intersection of those sets</p></td>
</tr>
<tr>
<td>18</td>
<td><b>str.crypt(other_str)</b>
<p>Applies a one-way cryptographic hash to str. The argument is the salt string, which should be two characters long, each character in the range a.z, A.Z, 0.9, . or /.</p></td>
</tr>
<tr>
<td>19</td>
<td><b>str.delete(other_str, ...)</b>
<p>Returns a copy of str with all characters in the intersection of its arguments deleted.</p></td>
</tr>
<tr>
<td>20</td>
<td><b>str.delete!(other_str, ...)</b>
<p>Same as delete, but changes are made in place.</p></td></tr>
<tr>
<td>21</td>
<td><b>str.downcase</b>
<p>Returns a copy of str with all uppercase letters replaced with lowercase.</p></td>
</tr>
<tr>
<td>22</td>
<td><b>str.downcase!</b>
<p>Same as downcase, but changes are made in place.</p></td>
</tr>
<tr>
<td>23</td>
<td><b>str.dump</b>
<p>Returns a version of str with all nonprinting characters replaced by \nnn notation and all special characters
escaped.</p></td>
</tr>
<tr>
<td>24</td>
<td><b>str.each(separator=$/) { |substr| block }</b>
<p>Splits str using argument as the record separator ($/ by
default), passing each substring to the supplied block.</p></td>
</tr>
<tr>
<td>25</td>
<td><b>str.each_byte { |fixnum| block }</b>
<p>Passes each byte from str to the block, returning each byte as a decimal representation of the byte.</p></td>
</tr>
<tr>
<td>26</td>
<td><b>str.each_line(separator=$/) { |substr| block }</b>
<p>Splits str using argument as the record separator ($/ by default), passing each substring to the supplied block.</p></td>
</tr>
<tr>
<td>27</td>
<td><b>str.empty?</b>
<p>Returns true if str is empty (has a zero length).</p></td>
</tr>
<tr>
<td>28</td>
<td><b>str.eql?(other)</b>
<p>Two strings are equal if the have the same length and content.</p></td>
</tr>
<tr>
<td>29</td>
<td><b>str.gsub(pattern, replacement) [or]<br>
str.gsub(pattern) { |match| block }</b>
<p>Returns a copy of str with all occurrences of pattern replaced with either replacement or the value of the block. The pattern will typically be a Regexp; if it is a String then no regular expression metacharacters will be
interpreted (that is, /\d/ will match a digit, but '\d' will match a backslash followed by a 'd')</p></td>
</tr>
<tr>
<td>30</td>
<td><b>str[fixnum] [or] str[fixnum,fixnum] [or] str[range] [or] str[regexp] [or] str[regexp, fixnum] [or] str[other_str]</b>
<p>References str, using the following arguments: one
Fixnum, returns a character code at fixnum; two Fixnums, returns a substring starting at an offset (first fixnum) to length (second fixnum); range, returns a substring in the range; regexp returns portion of matched string; regexp with fixnum, returns matched data at fixnum; other_str returns substring matching other_str. A negative Fixnum starts at end of string with -1.</p></td>
</tr>
<tr>
<td>31</td>
<td><b>str[fixnum] = fixnum [or] str[fixnum] = new_str [or] str[fixnum, fixnum] = new_str [or] str[range] = aString [or]
str[regexp] =new_str [or] str[regexp, fixnum] =new_str [or] str[other_str] = new_str ]</b>
<p>Replace (assign) all or part of a string. Synonym of slice!.</p></td>
</tr>
<tr>
<td>33</td>
<td><b>str.gsub!(pattern, replacement) [or] str.gsub!(pattern) { |match| block }</b>
<p>Performs the substitutions of String#gsub in place, returning str, or nil if no substitutions were performed.</p></td>
</tr>
<tr>
<td>34</td>
<td><b>str.hash</b>
<p>Returns a hash based on the string's length and content.</p></td>
</tr>
<tr>
<td>35</td>
<td><b>str.hex</b>
<p>Treats leading characters from str as a string of hexadecimal digits (with an optional sign and an optional 0x) and returns the corresponding number. Zero is returned on error.</p></td>
</tr>
<tr>
<td>36</td>
<td><b>str.include? other_str [or] str.include? fixnum</b>
<p>Returns true if str contains the given string or character.</p></td>
</tr>
<tr>
<td>37</td>
<td><b>str.index(substring [, offset]) [or]<br>
str.index(fixnum [, offset]) [or]<br>
str.index(regexp [, offset])</b>
<p>Returns the index of the first occurrence of the given substring, character (fixnum), or pattern (regexp) in str. Returns nil if not found. If the second parameter is present, it specifies the position in the string to begin the
search.</p></td>
</tr>
<tr>
<td>38</td>
<td><b>str.insert(index, other_str)</b>
<p>Inserts other_str before the character at the given index, modifying str. Negative indices count from the end of the string, and insert after the given character. The intent is to insert a string so that it starts at the given index.</p></td>
</tr>
<tr>
<td>39</td>
<td><b>str.inspect</b>
<p>Returns a printable version of str, with special characters escaped.</p></td>
</tr>
<tr>
<td>40</td>
<td><b>str.intern [or] str.to_sym</b>
<p>Returns the Symbol corresponding to str, creating the symbol if it did not previously exist.</p></td>
</tr>
<tr>
<td>41</td>
<td><b>str.length</b><p>Returns the length of str. Compare size.</p></td>
</tr>
<tr>
<td>42</td>
<td><b>str.ljust(integer, padstr=' ')</b>
<p>If integer is greater than the length of str, returns a new String of length integer with str left-justified and padded with padstr; otherwise, returns str.</p></td>
</tr>
<tr>
<td>43</td>
<td><b>str.lstrip</b>
<p>Returns a copy of str with leading whitespace removed.</p></td>
</tr>
<tr>
<td>44</td>
<td><b>str.lstrip!</b>
<p>Removes leading whitespace from str, returning nil if no
change was made.</p></td>
</tr>
<tr>
<td>45</td>
<td><b>str.match(pattern)</b>
<p>Converts pattern to a Regexp (if it isn't already one), then invokes its match method on str.</p></td>
</tr>
<tr>
<td>46</td>
<td><b>str.oct</b>
<p>Treats leading characters of str as a string of octal digits (with an optional sign) and returns the corresponding number. Returns 0 if the conversion fails.</p></td>
</tr>
<tr>
<td>47</td>
<td><b>str.replace(other_str)</b>
<p>Replaces the contents and taintedness of str with the corresponding values in other_str.</p></td>
</tr>
<tr>
<td>48</td>
<td><b>str.reverse</b>
<p>Returns a new string with the characters from str in
reverse order.</p></td>
</tr>
<tr>
<td>49</td>
<td><b>str.reverse!</b>
<p>Reverses str in place.</p></td>
</tr>
<tr>
<td>50</td>
<td><b></b><p><b>str.rindex(substring [, fixnum]) [or]</b></p>
<p><b>str.rindex(fixnum [, fixnum]) [or]</b></p>
<p><b>str.rindex(regexp [, fixnum])</b></p>
<p>Returns the index of the last occurrence of the given substring, character (fixnum), or pattern (regexp) in str. Returns nil if not found. If the second parameter is present, it specifies the position in the string to end the
search.characters beyond this point won't be considered.</p></td>
</tr> 
<tr>
<td>51</td>
<td><b>str.rjust(integer, padstr=' ')</b>
<p>If integer is greater than the length of str, returns a new String of length integer with str right-justified and padded with padstr; otherwise, returns str.</p></td>
</tr>
<tr>
<td>52</td>
<td><b>str.rstrip</b>
<p>Returns a copy of str with trailing whitespace removed.</p></td>
</tr>
<tr>
<td>53</td>
<td><b>str.rstrip!</b>
<p>Removes trailing whitespace from str, returning nil if no change was made.</p></td>
</tr>
<tr>
<td>54</td>
<td><b></b><p><b>str.scan(pattern) [or]</b></p>
<p><b>str.scan(pattern) { |match, ...| block }</b></p>
<p>Both forms iterate through str, matching the pattern (which may be a Regexp or a String). For each match, a result is generated and either added to the result array or passed to the block. If the pattern contains no groups, each individual result consists of the matched string, $&amp;. If the pattern contains groups, each individual result is
itself an array containing one entry per group.</p></td>
</tr>
<tr>
<td>55</td>
<td><p><b>str.slice(fixnum) [or] str.slice(fixnum, fixnum) [or]</b></p>
<p><b>str.slice(range) [or] str.slice(regexp) [or]</b></p>
<p><b>str.slice(regexp, fixnum) [or] str.slice(other_str)</b></p>
<p><b>See str[fixnum], etc.</b></p>
<p><b>str.slice!(fixnum) [or] str.slice!(fixnum, fixnum) [or]</b></p>
<p><b>str.slice!(range) [or] str.slice!(regexp) [or]</b></p>
<p><b>str.slice!(other_str)</b></p>
<p>Deletes the specified portion from str, and returns the portion deleted. The forms that take a Fixnum will raise an IndexError if the value is out of range; the Range form will raise a RangeError, and the Regexp and String forms
will silently ignore the assignment.</p></td>
</tr>
<tr>
<td>56</td>
<td><b>str.split(pattern=$;, [limit])</b>
<p>Divides str into substrings based on a delimiter, returning an array of these substrings.</p>
<p>If <i>pattern</i>  is a String, then its contents are used as the delimiter when splitting str. If pattern is a single space, str is split on whitespace, with leading whitespace and runs of contiguous whitespace characters ignored.</p>
<p>If <i>pattern</i>  is a Regexp, str is divided where the pattern matches. Whenever the pattern matches a zero-length string, str is split into individual characters.</p> 
<p>If <i>pattern</i> is omitted, the value of $; is used. If $; is nil (which is the default), str is split on whitespace as if ` ` were specified.</p>
<p>If the <i>limit</i> parameter is omitted, trailing null fields are suppressed. If limit is a positive number, at most that
number of fields will be returned (if limit is 1, the entire string is returned as the only entry in an array). If negative,
there is no limit to the number of fields returned, and trailing null fields are not suppressed.</p></td>
</tr>
<tr>
<td>57</td>
<td><b>str.squeeze([other_str]*)</b>
<p>Builds a set of characters from the other_str parameter(s) using the procedure described for String#count. Returns a new string where runs of the same character that occur in this set are replaced by a single character. If no arguments are given, all runs of identical characters are replaced by a single character.</p></td>
</tr>
<tr>
<td>58</td>
<td><b>str.squeeze!([other_str]*)</b>
<p>Squeezes str in place, returning either str, or nil if no changes were made.</p></td>
</tr>
<tr>
<td>59</td>
<td><b>str.strip</b>
<p>Returns a copy of str with leading and trailing whitespace removed.</p></td>
</tr>
<tr>
<td>60</td>
<td><b>str.strip!</b>
<p>Removes leading and trailing whitespace from str. Returns nil if str was not altered.</p></td>
</tr>
<tr>
<td>61</td>
<td><p><b>str.sub(pattern, replacement) [or]</b></p>
<p><b>str.sub(pattern) { |match| block }</b></p>
<p>Returns a copy of str with the first occurrence of pattern replaced with either replacement or the value of the block. The pattern will typically be a Regexp; if it is a String then no regular expression metacharacters will be
interpreted.</p></td>
</tr>
<tr>
<td>62</td>
<td><p><b>str.sub!(pattern, replacement) [or]</b></p>
<p><b>str.sub!(pattern) { |match| block }</b></p>
<p>Performs the substitutions of String#sub in place, returning str, or nil if no substitutions were performed.</p></td>
</tr>
<tr>
<td>63</td>
<td><b>str.succ [or] str.next</b>
<p>Returns the successor to str.</p></td>
</tr>
<tr>
<td>64</td>
<td><b>str.succ! [or] str.next!</b>
<p>Equivalent to String#succ, but modifies the receiver in place.</p></td>
</tr>
<tr>
<td>65</td>
<td><b>str.sum(n=16)</b>
<p>Returns a basic n-bit checksum of the characters in str, where n is the optional Fixnum parameter, defaulting to 16. The result is simply the sum of the binary value of each character in str modulo 2n - 1. This is not a particularly good checksum.</p></td>
</tr>
<tr>
<td>66</td>
<td><b>str.swapcase</b>
<p>Returns a copy of str with uppercase alphabetic characters converted to lowercase and lowercase characters converted to uppercase.</p></td>
</tr>
<tr>
<td>67</td>
<td><b>str.swapcase!</b>
<p>Equivalent to String#swapcase, but modifies the receiver in place, returning str, or nil if no changes were made.</p></td>
</tr>
<tr>
<td>68</td>
<td><b>str.to_f</b>
<p>Returns the result of interpreting leading characters in str as a floating-point number. Extraneous characters past the end of a valid number are ignored. If there is not a valid number at the start of str, 0.0 is returned. This method never raises an exception.</p></td>
</tr>
<tr>
<td>69</td>
<td><b>str.to_i(base=10)</b>
<p>Returns the result of interpreting leading characters in str as an integer base (base 2, 8, 10, or 16). Extraneous characters past the end of a valid number are ignored. If there is not a valid number at the start of str, 0 is returned. This method never raises an exception.</p></td>
</tr>
<tr>
<td>70</td>
<td><b>str.to_s [or] str.to_str</b>
<p>Returns the receiver.</p></td>
</tr>
<tr>
<td>71</td>
<td><b>str.tr(from_str, to_str)</b>
<p>Returns a copy of str with the characters in from_str replaced by the corresponding characters in to_str. If to_str is shorter than from_str, it is padded with its last character. Both strings may use the c1.c2 notation to denote ranges of characters, and from_str may start with a ^, which denotes all characters except those  listed.</p></td>
</tr>
<tr>
<td>72</td>
<td><b>str.tr!(from_str, to_str)</b>
<p>Translates str in place, using the same rules as String#tr. Returns str, or nil if no changes were made.</p></td>
</tr>
<tr>
<td>73</td>
<td><b>str.tr_s(from_str, to_str)</b>
<p>Processes a copy of str as described under String#tr, then removes duplicate characters in regions that were affected by the translation.</p></td>
</tr>
<tr>
<td>74</td>
<td><b>str.tr_s!(from_str, to_str)</b>
<p>Performs String#tr_s processing on str in place, returning str, or nil if no changes were made.</p></td>
</tr>
<tr>
<td>75</td>
<td><b>str.unpack(format)</b>
<p>Decodes str (which may contain binary data) according to the format string, returning an array of each value extracted. The format string consists of a sequence of single-character directives, summarized in Table 18.
Each directive may be followed by a number, indicating the number of times to repeat with this directive. An asterisk (*) will use up all remaining elements. The directives sSiIlL may each be followed by an underscore (_) to use the underlying platform's native size for the specified type; otherwise, it uses a platform-independent consistent size. Spaces are ignored in the format string.</p></td>
</tr>
<tr>
<td>76</td>
<td><b>str.upcase</b>
<p>Returns a copy of str with all lowercase letters replaced with their uppercase counterparts. The operation is locale insensitive.only characters a to z are affected.</p></td>
</tr>
<tr>
<td>77</td>
<td><b>str.upcase!</b>
<p>Changes the contents of str to uppercase, returning nil if no changes are made.</p></td>
</tr>
<tr>
<td>78</td>
<td><b>str.upto(other_str) { |s| block }</b>
<p>Iterates through successive values, starting at str and ending at other_str inclusive, passing each value in turn to the block. The String#succ method is used to generate each value.</p></td>
</tr>
</tbody></table>
<h2>String unpack directives:</h2>
<p>Following table lists unpack directives for method String#unpack.</p>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Directive</th><th>Returns</th><th>Description</th></tr>
<tr><td>A</td><td>String</td><td>With trailing nulls and spaces removed.</td></tr>
<tr><td>a</td><td>String</td><td>String.</td></tr>
<tr><td>B</td><td>String</td><td>Extract bits from each character (most significant bit first).</td></tr>
<tr><td>b</td><td>String</td><td>Extract bits from each character (least significant bit first).</td></tr>
<tr><td>C</td><td>Fixnum</td><td>Extract a character as an unsigned integer.</td></tr>
<tr><td>c</td><td>Fixnum</td><td>Extract a character as an integer.</td></tr>
<tr><td>D, d</td><td>Float</td><td>Treat sizeof(double) characters as a native double.</td></tr>
<tr><td>E</td><td>Float</td><td>Treat sizeof(double) characters as a double in littleendian byte order.</td></tr>
<tr><td>e</td><td>Float</td><td>Treat sizeof(float) characters as a float in littleendian byte order.</td></tr>
<tr><td>F, f</td><td>Float</td><td>Treat sizeof(float) characters as a native float.</td></tr>
<tr><td>G</td><td>Float</td><td>Treat sizeof(double) characters as a double in network byte order.</td></tr>
<tr><td>g</td><td>String</td><td>Treat sizeof(float) characters as a float in network byte order.</td></tr>
<tr><td>H</td><td>String</td><td>Extract hex nibbles from each character (most significant bit first)</td></tr>
<tr><td>h</td><td>String</td><td>Extract hex nibbles from each character (least significant bit first).</td></tr>
<tr><td>I</td><td>Integer</td><td>Treat sizeof(int) (modified by _) successive characters as an unsigned native integer.</td></tr>
<tr><td>i</td><td>Integer</td><td>Treat sizeof(int) (modified by _) successive characters as a signed native integer.</td></tr>
<tr><td>L</td><td>Integer</td><td>Treat four (modified by _) successive characters as an unsigned native long integer.</td></tr>
<tr><td>l</td><td>Integer</td><td>Treat four (modified by _) successive characters as a signed native long integer.</td></tr>
<tr><td>M</td><td>String</td><td>Quoted-printable.</td></tr>
<tr><td>m</td><td>String</td><td>Base64-encoded.</td></tr>
<tr><td>N</td><td>Integer</td><td>Treat four characters as an unsigned long in network byte order.</td></tr>
<tr><td>n</td><td>Fixnum</td><td>Treat two characters as an unsigned short in network byte order.</td></tr>
<tr><td>P</td><td>String</td><td>Treat sizeof(char *) characters as a pointer, and return \emph{len} characters from the referenced location.</td></tr>
<tr><td>p</td><td>String</td><td>Treat sizeof(char *) characters as a pointer to a null-terminated string.</td></tr>
<tr><td>Q</td><td>Integer</td><td>Treat eight characters as an unsigned quad word (64 bits).</td></tr>
<tr><td>q</td><td>Integer</td><td>Treat eight characters as a signed quad word (64 bits).</td></tr>
<tr><td>S</td><td>Fixnum</td><td>Treat two (different if _ used) successive characters as an unsigned short in native byte order.</td></tr>
<tr><td>s</td><td>Fixnum</td><td>Treat two (different if _ used) successive characters as a signed short in native byte order.</td></tr>
<tr><td>U</td><td>Integer</td><td>UTF-8 characters as unsigned integers.</td></tr>
<tr><td>u</td><td>String</td><td>UU-encoded.</td></tr>
<tr><td>V</td><td>Fixnum</td><td>Treat four characters as an unsigned long in little-endian byte order.</td></tr>
<tr><td>v</td><td>Fixnum</td><td>Treat two characters as an unsigned short in little-endian byte order.</td></tr>
<tr><td>w</td><td>Integer</td><td>BER-compressed integer.</td></tr>
<tr><td>X</td><td>&nbsp;</td><td>Skip backward one character.</td></tr>
<tr><td>x</td><td>&nbsp;</td><td>Skip forward one character.</td></tr>
<tr><td>Z</td><td>String</td><td>With trailing nulls removed up to first null with *.</td></tr>
<tr><td>@</td><td>&nbsp;</td><td>Skip to the offset given by the length argument.</td></tr>
</tbody></table>
<h2>Example:</h2>
<p>Try the following example to unpack various data.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="str">"abc \0\0abc \0\0"</span><span class="pun">.</span><span class="pln">unpack</span><span class="pun">(</span><span class="str">'A6Z6'</span><span class="pun">)</span><span class="pln">   </span><span class="com">#=&gt; ["abc", "abc "]</span><span class="pln">
</span><span class="str">"abc \0\0"</span><span class="pun">.</span><span class="pln">unpack</span><span class="pun">(</span><span class="str">'a3a3'</span><span class="pun">)</span><span class="pln">           </span><span class="com">#=&gt; ["abc", " \000\000"]</span><span class="pln">
</span><span class="str">"abc \0abc \0"</span><span class="pun">.</span><span class="pln">unpack</span><span class="pun">(</span><span class="str">'Z*Z*'</span><span class="pun">)</span><span class="pln">       </span><span class="com">#=&gt; ["abc ", "abc "]</span><span class="pln">
</span><span class="str">"aa"</span><span class="pun">.</span><span class="pln">unpack</span><span class="pun">(</span><span class="str">'b8B8'</span><span class="pun">)</span><span class="pln">                 </span><span class="com">#=&gt; ["10000110", "01100001"]</span><span class="pln">
</span><span class="str">"aaa"</span><span class="pun">.</span><span class="pln">unpack</span><span class="pun">(</span><span class="str">'h2H2c'</span><span class="pun">)</span><span class="pln">               </span><span class="com">#=&gt; ["16", "61", 97]</span><span class="pln">
</span><span class="str">"\xfe\xff\xfe\xff"</span><span class="pun">.</span><span class="pln">unpack</span><span class="pun">(</span><span class="str">'sS'</span><span class="pun">)</span><span class="pln">     </span><span class="com">#=&gt; [-2, 65534]</span><span class="pln">
</span><span class="str">"now=20is"</span><span class="pun">.</span><span class="pln">unpack</span><span class="pun">(</span><span class="str">'M*'</span><span class="pun">)</span><span class="pln">             </span><span class="com">#=&gt; ["now is"]</span><span class="pln">
</span><span class="str">"whole"</span><span class="pun">.</span><span class="pln">unpack</span><span class="pun">(</span><span class="str">'xax2aX2aX1aX2a'</span><span class="pun">)</span><span class="pln">    </span><span class="com">#=&gt; ["h", "e", "l", "l", "o"]</span></pre>

</div>
</ion-content>
</ion-view>