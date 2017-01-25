<ion-view view-title="19 - File I/O">
  <ion-content style="margin:0 12px">
  <div class="col-md-7 middle-col">
<h1>File I/O, Directories</h1>
<hr>
<p>Ruby provides a whole set of I/O-related methods implemented in the Kernel module. All the I/O methods are derived from the class IO.</p>
<p>The class <i>IO</i> provides all the basic methods, such as <i>read, write, gets, puts, readline, getc,</i> and <i>printf</i>.</p>
<p>This chapter will cover all  the basic I/O functions available in Ruby. For more functions, please refer to Ruby Class <i>IO</i>.</p>
<h2>The <i>puts</i> Statement:</h2>
<p>In previous chapters, you assigned values to variables and then printed the output using <i>puts</i> statement.</p>
<p>The <i>puts</i> statement instructs the program to display the value stored in the variable. This will add a new line at the end of each line it writes.</p>
<h2>Example:</h2>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

val1 </span><span class="pun">=</span><span class="pln"> </span><span class="str">"This is variable one"</span><span class="pln">
val2 </span><span class="pun">=</span><span class="pln"> </span><span class="str">"This is variable two"</span><span class="pln">
puts val1
puts val2</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">This</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> variable one
</span><span class="typ">This</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> variable two</span></pre>
<h2>The <i>gets</i> Statement:</h2>
<p>The <i>gets</i> statement can be used to take any input from the user from standard screen called STDIN.</p>
<h2>Example:</h2>
<p>The following code shows you how to use the gets statement. This code will prompt the user to enter a value, which will be
stored in a variable val and finally will be printed on STDOUT.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

puts </span><span class="str">"Enter a value :"</span><span class="pln">
val </span><span class="pun">=</span><span class="pln"> gets
puts val</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Enter</span><span class="pln"> a value </span><span class="pun">:</span><span class="pln">
</span><span class="typ">This</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> entered value
</span><span class="typ">This</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> entered value</span></pre>
<h2>The <i>putc</i> Statement:</h2>
<p>Unlike the <i>puts</i> statement, which outputs the entire string onto the screen, the <i>putc</i> statement can be used to output one character at a time.</p>
<h2>Example:</h2>
<p>The output of the following code is just the character H:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

str</span><span class="pun">=</span><span class="str">"Hello Ruby!"</span><span class="pln">
putc str</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">H</span></pre>
<h2>The <i>print</i> Statement:</h2>
<p>The <i>print</i> statement is similar to the <i>puts</i> statement. The only difference is that the <i>puts</i> statement goes to the next line after printing the contents, whereas with the <i>print</i> statement the cursor is positioned on the same line.</p>
<h2>Example:</h2>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">print</span><span class="pln"> </span><span class="str">"Hello World"</span><span class="pln">
</span><span class="kwd">print</span><span class="pln"> </span><span class="str">"Good Morning"</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Hello</span><span class="pln"> </span><span class="typ">WorldGood</span><span class="pln"> </span><span class="typ">Morning</span></pre>
<h2>Opening and Closing Files:</h2>
<p>Until now, you have been reading and writing to the standard input and output. Now, we will see how to play with actual data files.</p>
<h2>The <i>File.new</i> Method:</h2>
<p>You can create a <i>File</i> object using <i>File.new</i> method for reading, writing, or both, according to the mode string. Finally, you can use <i>File.close</i> method to close that file.</p>
<h2>Syntax:</h2>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">aFile </span><span class="pun">=</span><span class="pln"> </span><span class="typ">File</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"filename"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"mode"</span><span class="pun">)</span><span class="pln">
   </span><span class="com"># ... process the file</span><span class="pln">
aFile</span><span class="pun">.</span><span class="pln">close</span></pre>
<h2>The <i>File.open</i> Method:</h2>
<p>You can use <i>File.open</i> method to create a new file object and assign that file object to a file. However, there
is one difference in between <i>File.open</i> and <i>File.new</i> methods. The difference is that the <i>File.open</i> method can be associated with a block, whereas you cannot do the same using the <i>File.new</i> method.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">File</span><span class="pun">.</span><span class="pln">open</span><span class="pun">(</span><span class="str">"filename"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"mode"</span><span class="pun">)</span><span class="pln"> </span><span class="kwd">do</span><span class="pln"> </span><span class="pun">|</span><span class="pln">aFile</span><span class="pun">|</span><span class="pln">
   </span><span class="com"># ... process the file</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>Here is a list of The Different Modes of Opening a File:</p>
<table class="table table-bordered">
<tbody><tr><th>Modes</th><th>Description</th></tr>
<tr><td>r</td><td>Read-only mode. The file pointer is placed at the beginning of the file. This is the default mode.</td></tr>
<tr><td>r+</td><td>Read-write mode. The file pointer will be at the beginning of the file.</td></tr>
<tr><td>w</td><td>Write-only mode. Overwrites the file if the file exists. If the file does not exist, creates a new file for writing.</td></tr>
<tr><td>w+</td><td>Read-write mode. Overwrites the existing file if the file exists. If the file does not exist, creates a new file for reading and writing.</td></tr> 
<tr><td>a</td><td>Write-only mode. The file pointer is at the end of the file if the file exists. That is, the file is in the append mode. If the file does not exist, it creates a new file for writing.</td></tr> 
<tr><td>a+</td><td>Read and write mode. The file pointer is at the end of the file if the file exists. The file opens in the append mode. If the file does not exist, it creates a new file for reading and writing.</td></tr> 
</tbody></table>
<h2>Reading and Writing Files:</h2>
<p>The same methods that we've been using for 'simple' I/O are available for all file objects. So, gets reads a line from standard input, and <i>aFile.gets</i> reads a line from the file object aFile.</p>
<p>However, I/O objects provides additional set of access methods to make our lives easier.</p>
<h2>The <i>sysread</i> Method:</h2>
<p>You can use the method <i>sysread</i> to read the contents of a file. You can open the file in any of the modes when using the method sysread. For example :</p>
<p>Following is the input text file:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">This</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> a simple text file </span><span class="kwd">for</span><span class="pln"> testing purpose</span><span class="pun">.</span></pre>
<p>Now let's try to read thsi file:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

aFile </span><span class="pun">=</span><span class="pln"> </span><span class="typ">File</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"input.txt"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"r"</span><span class="pun">)</span><span class="pln">
</span><span class="kwd">if</span><span class="pln"> aFile
   content </span><span class="pun">=</span><span class="pln"> aFile</span><span class="pun">.</span><span class="pln">sysread</span><span class="pun">(</span><span class="lit">20</span><span class="pun">)</span><span class="pln">
   puts content
</span><span class="kwd">else</span><span class="pln">
   puts </span><span class="str">"Unable to open file!"</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>This statement will output the first 20 characters of the file. The file pointer will now be placed at the 21st character in the file.</p>
<h2>The <i>syswrite</i> Method:</h2>
<p>You can use the method syswrite to write the contents into a file. You need to open the file in write mode when using the method syswrite. For example:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

aFile </span><span class="pun">=</span><span class="pln"> </span><span class="typ">File</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"input.txt"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"r+"</span><span class="pun">)</span><span class="pln">
</span><span class="kwd">if</span><span class="pln"> aFile
   aFile</span><span class="pun">.</span><span class="pln">syswrite</span><span class="pun">(</span><span class="str">"ABCDEF"</span><span class="pun">)</span><span class="pln">
</span><span class="kwd">else</span><span class="pln">
   puts </span><span class="str">"Unable to open file!"</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>This statement will write "ABCDEF" into the file.</p>
<h2>The <i>each_byte</i> Method:</h2>
<p>This method belongs to the class <i>File</i>. The method <i>each_byte</i> is always associated with a block. Consider the following code sample:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

aFile </span><span class="pun">=</span><span class="pln"> </span><span class="typ">File</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"input.txt"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"r+"</span><span class="pun">)</span><span class="pln">
</span><span class="kwd">if</span><span class="pln"> aFile
   aFile</span><span class="pun">.</span><span class="pln">syswrite</span><span class="pun">(</span><span class="str">"ABCDEF"</span><span class="pun">)</span><span class="pln">
   aFile</span><span class="pun">.</span><span class="pln">each_byte </span><span class="pun">{|</span><span class="pln">ch</span><span class="pun">|</span><span class="pln"> putc ch</span><span class="pun">;</span><span class="pln"> putc </span><span class="pun">?.</span><span class="pln"> </span><span class="pun">}</span><span class="pln">
</span><span class="kwd">else</span><span class="pln">
   puts </span><span class="str">"Unable to open file!"</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>Characters are passed one by one to the variable ch and then displayed on the screen as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">s</span><span class="pun">.</span><span class="pln"> </span><span class="pun">.</span><span class="pln">a</span><span class="pun">.</span><span class="pln"> </span><span class="pun">.</span><span class="pln">s</span><span class="pun">.</span><span class="pln">i</span><span class="pun">.</span><span class="pln">m</span><span class="pun">.</span><span class="pln">p</span><span class="pun">.</span><span class="pln">l</span><span class="pun">.</span><span class="pln">e</span><span class="pun">.</span><span class="pln"> </span><span class="pun">.</span><span class="pln">t</span><span class="pun">.</span><span class="pln">e</span><span class="pun">.</span><span class="pln">x</span><span class="pun">.</span><span class="pln">t</span><span class="pun">.</span><span class="pln"> </span><span class="pun">.</span><span class="pln">f</span><span class="pun">.</span><span class="pln">i</span><span class="pun">.</span><span class="pln">l</span><span class="pun">.</span><span class="pln">e</span><span class="pun">.</span><span class="pln"> </span><span class="pun">.</span><span class="pln">f</span><span class="pun">.</span><span class="pln">o</span><span class="pun">.</span><span class="pln">r</span><span class="pun">.</span><span class="pln"> </span><span class="pun">.</span><span class="pln">t</span><span class="pun">.</span><span class="pln">e</span><span class="pun">.</span><span class="pln">s</span><span class="pun">.</span><span class="pln">t</span><span class="pun">.</span><span class="pln">i</span><span class="pun">.</span><span class="pln">n</span><span class="pun">.</span><span class="pln">g</span><span class="pun">.</span><span class="pln"> </span><span class="pun">.</span><span class="pln">p</span><span class="pun">.</span><span class="pln">u</span><span class="pun">.</span><span class="pln">r</span><span class="pun">.</span><span class="pln">p</span><span class="pun">.</span><span class="pln">o</span><span class="pun">.</span><span class="pln">s</span><span class="pun">.</span><span class="pln">e</span><span class="pun">...</span><span class="pln">
</span><span class="pun">.</span><span class="pln">
</span><span class="pun">.</span></pre>
<h2>The <i>IO.readlines</i> Method:</h2>
<p>The class <i>File</i> is a subclass of the class IO. The class IO also has some methods, which can be used to manipulate files.</p>
<p>One of the IO class methods is <i>IO.readlines</i>. This method returns the contents of the file line by line. The following code displays the use of the method <i>IO.readlines</i>:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

arr </span><span class="pun">=</span><span class="pln"> IO</span><span class="pun">.</span><span class="pln">readlines</span><span class="pun">(</span><span class="str">"input.txt"</span><span class="pun">)</span><span class="pln">
puts arr</span><span class="pun">[</span><span class="lit">0</span><span class="pun">]</span><span class="pln">
puts arr</span><span class="pun">[</span><span class="lit">1</span><span class="pun">]</span></pre>
<p>In this code, the variable arr is an array. Each line of the file <i>input.txt</i> will be an element in the array arr. Therefore, arr[0] will contain the first line, whereas arr[1] will contain the second line of the file.</p>
<h2>The <i>IO.foreach</i> Method:</h2>
<p>This method also returns output line by line. The difference between the method <i>foreach</i> and the method <i>readlines</i> is that the method <i>foreach</i> is associated with a block. However, unlike the method <i>readlines</i>, the method <i>foreach</i> does not return an array. For example:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

IO</span><span class="pun">.</span><span class="kwd">foreach</span><span class="pun">(</span><span class="str">"input.txt"</span><span class="pun">){|</span><span class="pln">block</span><span class="pun">|</span><span class="pln"> puts block</span><span class="pun">}</span></pre>
<p>This code will pass the contents of the file <i>test</i> line by line to the variable block, and then the output will be displayed on the screen.</p>
<h2>Renaming and Deleting Files:</h2>
<p>You can rename and delete files programmatically with Ruby with the <i>rename</i> and <i>delete</i> methods.</p>
<p>Following is the example to rename an existing file <i>test1.txt</i>:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="com"># Rename a file from test1.txt to test2.txt</span><span class="pln">
</span><span class="typ">File</span><span class="pun">.</span><span class="pln">rename</span><span class="pun">(</span><span class="pln"> </span><span class="str">"test1.txt"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"test2.txt"</span><span class="pln"> </span><span class="pun">)</span><span class="pln">
</span></pre>
<p>Following is the example to delete an existing file <i>test2.txt</i>:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="com"># Delete file test2.txt</span><span class="pln">
</span><span class="typ">File</span><span class="pun">.</span><span class="kwd">delete</span><span class="pun">(</span><span class="str">"test2.txt"</span><span class="pun">)</span></pre>
<h2>File Modes and Ownership:</h2>
<p>Use the <i>chmod</i> method with a mask to change the mode or permissions/access list of a file:</p>
<p>Following is the example to change mode of an existing file <i>test.txt</i> to a mask value:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

file </span><span class="pun">=</span><span class="pln"> </span><span class="typ">File</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln"> </span><span class="str">"test.txt"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"w"</span><span class="pln"> </span><span class="pun">)</span><span class="pln">
file</span><span class="pun">.</span><span class="pln">chmod</span><span class="pun">(</span><span class="pln"> </span><span class="lit">0755</span><span class="pln"> </span><span class="pun">)</span></pre>
<p>Following is the table, which can help you to choose different mask for <i>chmod</i> method:</p>
<table class="table table-bordered">
<tbody><tr><th style="width:25%">Mask</th><th>Description</th></tr>
<tr><td>0700</td><td>rwx mask for owner</td></tr>
<tr><td>0400</td><td>r for owner</td></tr>
<tr><td>0200</td><td>w for owner</td></tr>
<tr><td>0100</td><td>x for owner</td></tr>
<tr><td>0070</td><td>rwx mask for group</td></tr>
<tr><td>0040</td><td>r for group</td></tr>
<tr><td>0020</td><td>w for group</td></tr>
<tr><td>0010</td><td>x for group</td></tr>
<tr><td>0007</td><td>rwx mask for other</td></tr>
<tr><td>0004</td><td>r for other</td></tr>
<tr><td>0002</td><td>w for other</td></tr>
<tr><td>0001</td><td>x for other</td></tr>
<tr><td>4000</td><td>Set user ID on execution</td></tr>
<tr><td>2000</td><td>Set group ID on execution</td></tr>
<tr><td>1000</td><td>Save swapped text, even after use</td></tr>
</tbody></table>
<h2>File Inquiries:</h2>
<p>The following command tests whether a file exists before opening it:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="typ">File</span><span class="pun">.</span><span class="pln">open</span><span class="pun">(</span><span class="str">"file.rb"</span><span class="pun">)</span><span class="pln"> </span><span class="kwd">if</span><span class="pln"> </span><span class="typ">File</span><span class="pun">::</span><span class="pln">exists</span><span class="pun">?(</span><span class="pln"> </span><span class="str">"file.rb"</span><span class="pln"> </span><span class="pun">)</span></pre>
<p>The following command inquire whether the file is really a file:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="com"># This returns either </span><i><span class="com">true</span></i><span class="com"> or </span><i><span class="com">false</span></i><span class="pln">
</span><span class="typ">File</span><span class="pun">.</span><span class="pln">file</span><span class="pun">?(</span><span class="pln"> </span><span class="str">"text.txt"</span><span class="pln"> </span><span class="pun">)</span><span class="pln"> </span></pre>
<p>The following command finds out if it given file name is a directory:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="com"># a directory</span><span class="pln">
</span><span class="typ">File</span><span class="pun">::</span><span class="pln">directory</span><span class="pun">?(</span><span class="pln"> </span><span class="str">"/usr/local/bin"</span><span class="pln"> </span><span class="pun">)</span><span class="pln"> </span><span class="com"># =&gt; true</span><span class="pln">

</span><span class="com"># a file</span><span class="pln">
</span><span class="typ">File</span><span class="pun">::</span><span class="pln">directory</span><span class="pun">?(</span><span class="pln"> </span><span class="str">"file.rb"</span><span class="pln"> </span><span class="pun">)</span><span class="pln"> </span><span class="com"># =&gt; false</span></pre>
<p>The following command finds whether the file is readable, writable or executable:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="typ">File</span><span class="pun">.</span><span class="pln">readable</span><span class="pun">?(</span><span class="pln"> </span><span class="str">"test.txt"</span><span class="pln"> </span><span class="pun">)</span><span class="pln">   </span><span class="com"># =&gt; true</span><span class="pln">
</span><span class="typ">File</span><span class="pun">.</span><span class="pln">writable</span><span class="pun">?(</span><span class="pln"> </span><span class="str">"test.txt"</span><span class="pln"> </span><span class="pun">)</span><span class="pln">   </span><span class="com"># =&gt; true</span><span class="pln">
</span><span class="typ">File</span><span class="pun">.</span><span class="pln">executable</span><span class="pun">?(</span><span class="pln"> </span><span class="str">"test.txt"</span><span class="pln"> </span><span class="pun">)</span><span class="pln"> </span><span class="com"># =&gt; false</span></pre>
<p>The following command finds whether the file has zero size or not:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="typ">File</span><span class="pun">.</span><span class="pln">zero</span><span class="pun">?(</span><span class="pln"> </span><span class="str">"test.txt"</span><span class="pln"> </span><span class="pun">)</span><span class="pln">      </span><span class="com"># =&gt; true</span></pre>
<p>The following command returns size of the file :</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="typ">File</span><span class="pun">.</span><span class="pln">size</span><span class="pun">?(</span><span class="pln"> </span><span class="str">"text.txt"</span><span class="pln"> </span><span class="pun">)</span><span class="pln">     </span><span class="com"># =&gt; 1002</span></pre>
<p>The following command can be used to find out a type of file :</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="typ">File</span><span class="pun">::</span><span class="pln">ftype</span><span class="pun">(</span><span class="pln"> </span><span class="str">"test.txt"</span><span class="pln"> </span><span class="pun">)</span><span class="pln">     </span><span class="com"># =&gt; file</span></pre>
<p>The ftype method identifies the type of the file by returning one of the following: <i>file, directory, characterSpecial,
blockSpecial, fifo, link, socket, or unknown.</i></p>
<p>The following command can be used to find when a file was created, modified, or last accessed :</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="typ">File</span><span class="pun">::</span><span class="pln">ctime</span><span class="pun">(</span><span class="pln"> </span><span class="str">"test.txt"</span><span class="pln"> </span><span class="pun">)</span><span class="pln"> </span><span class="com"># =&gt; Fri May 09 10:06:37 -0700 2008</span><span class="pln">
</span><span class="typ">File</span><span class="pun">::</span><span class="pln">mtime</span><span class="pun">(</span><span class="pln"> </span><span class="str">"text.txt"</span><span class="pln"> </span><span class="pun">)</span><span class="pln"> </span><span class="com"># =&gt; Fri May 09 10:44:44 -0700 2008</span><span class="pln">
</span><span class="typ">File</span><span class="pun">::</span><span class="pln">atime</span><span class="pun">(</span><span class="pln"> </span><span class="str">"text.txt"</span><span class="pln"> </span><span class="pun">)</span><span class="pln"> </span><span class="com"># =&gt; Fri May 09 10:45:01 -0700 2008</span></pre>
<h2>Directories in Ruby:</h2>
<p>All files are contained within various directories, and Ruby has no problem handling these too. Whereas the <i>File</i> class handles files, directories are handled with the <i>Dir</i> class.</p>
<h2>Navigating Through Directories:</h2>
<p>To change directory within a Ruby program, use <i>Dir.chdir</i> as follows. This example changes the current directory to <i>/usr/bin</i>.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Dir</span><span class="pun">.</span><span class="pln">chdir</span><span class="pun">(</span><span class="str">"/usr/bin"</span><span class="pun">)</span></pre>
<p>You can find out what the current directory is with <i> Dir.pwd</i>:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">puts </span><span class="typ">Dir</span><span class="pun">.</span><span class="pln">pwd </span><span class="com"># This will return something like /usr/bin</span></pre>
<p>You can get a list of the files and directories within a specific directory using <i>Dir.entries</i>:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">puts </span><span class="typ">Dir</span><span class="pun">.</span><span class="pln">entries</span><span class="pun">(</span><span class="str">"/usr/bin"</span><span class="pun">).</span><span class="pln">join</span><span class="pun">(</span><span class="str">' '</span><span class="pun">)</span></pre>
<p><i>Dir.entries</i> returns an array with all the entries within the specified directory. <i>Dir.foreach</i> provides the same feature:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Dir</span><span class="pun">.</span><span class="kwd">foreach</span><span class="pun">(</span><span class="str">"/usr/bin"</span><span class="pun">)</span><span class="pln"> </span><span class="kwd">do</span><span class="pln"> </span><span class="pun">|</span><span class="pln">entry</span><span class="pun">|</span><span class="pln">
   puts entry
</span><span class="kwd">end</span></pre>
<p>An even more concise way of getting directory listings is by using Dir's class array method:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Dir</span><span class="pun">[</span><span class="str">"/usr/bin/*"</span><span class="pun">]</span></pre>
<h2>Creating a Directory:</h2>
<p>The <i>Dir.mkdir</i> can be used  to create directories:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Dir</span><span class="pun">.</span><span class="pln">mkdir</span><span class="pun">(</span><span class="str">"mynewdir"</span><span class="pun">)</span></pre>
<p>You can also set permissions on a new directory (not one that already exists) with mkdir: </p>
<p><b>NOTE:</b> The mask 755 sets permissions owner, group, world [anyone] to rwxr-xr-x where r = read, w = write, and x = execute.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Dir</span><span class="pun">.</span><span class="pln">mkdir</span><span class="pun">(</span><span class="pln"> </span><span class="str">"mynewdir"</span><span class="pun">,</span><span class="pln"> </span><span class="lit">755</span><span class="pln"> </span><span class="pun">)</span></pre>
<h2>Deleting a Directory:</h2>
<p>The <i>Dir.delete</i> can be used to delete a directory. The <i>Dir.unlink</i> and <i>Dir.rmdir</i> perform exactly the same function and are provided for convenience.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Dir</span><span class="pun">.</span><span class="kwd">delete</span><span class="pun">(</span><span class="str">"testdir"</span><span class="pun">)</span></pre>
<h2>Creating Files &amp; Temporary Directories:</h2>
<p>Temporary files are those that might be created briefly during a program's execution but aren't a permanent store of information.</p>
<p><i>Dir.tmpdir</i> provides the path to the temporary directory on the current system, although the method is not available by default. To make <i>Dir.tmpdir</i> available it's necessary to use require 'tmpdir'.</p>
<p>You can use <i>Dir.tmpdir</i> with <i>File.join</i> to create a platform-independent temporary file:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">require</span><span class="pln"> </span><span class="str">'tmpdir'</span><span class="pln">
   tempfilename </span><span class="pun">=</span><span class="pln"> </span><span class="typ">File</span><span class="pun">.</span><span class="pln">join</span><span class="pun">(</span><span class="typ">Dir</span><span class="pun">.</span><span class="pln">tmpdir</span><span class="pun">,</span><span class="pln"> </span><span class="str">"tingtong"</span><span class="pun">)</span><span class="pln">
   tempfile </span><span class="pun">=</span><span class="pln"> </span><span class="typ">File</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">tempfilename</span><span class="pun">,</span><span class="pln"> </span><span class="str">"w"</span><span class="pun">)</span><span class="pln">
   tempfile</span><span class="pun">.</span><span class="pln">puts </span><span class="str">"This is a temporary file"</span><span class="pln">
   tempfile</span><span class="pun">.</span><span class="pln">close
   </span><span class="typ">File</span><span class="pun">.</span><span class="kwd">delete</span><span class="pun">(</span><span class="pln">tempfilename</span><span class="pun">)</span></pre>
<p>This code creates a temporary file, writes data to it, and deletes it. Ruby's standard library also includes a library called <i>Tempfile</i> that can create temporary files for you:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">require</span><span class="pln"> </span><span class="str">'tempfile'</span><span class="pln">
   f </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Tempfile</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">'tingtong'</span><span class="pun">)</span><span class="pln">
   f</span><span class="pun">.</span><span class="pln">puts </span><span class="str">"Hello"</span><span class="pln">
   puts f</span><span class="pun">.</span><span class="pln">path
   f</span><span class="pun">.</span><span class="pln">close</span></pre>
<h2>Built-in Functions:</h2>
<p>Here is the complete list of ruby built-in functions to process files and directories:</p>
<ion-list>
<li><p><a href="#/app/basic/19_file_methods.html" title="Ruby File Class and Methods">File Class and Methods</a>.</p></li>
<li><p><a href="#/app/basic/19_dir_methods.html" title="Ruby Dir Class and Methods">Dir Class and Methods</a>.</p></li>
</ion-list>
</div>
 </ion-content>
</ion-view>
