<ion-view view-title="02 - Environment Setup">
<ion-content style="margin:0 12px">
	<div class="col-md-7 middle-col">
<h1>Environment Setup</h1>
<hr>
<h2>Local Environment Setup</h2>
<p>If you are still willing to set up your environment for Ruby programming language, then let's proceed. This tutorial will teach you all the important topics related to environment setup. I would recommend to go through the following topics first and then proceed further:</p>
<ion-list>
<li><p><a href="#/app/basic/02_installation_unix.html">Ruby Installation on Linux/Unix</a> : If you are planning to have your development environment on Linux/Unix Machine, then go through this chapter.</p></li>
<li><p><a href="#/app/basic/02_installation_windows.html">Ruby Installation on Windows</a> : If you are planning to have your development environment on Windows Machine, then go through this chapter.</p></li>
<li><p><a href="#/app/basic/02_command_line_options.html">Ruby Command Line Options</a> : This chapter list out all the command line options, which you can use along with Ruby interpreter.</p></li>
<li><p><a href="#/app/basic/02_environment_variables.html">Ruby Environment Variables</a> : This chapter has a list of all the important environment variables to be set to make Ruby Interpreter works.</p></li>
</ion-list>
<h2>Popular Ruby Editors:</h2>
<p>To write your Ruby programs, you will need an editor:</p>
<ion-list>
<li><p>If you are working on Windows machine, then you can use any simple text editor like Notepad or Edit plus.</p></li>
<li><p><a onclick="window.open('http://vim.sourceforge.net/','_system')">VIM</a> (Vi IMproved) is very simple text editor. This is available on almost all Unix machines and now Windows as well. Otherwise, your can use your favorite vi editor to write Ruby programs.</p></li>
<li><p><a onclick="window.open('http://homepage1.nifty.com/markey/ruby/rubywin/index_e.html','_system')" title="RubyWin">RubyWin</a> is a Ruby Integrated Development Environment (IDE) for Windows.</p></li>
<li><p>Ruby Development Environment <a onclick="window.open('http://homepage2.nifty.com/sakazuki/rde_en/','_system')" title="RDE">(RDE)</a> is also very good IDE for windows users.</p></li>
</ion-list>
<h2>Interactive Ruby (IRb):</h2>
<p>Interactive Ruby (IRb) provides a shell for experimentation. Within the IRb shell, you can immediately view expression results, line by line.</p>
<p>This tool comes along with Ruby installation so you have nothing to do extra to have IRb working.</p>
<p>Just type <b>irb</b> at your command prompt and an Interactive Ruby Session will start as given below:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">$irb
irb </span><span class="lit">0.6</span><span class="pun">.</span><span class="lit">1</span><span class="pun">(</span><span class="lit">99</span><span class="pun">/</span><span class="lit">09</span><span class="pun">/</span><span class="lit">16</span><span class="pun">)</span><span class="pln">
irb</span><span class="pun">(</span><span class="pln">main</span><span class="pun">):</span><span class="lit">001</span><span class="pun">:</span><span class="lit">0</span><span class="pun">&gt;</span><span class="pln"> </span><span class="kwd">def</span><span class="pln"> hello
irb</span><span class="pun">(</span><span class="pln">main</span><span class="pun">):</span><span class="lit">002</span><span class="pun">:</span><span class="lit">1</span><span class="pun">&gt;</span><span class="pln"> </span><span class="kwd">out</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> </span><span class="str">"Hello World"</span><span class="pln">
irb</span><span class="pun">(</span><span class="pln">main</span><span class="pun">):</span><span class="lit">003</span><span class="pun">:</span><span class="lit">1</span><span class="pun">&gt;</span><span class="pln"> puts </span><span class="kwd">out</span><span class="pln">
irb</span><span class="pun">(</span><span class="pln">main</span><span class="pun">):</span><span class="lit">004</span><span class="pun">:</span><span class="lit">1</span><span class="pun">&gt;</span><span class="pln"> </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">nil</span><span class="pln">
irb</span><span class="pun">(</span><span class="pln">main</span><span class="pun">):</span><span class="lit">005</span><span class="pun">:</span><span class="lit">0</span><span class="pun">&gt;</span><span class="pln"> hello
</span><span class="typ">Hello</span><span class="pln"> </span><span class="typ">World</span><span class="pln">
</span><span class="kwd">nil</span><span class="pln">
irb</span><span class="pun">(</span><span class="pln">main</span><span class="pun">):</span><span class="lit">006</span><span class="pun">:</span><span class="lit">0</span><span class="pun">&gt;</span></pre>
<p>Do not worry about what I did here. You will learn about all these steps in subsequent chapters.</p>
<h2>What is Next?</h2>
<p>I assume now you have a working Ruby Environment and you are ready to write first Ruby Programs. Next chapter will teach you how to write Ruby programs.</p>
</div>
</ion-content>
</ion-view>