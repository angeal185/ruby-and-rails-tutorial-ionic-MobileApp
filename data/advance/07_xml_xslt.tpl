<ion-view view-title="07 - Ruby/XML, XSLT">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Ruby/XML, XSLT and XPath Tutorial</h1>
<hr>
<h2>What is XML ?</h2>
<p>The Extensible Markup Language (XML) is a markup language much like HTML or SGML. This is recommended by the World Wide Web Consortium and available as an open standard.</p>
<p>XML is a portable, open source language that allows programmers to develop applications that can be read by other applications, regardless of operating system and/or developmental language.</p>
<p>XML is extremely useful for keeping track of small to medium amounts of data without requiring a SQL-based backbone.</p>
<h2>XML Parser Architectures and APIs:</h2>
<p>There are two different flavors available for XML parsers:</p>
<ion-list>
<li><p><b>SAX-like (Stream interfaces) :</b>  Here you register callbacks for events of interest and then let the parser proceed through the document. This is useful when your documents are large or you have memory limitations, it parses the file as it reads it from disk, and the entire file is never stored in memory.</p></li>
<li><p><b>DOM-like (Object tree interfaces) : </b> This is World Wide Web Consortium recommendation wherein the entire file is read into memory and stored in a hierarchical (tree-based) form to represent all the features of an XML document.</p></li>
</ion-list>
<p>SAX obviously can't process information as fast as DOM can when working with large files. On the other hand, using DOM exclusively can really kill your resources, especially if used on a lot of small files.</p>
<p>SAX is read-only, while DOM allows changes to the XML file. Since these two different APIs literally complement each other there is no reason why you can't use them both for large projects.</p>
<h2>Parsing and Creating XML using Ruby:</h2>
<p>The most common way to manipulate XML is with the REXML library by Sean Russell. Since 2002, REXML has been part of the standard Ruby distribution.</p>
<p>REXML is a pure-Ruby XML processor conforming to the XML 1.0 standard. It is a <i>nonvalidating</i> processor, passing all of the OASIS nonvalidating conformance tests.</p>
<p>REXML parser has the following advantages over other available parsers:</p>
<ion-list>
<li><p>It is written 100 percent in Ruby.</p></li>
<li><p>It can be used for both SAX and DOM parsing.</p></li>
<li><p>It is lightweight . less than 2000 lines of code.</p></li>
<li><p>Methods and classes are really easy-to-understand.</p></li>
<li><p>SAX2-based API and Full XPath support.</p></li>
<li>Shipped with Ruby installation and no separate installation is required.</li>
</ion-list>
<p>For all our XML code examples, let's use a simple XML file as an input:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="tag">&lt;collection</span><span class="pln"> </span><span class="atn">shelf</span><span class="pun">=</span><span class="atv">"New Arrivals"</span><span class="tag">&gt;</span><span class="pln">
</span><span class="tag">&lt;movie</span><span class="pln"> </span><span class="atn">title</span><span class="pun">=</span><span class="atv">"Enemy Behind"</span><span class="tag">&gt;</span><span class="pln">
   </span><span class="tag">&lt;type&gt;</span><span class="pln">War, Thriller</span><span class="tag">&lt;/type&gt;</span><span class="pln">
   </span><span class="tag">&lt;format&gt;</span><span class="pln">DVD</span><span class="tag">&lt;/format&gt;</span><span class="pln">
   </span><span class="tag">&lt;year&gt;</span><span class="pln">2003</span><span class="tag">&lt;/year&gt;</span><span class="pln">
   </span><span class="tag">&lt;rating&gt;</span><span class="pln">PG</span><span class="tag">&lt;/rating&gt;</span><span class="pln">
   </span><span class="tag">&lt;stars&gt;</span><span class="pln">10</span><span class="tag">&lt;/stars&gt;</span><span class="pln">
   </span><span class="tag">&lt;description&gt;</span><span class="pln">Talk about a US-Japan war</span><span class="tag">&lt;/description&gt;</span><span class="pln">
</span><span class="tag">&lt;/movie&gt;</span><span class="pln">
</span><span class="tag">&lt;movie</span><span class="pln"> </span><span class="atn">title</span><span class="pun">=</span><span class="atv">"Transformers"</span><span class="tag">&gt;</span><span class="pln">
   </span><span class="tag">&lt;type&gt;</span><span class="pln">Anime, Science Fiction</span><span class="tag">&lt;/type&gt;</span><span class="pln">
   </span><span class="tag">&lt;format&gt;</span><span class="pln">DVD</span><span class="tag">&lt;/format&gt;</span><span class="pln">
   </span><span class="tag">&lt;year&gt;</span><span class="pln">1989</span><span class="tag">&lt;/year&gt;</span><span class="pln">
   </span><span class="tag">&lt;rating&gt;</span><span class="pln">R</span><span class="tag">&lt;/rating&gt;</span><span class="pln">
   </span><span class="tag">&lt;stars&gt;</span><span class="pln">8</span><span class="tag">&lt;/stars&gt;</span><span class="pln">
   </span><span class="tag">&lt;description&gt;</span><span class="pln">A schientific fiction</span><span class="tag">&lt;/description&gt;</span><span class="pln">
</span><span class="tag">&lt;/movie&gt;</span><span class="pln">
   </span><span class="tag">&lt;movie</span><span class="pln"> </span><span class="atn">title</span><span class="pun">=</span><span class="atv">"Trigun"</span><span class="tag">&gt;</span><span class="pln">
   </span><span class="tag">&lt;type&gt;</span><span class="pln">Anime, Action</span><span class="tag">&lt;/type&gt;</span><span class="pln">
   </span><span class="tag">&lt;format&gt;</span><span class="pln">DVD</span><span class="tag">&lt;/format&gt;</span><span class="pln">
   </span><span class="tag">&lt;episodes&gt;</span><span class="pln">4</span><span class="tag">&lt;/episodes&gt;</span><span class="pln">
   </span><span class="tag">&lt;rating&gt;</span><span class="pln">PG</span><span class="tag">&lt;/rating&gt;</span><span class="pln">
   </span><span class="tag">&lt;stars&gt;</span><span class="pln">10</span><span class="tag">&lt;/stars&gt;</span><span class="pln">
   </span><span class="tag">&lt;description&gt;</span><span class="pln">Vash the Stampede!</span><span class="tag">&lt;/description&gt;</span><span class="pln">
</span><span class="tag">&lt;/movie&gt;</span><span class="pln">
</span><span class="tag">&lt;movie</span><span class="pln"> </span><span class="atn">title</span><span class="pun">=</span><span class="atv">"Ishtar"</span><span class="tag">&gt;</span><span class="pln">
   </span><span class="tag">&lt;type&gt;</span><span class="pln">Comedy</span><span class="tag">&lt;/type&gt;</span><span class="pln">
   </span><span class="tag">&lt;format&gt;</span><span class="pln">VHS</span><span class="tag">&lt;/format&gt;</span><span class="pln">
   </span><span class="tag">&lt;rating&gt;</span><span class="pln">PG</span><span class="tag">&lt;/rating&gt;</span><span class="pln">
   </span><span class="tag">&lt;stars&gt;</span><span class="pln">2</span><span class="tag">&lt;/stars&gt;</span><span class="pln">
   </span><span class="tag">&lt;description&gt;</span><span class="pln">Viewable boredom</span><span class="tag">&lt;/description&gt;</span><span class="pln">
</span><span class="tag">&lt;/movie&gt;</span><span class="pln">
</span><span class="tag">&lt;/collection&gt;</span></pre>
<h2>DOM-like Parsing:</h2>
<p>Let's first parse our XML data in <i>tree fashion</i>. We begin by requiring the <b>rexml/document</b> library; often we do an include REXML to import into the top-level namespace for convenience.</p>
<pre class="prettyprint notranslate tryit prettyprinted" style="cursor: default;"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'rexml/document'</span><span class="pln">
include REXML

xmlfile </span><span class="pun">=</span><span class="pln"> </span><span class="typ">File</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"movies.xml"</span><span class="pun">)</span><span class="pln">
xmldoc </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Document</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">xmlfile</span><span class="pun">)</span><span class="pln">

</span><span class="com"># Now get the root element</span><span class="pln">
root </span><span class="pun">=</span><span class="pln"> xmldoc</span><span class="pun">.</span><span class="pln">root
puts </span><span class="str">"Root element : "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> root</span><span class="pun">.</span><span class="pln">attributes</span><span class="pun">[</span><span class="str">"shelf"</span><span class="pun">]</span><span class="pln">

</span><span class="com"># This will output all the movie titles.</span><span class="pln">
xmldoc</span><span class="pun">.</span><span class="pln">elements</span><span class="pun">.</span><span class="pln">each</span><span class="pun">(</span><span class="str">"collection/movie"</span><span class="pun">){</span><span class="pln"> 
   </span><span class="pun">|</span><span class="pln">e</span><span class="pun">|</span><span class="pln"> puts </span><span class="str">"Movie Title : "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> e</span><span class="pun">.</span><span class="pln">attributes</span><span class="pun">[</span><span class="str">"title"</span><span class="pun">]</span><span class="pln"> 
</span><span class="pun">}</span><span class="pln">

</span><span class="com"># This will output all the movie types.</span><span class="pln">
xmldoc</span><span class="pun">.</span><span class="pln">elements</span><span class="pun">.</span><span class="pln">each</span><span class="pun">(</span><span class="str">"collection/movie/type"</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
   </span><span class="pun">|</span><span class="pln">e</span><span class="pun">|</span><span class="pln"> puts </span><span class="str">"Movie Type : "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> e</span><span class="pun">.</span><span class="pln">text 
</span><span class="pun">}</span><span class="pln">

</span><span class="com"># This will output all the movie description.</span><span class="pln">
xmldoc</span><span class="pun">.</span><span class="pln">elements</span><span class="pun">.</span><span class="pln">each</span><span class="pun">(</span><span class="str">"collection/movie/description"</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
   </span><span class="pun">|</span><span class="pln">e</span><span class="pun">|</span><span class="pln"> puts </span><span class="str">"Movie Description : "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> e</span><span class="pun">.</span><span class="pln">text 
</span><span class="pun">}</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Root</span><span class="pln"> element </span><span class="pun">:</span><span class="pln"> </span><span class="typ">New</span><span class="pln"> </span><span class="typ">Arrivals</span><span class="pln">
</span><span class="typ">Movie</span><span class="pln"> </span><span class="typ">Title</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">Enemy</span><span class="pln"> </span><span class="typ">Behind</span><span class="pln">
</span><span class="typ">Movie</span><span class="pln"> </span><span class="typ">Title</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">Transformers</span><span class="pln">
</span><span class="typ">Movie</span><span class="pln"> </span><span class="typ">Title</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">Trigun</span><span class="pln">
</span><span class="typ">Movie</span><span class="pln"> </span><span class="typ">Title</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">Ishtar</span><span class="pln">
</span><span class="typ">Movie</span><span class="pln"> </span><span class="typ">Type</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">War</span><span class="pun">,</span><span class="pln"> </span><span class="typ">Thriller</span><span class="pln">
</span><span class="typ">Movie</span><span class="pln"> </span><span class="typ">Type</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">Anime</span><span class="pun">,</span><span class="pln"> </span><span class="typ">Science</span><span class="pln"> </span><span class="typ">Fiction</span><span class="pln">
</span><span class="typ">Movie</span><span class="pln"> </span><span class="typ">Type</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">Anime</span><span class="pun">,</span><span class="pln"> </span><span class="typ">Action</span><span class="pln">
</span><span class="typ">Movie</span><span class="pln"> </span><span class="typ">Type</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">Comedy</span><span class="pln">
</span><span class="typ">Movie</span><span class="pln"> </span><span class="typ">Description</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">Talk</span><span class="pln"> about a US</span><span class="pun">-</span><span class="typ">Japan</span><span class="pln"> war
</span><span class="typ">Movie</span><span class="pln"> </span><span class="typ">Description</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> A schientific fiction
</span><span class="typ">Movie</span><span class="pln"> </span><span class="typ">Description</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">Vash</span><span class="pln"> the </span><span class="typ">Stampede</span><span class="pun">!</span><span class="pln">
</span><span class="typ">Movie</span><span class="pln"> </span><span class="typ">Description</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">Viewable</span><span class="pln"> boredom</span></pre>
<h2>SAX-like Parsing:</h2>
<p>To process the same data, <i>movies.xml</i>, file in a <i>stream-oriented</i> way we will define a <i>listener</i> class whose methods will be the target of <i>callbacks</i> from the parser.</p>
<p><b>NOTE:</b> It is not suggested to use SAX-like parsing for a small file, this is just for a demo example.</p>
<pre class="prettyprint notranslate tryit prettyprinted" style="cursor: default;"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'rexml/document'</span><span class="pln">
</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'rexml/streamlistener'</span><span class="pln">
include REXML


</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">MyListener</span><span class="pln">
  include REXML</span><span class="pun">::</span><span class="typ">StreamListener</span><span class="pln">
  </span><span class="kwd">def</span><span class="pln"> tag_start</span><span class="pun">(*</span><span class="pln">args</span><span class="pun">)</span><span class="pln">
    puts </span><span class="str">"tag_start: #{args.map {|x| x.inspect}.join(', ')}"</span><span class="pln">
  </span><span class="kwd">end</span><span class="pln">

  </span><span class="kwd">def</span><span class="pln"> text</span><span class="pun">(</span><span class="pln">data</span><span class="pun">)</span><span class="pln">
    </span><span class="kwd">return</span><span class="pln"> </span><span class="kwd">if</span><span class="pln"> data </span><span class="pun">=~</span><span class="pln"> </span><span class="pun">/^</span><span class="pln">\w</span><span class="pun">*</span><span class="pln">$</span><span class="pun">/</span><span class="pln">     </span><span class="com"># whitespace only</span><span class="pln">
    abbrev </span><span class="pun">=</span><span class="pln"> data</span><span class="pun">[</span><span class="lit">0.</span><span class="pun">.</span><span class="lit">40</span><span class="pun">]</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> </span><span class="pun">(</span><span class="pln">data</span><span class="pun">.</span><span class="pln">length </span><span class="pun">&gt;</span><span class="pln"> </span><span class="lit">40</span><span class="pln"> </span><span class="pun">?</span><span class="pln"> </span><span class="str">"..."</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="str">""</span><span class="pun">)</span><span class="pln">
    puts </span><span class="str">"  text   :   #{abbrev.inspect}"</span><span class="pln">
  </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

list </span><span class="pun">=</span><span class="pln"> </span><span class="typ">MyListener</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">
xmlfile </span><span class="pun">=</span><span class="pln"> </span><span class="typ">File</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"movies.xml"</span><span class="pun">)</span><span class="pln">
</span><span class="typ">Document</span><span class="pun">.</span><span class="pln">parse_stream</span><span class="pun">(</span><span class="pln">xmlfile</span><span class="pun">,</span><span class="pln"> list</span><span class="pun">)</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"collection"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{</span><span class="str">"shelf"</span><span class="pun">=&gt;</span><span class="str">"New Arrivals"</span><span class="pun">}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"movie"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{</span><span class="str">"title"</span><span class="pun">=&gt;</span><span class="str">"Enemy Behind"</span><span class="pun">}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"type"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
  text   </span><span class="pun">:</span><span class="pln">   </span><span class="str">"War, Thriller"</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"format"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"year"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"rating"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"stars"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"description"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
  text   </span><span class="pun">:</span><span class="pln">   </span><span class="str">"Talk about a US-Japan war"</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"movie"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{</span><span class="str">"title"</span><span class="pun">=&gt;</span><span class="str">"Transformers"</span><span class="pun">}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"type"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
  text   </span><span class="pun">:</span><span class="pln">   </span><span class="str">"Anime, Science Fiction"</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"format"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"year"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"rating"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"stars"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"description"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
  text   </span><span class="pun">:</span><span class="pln">   </span><span class="str">"A schientific fiction"</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"movie"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{</span><span class="str">"title"</span><span class="pun">=&gt;</span><span class="str">"Trigun"</span><span class="pun">}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"type"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
  text   </span><span class="pun">:</span><span class="pln">   </span><span class="str">"Anime, Action"</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"format"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"episodes"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"rating"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"stars"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"description"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
  text   </span><span class="pun">:</span><span class="pln">   </span><span class="str">"Vash the Stampede!"</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"movie"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{</span><span class="str">"title"</span><span class="pun">=&gt;</span><span class="str">"Ishtar"</span><span class="pun">}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"type"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"format"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"rating"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"stars"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
tag_start</span><span class="pun">:</span><span class="pln"> </span><span class="str">"description"</span><span class="pun">,</span><span class="pln"> </span><span class="pun">{}</span><span class="pln">
  text   </span><span class="pun">:</span><span class="pln">   </span><span class="str">"Viewable boredom"</span></pre>
<h2>XPath and Ruby:</h2>
<p>An alternative way to view XML is XPath. This is a kind of pseudo-language that describes how to locate specific elements and attributes in an XML document, treating that document as a logical ordered tree.</p>
<p>REXML has XPath support via the <i>XPath</i> class. It assumes tree-based parsing (document object model) as we have seen above.</p>
<pre class="prettyprint notranslate tryit prettyprinted" style="cursor: default;"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'rexml/document'</span><span class="pln">
include REXML

xmlfile </span><span class="pun">=</span><span class="pln"> </span><span class="typ">File</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"movies.xml"</span><span class="pun">)</span><span class="pln">
xmldoc </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Document</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln">xmlfile</span><span class="pun">)</span><span class="pln">

</span><span class="com"># Info for the first movie found</span><span class="pln">
movie </span><span class="pun">=</span><span class="pln"> </span><span class="typ">XPath</span><span class="pun">.</span><span class="pln">first</span><span class="pun">(</span><span class="pln">xmldoc</span><span class="pun">,</span><span class="pln"> </span><span class="str">"//movie"</span><span class="pun">)</span><span class="pln">
p movie

</span><span class="com"># Print out all the movie types</span><span class="pln">
</span><span class="typ">XPath</span><span class="pun">.</span><span class="pln">each</span><span class="pun">(</span><span class="pln">xmldoc</span><span class="pun">,</span><span class="pln"> </span><span class="str">"//type"</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><span class="pln"> </span><span class="pun">|</span><span class="pln">e</span><span class="pun">|</span><span class="pln"> puts e</span><span class="pun">.</span><span class="pln">text </span><span class="pun">}</span><span class="pln">

</span><span class="com"># Get an array of all of the movie formats.</span><span class="pln">
names </span><span class="pun">=</span><span class="pln"> </span><span class="typ">XPath</span><span class="pun">.</span><span class="pln">match</span><span class="pun">(</span><span class="pln">xmldoc</span><span class="pun">,</span><span class="pln"> </span><span class="str">"//format"</span><span class="pun">).</span><span class="pln">map </span><span class="pun">{|</span><span class="pln">x</span><span class="pun">|</span><span class="pln"> x</span><span class="pun">.</span><span class="pln">text </span><span class="pun">}</span><span class="pln">
p names</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="tag">&lt;movie</span><span class="pln"> </span><span class="atn">title</span><span class="pun">=</span><span class="atv">'Enemy Behind'</span><span class="tag">&gt;</span><span class="pln"> ... &lt;/&gt;
War, Thriller
Anime, Science Fiction
Anime, Action
Comedy
["DVD", "DVD", "DVD", "VHS"]</span></pre>
<h2>XSLT and Ruby:</h2>
<p>There are two XSLT parsers available that Ruby can use. A brief description of each is given here:</p>
<h2>Ruby-Sablotron:</h2>
<p>This parser is written and maintained by Masayoshi Takahashi. This is written primarily for Linux OS and requires the following libraries:</p>
<ion-list>
<li><p>Sablot</p></li>
<li><p>Iconv</p></li>
<li><p>Expat</p></li>
</ion-list>
<p>You can find this module at <a href="#" onclick="window.open('http://www.rubycolor.org/sablot','_system')" title="Ruby Sablotron">Ruby-Sablotron</a>.</p>
<h2>XSLT4R:</h2>
<p>XSLT4R is written by Michael Neumann and can be found at the RAA in the Library section under XML. XSLT4R uses a simple commandline interface, though it can alternatively be used within a third-party application to transform an XML document.</p>
<p>XSLT4R needs XMLScan to operate, which is included within the XSLT4R archive and which is also a 100 percent Ruby module. These modules can be installed using standard Ruby installation method (i.e., ruby install.rb).</p>
<p>XSLT4R has the following syntax:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">ruby xslt</span><span class="pun">.</span><span class="pln">rb stylesheet</span><span class="pun">.</span><span class="pln">xsl document</span><span class="pun">.</span><span class="pln">xml </span><span class="pun">[</span><span class="pln">arguments</span><span class="pun">]</span></pre>
<p>If you want to use XSLT4R from within an application, you can include XSLT and input the parameters you need. Here is the example:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">require</span><span class="pln"> </span><span class="str">"xslt"</span><span class="pln">

stylesheet </span><span class="pun">=</span><span class="pln"> </span><span class="typ">File</span><span class="pun">.</span><span class="pln">readlines</span><span class="pun">(</span><span class="str">"stylesheet.xsl"</span><span class="pun">).</span><span class="pln">to_s
xml_doc </span><span class="pun">=</span><span class="pln"> </span><span class="typ">File</span><span class="pun">.</span><span class="pln">readlines</span><span class="pun">(</span><span class="str">"document.xml"</span><span class="pun">).</span><span class="pln">to_s
arguments </span><span class="pun">=</span><span class="pln"> </span><span class="pun">{</span><span class="pln"> </span><span class="str">'image_dir'</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> </span><span class="str">'/....'</span><span class="pln"> </span><span class="pun">}</span><span class="pln">

sheet </span><span class="pun">=</span><span class="pln"> XSLT</span><span class="pun">::</span><span class="typ">Stylesheet</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="pln"> stylesheet</span><span class="pun">,</span><span class="pln"> arguments </span><span class="pun">)</span><span class="pln">

</span><span class="com"># output to StdOut</span><span class="pln">
sheet</span><span class="pun">.</span><span class="pln">apply</span><span class="pun">(</span><span class="pln"> xml_doc </span><span class="pun">)</span><span class="pln">

</span><span class="com"># output to 'str'</span><span class="pln">
str </span><span class="pun">=</span><span class="pln"> </span><span class="str">""</span><span class="pln">
sheet</span><span class="pun">.</span><span class="pln">output </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[</span><span class="pln"> str </span><span class="pun">]</span><span class="pln">
sheet</span><span class="pun">.</span><span class="pln">apply</span><span class="pun">(</span><span class="pln"> xml_doc </span><span class="pun">)</span></pre>
<h2>Further Reading:</h2>
<ion-list>
<li><p>For a complete detail on REXML Parser, please refer to standard documentation for <a href="#" onclick="window.open('http://www.germane-software.com/software/rexml/','_system')" title="REXML Parser">REXML Parser Documentation</a>.</p></li>
<li><p>You can download XSLT4R from <a href="#" onclick="window.open('http://raa.ruby-lang.org/project/xslt4r/','_system')" title="XSLT4R">RAA Repository</a>.</p></li>
</ion-list>
</div>
</ion-content>
</ion-view>
