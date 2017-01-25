<ion-view view-title="01 - Object Oriented">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Object Oriented</h1>
<hr>
<p>Ruby is pure object-oriented language and everything appears to Ruby as an object. Every value in Ruby is an object, even the most primitive things: strings, numbers and even true and false. Even a class itself is an <i>object</i> that is an instance of the <i>Class</i> class. This chapter will take you through all the major functionalities related to Object Oriented Ruby.</p>
<p>A class is used to specify the form of an object and it combines data representation and methods for manipulating that data into one neat package. The data and methods within a class are called members of the class.</p>
<h2>Ruby class definition:</h2>
<p>When you define a class, you define a blueprint for a data type. This doesn't actually define any data, but it does define what the class name means, that is, what an object of the class will consist of and what operations can be performed on such an object.</p>
<p>A class definition starts with the keyword <b>class</b> followed by the <b>class name</b> and is delimited with an <b>end</b>. For example, we defined the Box class using the keyword class as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   code
</span><span class="kwd">end</span></pre>
<p>The name must begin with a capital letter and by convention names that contain more than one word are run together with each word capitalized and no separating characters (CamelCase).</p>
<h2>Define ruby objects:</h2>
<p>A class provides the blueprints for objects, so basically an object is created from a class. We declare objects of a class using <b>new</b> keyword. Following statements declare two objects of class Box:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">box1 </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">
box2 </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span></pre>
<h2>The initialize method:</h2>
<p>The <b>initialize method</b> is a standard Ruby class method and works almost same way as <b>constructor</b> works in other object oriented programming languages. The initialize method is useful when you want to initialize some class variables at the time of object creation. This method may take a list of parameters and like any other ruby method it would be preceded by <b>def</b> keyword as shown below:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span></pre>
<h2>The instance variables:</h2>
<p>The <b>instance variables</b> are kind of class attributes and they become properties of objects once we objects are created using the class. Every object's attributes are assigned individually and share no value with other objects. They are accessed using the @ operator within the class but to access them outside of the class we use <b>public</b> methods which are called <b>accessor methods</b>. If we take above defined class <b>Box</b> then @width and @height are instance variables for the class Box.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln">
      </span><span class="com"># assign instance avriables</span><span class="pln">
      </span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span></pre>
<h2>The accessor &amp; setter methods:</h2>
<p>To make the variables available from outside the class, they must be defined within <b>accessor methods</b>, these accessor methods are also known as a getter methods. Following example shows the usage of accessor methods:</p> 
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="com"># define a class</span><span class="pln">
</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   </span><span class="com"># constructor method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h
   </span><span class="kwd">end</span><span class="pln">

   </span><span class="com"># accessor methods</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> printWidth
      </span><span class="lit">@width</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">

   </span><span class="kwd">def</span><span class="pln"> printHeight
      </span><span class="lit">@height</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># create an object</span><span class="pln">
box </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">20</span><span class="pun">)</span><span class="pln">

</span><span class="com"># use accessor methods</span><span class="pln">
x </span><span class="pun">=</span><span class="pln"> box</span><span class="pun">.</span><span class="pln">printWidth</span><span class="pun">()</span><span class="pln">
y </span><span class="pun">=</span><span class="pln"> box</span><span class="pun">.</span><span class="pln">printHeight</span><span class="pun">()</span><span class="pln">

puts </span><span class="str">"Width of the box is : #{x}"</span><span class="pln">
puts </span><span class="str">"Height of the box is : #{y}"</span></pre>
<p>When the above code is executed, it produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Width</span><span class="pln"> of the box </span><span class="kwd">is</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="lit">10</span><span class="pln">
</span><span class="typ">Height</span><span class="pln"> of the box </span><span class="kwd">is</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="lit">20</span></pre>
<p>Similar to accessor methods, which are used to access the value of the variables, Ruby provides a way to set the values of those variables from outside of the class using <b>setter methods</b>, which are defined as below:</p> 
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="com"># define a class</span><span class="pln">
</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   </span><span class="com"># constructor method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h
   </span><span class="kwd">end</span><span class="pln">

   </span><span class="com"># accessor methods</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> getWidth
      </span><span class="lit">@width</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> getHeight
      </span><span class="lit">@height</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">

   </span><span class="com"># setter methods</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> setWidth</span><span class="pun">=(</span><span class="pln">value</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@width</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> value
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> setHeight</span><span class="pun">=(</span><span class="pln">value</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> value
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># create an object</span><span class="pln">
box </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">20</span><span class="pun">)</span><span class="pln">

</span><span class="com"># use setter methods</span><span class="pln">
box</span><span class="pun">.</span><span class="pln">setWidth </span><span class="pun">=</span><span class="pln"> </span><span class="lit">30</span><span class="pln">
box</span><span class="pun">.</span><span class="pln">setHeight </span><span class="pun">=</span><span class="pln"> </span><span class="lit">50</span><span class="pln">

</span><span class="com"># use accessor methods</span><span class="pln">
x </span><span class="pun">=</span><span class="pln"> box</span><span class="pun">.</span><span class="pln">getWidth</span><span class="pun">()</span><span class="pln">
y </span><span class="pun">=</span><span class="pln"> box</span><span class="pun">.</span><span class="pln">getHeight</span><span class="pun">()</span><span class="pln">

puts </span><span class="str">"Width of the box is : #{x}"</span><span class="pln">
puts </span><span class="str">"Height of the box is : #{y}"</span></pre>
<p>When the above code is executed, it produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Width</span><span class="pln"> of the box </span><span class="kwd">is</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="lit">30</span><span class="pln">
</span><span class="typ">Height</span><span class="pln"> of the box </span><span class="kwd">is</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="lit">50</span></pre>
<h2>The instance methods:</h2>
<p>The <b>instance methods</b> are also defined in the same way as we define any other method using <b>def</b> keyword and they can be used using a class instance only as shown below. Their functionality is not limited to access the instance variables, but also they can do a lot more as per your requirement.</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="com"># define a class</span><span class="pln">
</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   </span><span class="com"># constructor method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="com"># instance method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> getArea
      </span><span class="lit">@width</span><span class="pln"> </span><span class="pun">*</span><span class="pln"> </span><span class="lit">@height</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># create an object</span><span class="pln">
box </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">20</span><span class="pun">)</span><span class="pln">

</span><span class="com"># call instance methods</span><span class="pln">
a </span><span class="pun">=</span><span class="pln"> box</span><span class="pun">.</span><span class="pln">getArea</span><span class="pun">()</span><span class="pln">
puts </span><span class="str">"Area of the box is : #{a}"</span></pre>
<p>When the above code is executed, it produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Area</span><span class="pln"> of the box </span><span class="kwd">is</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="lit">200</span></pre>
<h2>The class methods &amp; variables:</h2>
<p>The <b>class variables</b> is a variable which is shared between all instances of a class. In other words, there is one instance of the variable and it is accessed by object instances. Class variables are prefixed with two @ characters (@@). A class variable must be initialized within the class definition as shown below.</p>
<p>A class method is defined using <b>def self.methodname()</b> which ends with end delimiter and would be called using class name as <b>classname.methodname</b> as shown in the following example:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   </span><span class="com"># Initialize our class variables</span><span class="pln">
   </span><span class="pun">@</span><span class="lit">@count</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> </span><span class="lit">0</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln">
      </span><span class="com"># assign instance avriables</span><span class="pln">
      </span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h

      </span><span class="pun">@</span><span class="lit">@count</span><span class="pln"> </span><span class="pun">+=</span><span class="pln"> </span><span class="lit">1</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">

   </span><span class="kwd">def</span><span class="pln"> </span><span class="kwd">self</span><span class="pun">.</span><span class="pln">printCount</span><span class="pun">()</span><span class="pln">
      puts </span><span class="str">"Box count is : #@@count"</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># create two object</span><span class="pln">
box1 </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">20</span><span class="pun">)</span><span class="pln">
box2 </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">30</span><span class="pun">,</span><span class="pln"> </span><span class="lit">100</span><span class="pun">)</span><span class="pln">

</span><span class="com"># call class method to print box count</span><span class="pln">
</span><span class="typ">Box</span><span class="pun">.</span><span class="pln">printCount</span><span class="pun">()</span></pre>
<p>When the above code is executed, it produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Box</span><span class="pln"> count </span><span class="kwd">is</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="lit">2</span></pre>
<h2>The to_s Method:</h2>
<p>Any class you define should have a <b>to_s</b> instance method to return a string representation of the object. Following is a simple example to represent a Box object in terms of width and height:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   </span><span class="com"># constructor method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="com"># define to_s method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> to_s
      </span><span class="str">"(w:#@width,h:#@height)"</span><span class="pln">  </span><span class="com"># string formatting of the object.</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># create an object</span><span class="pln">
box </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">20</span><span class="pun">)</span><span class="pln">

</span><span class="com"># to_s method will be called in reference of string automatically.</span><span class="pln">
puts </span><span class="str">"String representation of box is : #{box}"</span></pre>
<p>When the above code is executed, it produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">String</span><span class="pln"> representation of box </span><span class="kwd">is</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="pun">(</span><span class="pln">w</span><span class="pun">:</span><span class="lit">10</span><span class="pun">,</span><span class="pln">h</span><span class="pun">:</span><span class="lit">20</span><span class="pun">)</span></pre>
<h2>Access Control:</h2>
<p>Ruby gives you three levels of protection at instance methods level which may be <b>public, private, or protected</b>. Ruby does not apply any access control over instance and class variables.</p>
<ul class="list">
<li><p><b>Public Methods:</b> Public methods can be called by anyone. Methods are public by default except for initialize, which is always private.</p></li>
<li><p><b>Private Methods:</b> Private methods cannot be accessed, or even viewed from outside the class. Only the class methods can access private members.</p></li>
<li><p><b>Protected  Methods:</b> A protected method can be invoked only by objects of the defining class and its subclasses. Access is kept within the family.</p></li>
</ul>
<p>Following is a simple example to show the syntax of all the three access modifiers:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="com"># define a class</span><span class="pln">
</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   </span><span class="com"># constructor method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h
   </span><span class="kwd">end</span><span class="pln">

   </span><span class="com"># instance method by default it is public</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> getArea
      getWidth</span><span class="pun">()</span><span class="pln"> </span><span class="pun">*</span><span class="pln"> getHeight
   </span><span class="kwd">end</span><span class="pln">

   </span><span class="com"># define private accessor methods</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> getWidth
      </span><span class="lit">@width</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> getHeight
      </span><span class="lit">@height</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="com"># make them private</span><span class="pln">
   </span><span class="kwd">private</span><span class="pln"> </span><span class="pun">:</span><span class="pln">getWidth</span><span class="pun">,</span><span class="pln"> </span><span class="pun">:</span><span class="pln">getHeight

   </span><span class="com"># instance method to print area</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> printArea
      </span><span class="lit">@area</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> getWidth</span><span class="pun">()</span><span class="pln"> </span><span class="pun">*</span><span class="pln"> getHeight
      puts </span><span class="str">"Big box area is : #@area"</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="com"># make it protected</span><span class="pln">
   </span><span class="kwd">protected</span><span class="pln"> </span><span class="pun">:</span><span class="pln">printArea
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># create an object</span><span class="pln">
box </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">20</span><span class="pun">)</span><span class="pln">

</span><span class="com"># call instance methods</span><span class="pln">
a </span><span class="pun">=</span><span class="pln"> box</span><span class="pun">.</span><span class="pln">getArea</span><span class="pun">()</span><span class="pln">
puts </span><span class="str">"Area of the box is : #{a}"</span><span class="pln">

</span><span class="com"># try to call protected or methods</span><span class="pln">
box</span><span class="pun">.</span><span class="pln">printArea</span><span class="pun">()</span></pre>
<p>When the above code is executed, it produces the following result. Here, first method is called successfully but second method gave a problem.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Area</span><span class="pln"> of the box </span><span class="kwd">is</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="lit">200</span><span class="pln">
test</span><span class="pun">.</span><span class="pln">rb</span><span class="pun">:</span><span class="lit">42</span><span class="pun">:</span><span class="pln"> </span><span class="kwd">protected</span><span class="pln"> method </span><span class="str">`printArea' called for #
&lt;Box:0xb7f11280 @height=20, @width=10&gt; (NoMethodError)</span></pre>
<h2>Class Inheritance:</h2>
<p>One of the most important concepts in object-oriented programming is that of inheritance. Inheritance allows us to define a class in terms of another class, which makes it easier to create and maintain an application.</p>
<p>Inheritance also provides an opportunity to reuse the code functionality and fast implementation time but unfortunately Ruby does not support multiple levels of inheritances but Ruby supports <b>mixins</b>. A mixin is like a specialized implementation of multiple inheritance in which only the interface portion is inherited.</p>
<p>When creating a class, instead of writing completely new data members and member functions, the programmer can designate that the new class should inherit the members of an existing class. This existing class is called the <b>base class or superclass</b>, and the new class is referred to as the <b>derived class or sub-class</b>.</p>
<p>Ruby also supports the concept of subclassing, i.e., inheritance and following example explains the concept. The syntax for extending a class is simple. Just add a &lt; character and the name of the superclass to your class statement. For example, following define a class <i>BigBox</i> as a subclass of <i>Box</i>:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="com"># define a class</span><span class="pln">
</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   </span><span class="com"># constructor method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="com"># instance method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> getArea
      </span><span class="lit">@width</span><span class="pln"> </span><span class="pun">*</span><span class="pln"> </span><span class="lit">@height</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># define a subclass</span><span class="pln">
</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">BigBox</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">

   </span><span class="com"># add a new instance method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> printArea
      </span><span class="lit">@area</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> </span><span class="lit">@width</span><span class="pln"> </span><span class="pun">*</span><span class="pln"> </span><span class="lit">@height</span><span class="pln">
      puts </span><span class="str">"Big box area is : #@area"</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># create an object</span><span class="pln">
box </span><span class="pun">=</span><span class="pln"> </span><span class="typ">BigBox</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">20</span><span class="pun">)</span><span class="pln">

</span><span class="com"># print the area</span><span class="pln">
box</span><span class="pun">.</span><span class="pln">printArea</span><span class="pun">()</span></pre>
<p>When the above code is executed, it produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Big</span><span class="pln"> box area </span><span class="kwd">is</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="lit">200</span></pre>
<h2>Methods Overriding:</h2>
<p>Though you can add new functionality in a derived class, but sometime you would like to change the behavior of already defined method in a parent class. You can do so simply by keeping the method name same and overriding the functionality of the method as shown below in the example:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="com"># define a class</span><span class="pln">
</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   </span><span class="com"># constructor method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="com"># instance method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> getArea
      </span><span class="lit">@width</span><span class="pln"> </span><span class="pun">*</span><span class="pln"> </span><span class="lit">@height</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># define a subclass</span><span class="pln">
</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">BigBox</span><span class="pln"> </span><span class="pun">&lt;</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">

   </span><span class="com"># change existing getArea method as follows</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> getArea
      </span><span class="lit">@area</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> </span><span class="lit">@width</span><span class="pln"> </span><span class="pun">*</span><span class="pln"> </span><span class="lit">@height</span><span class="pln">
      puts </span><span class="str">"Big box area is : #@area"</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># create an object</span><span class="pln">
box </span><span class="pun">=</span><span class="pln"> </span><span class="typ">BigBox</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">20</span><span class="pun">)</span><span class="pln">

</span><span class="com"># print the area using overriden method.</span><span class="pln">
box</span><span class="pun">.</span><span class="pln">getArea</span><span class="pun">()</span></pre>
<h2>Operator Overloading:</h2>
<p>We'd like the + operator to perform vector addition of two Box objects using +, the * operator to multiply a Box width and height by a scalar, and the unary - operator to do negate the width and height of the Box. Here is a version of the Box class with mathematical operators defined:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
  </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln"> </span><span class="com"># Initialize the width and height</span><span class="pln">
    </span><span class="lit">@width</span><span class="pun">,</span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h
  </span><span class="kwd">end</span><span class="pln">

  </span><span class="kwd">def</span><span class="pln"> </span><span class="pun">+(</span><span class="pln">other</span><span class="pun">)</span><span class="pln">         </span><span class="com"># Define + to do vector addition</span><span class="pln">
    </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">@width</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> other</span><span class="pun">.</span><span class="pln">width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> other</span><span class="pun">.</span><span class="pln">height</span><span class="pun">)</span><span class="pln">
  </span><span class="kwd">end</span><span class="pln">

  </span><span class="kwd">def</span><span class="pln"> </span><span class="pun">-@</span><span class="pln">               </span><span class="com"># Define unary minus to negate width and height</span><span class="pln">
    </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(-</span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="pun">-</span><span class="lit">@height</span><span class="pun">)</span><span class="pln">
  </span><span class="kwd">end</span><span class="pln">

  </span><span class="kwd">def</span><span class="pln"> </span><span class="pun">*(</span><span class="pln">scalar</span><span class="pun">)</span><span class="pln">        </span><span class="com"># To perform scalar multiplication</span><span class="pln">
    </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">@width</span><span class="pun">*</span><span class="pln">scalar</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pun">*</span><span class="pln">scalar</span><span class="pun">)</span><span class="pln">
  </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span></pre>
<h2>Freezing Objects:</h2>
<p>Sometimes, we want to prevent an object from being changed. The freeze method in Object allows us to do this, effectively turning an object into a constant. Any object can be frozen by invoking <b>Object.freeze</b>. A frozen object may not be modified: you can't change its instance variables.</p>
<p>You can check if a given object is already frozen or not using <b>Object.frozen?</b> method, which returns true in case object is frozen otherwise a false value is return. Following example clears the concept:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="com"># define a class</span><span class="pln">
</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   </span><span class="com"># constructor method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h
   </span><span class="kwd">end</span><span class="pln">

   </span><span class="com"># accessor methods</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> getWidth
      </span><span class="lit">@width</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> getHeight
      </span><span class="lit">@height</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">

   </span><span class="com"># setter methods</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> setWidth</span><span class="pun">=(</span><span class="pln">value</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@width</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> value
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> setHeight</span><span class="pun">=(</span><span class="pln">value</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> value
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># create an object</span><span class="pln">
box </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">20</span><span class="pun">)</span><span class="pln">

</span><span class="com"># let us freez this object</span><span class="pln">
box</span><span class="pun">.</span><span class="pln">freeze
</span><span class="kwd">if</span><span class="pun">(</span><span class="pln"> box</span><span class="pun">.</span><span class="pln">frozen</span><span class="pun">?</span><span class="pln"> </span><span class="pun">)</span><span class="pln">
   puts </span><span class="str">"Box object is frozen object"</span><span class="pln">
</span><span class="kwd">else</span><span class="pln">
   puts </span><span class="str">"Box object is normal object"</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># now try using setter methods</span><span class="pln">
box</span><span class="pun">.</span><span class="pln">setWidth </span><span class="pun">=</span><span class="pln"> </span><span class="lit">30</span><span class="pln">
box</span><span class="pun">.</span><span class="pln">setHeight </span><span class="pun">=</span><span class="pln"> </span><span class="lit">50</span><span class="pln">

</span><span class="com"># use accessor methods</span><span class="pln">
x </span><span class="pun">=</span><span class="pln"> box</span><span class="pun">.</span><span class="pln">getWidth</span><span class="pun">()</span><span class="pln">
y </span><span class="pun">=</span><span class="pln"> box</span><span class="pun">.</span><span class="pln">getHeight</span><span class="pun">()</span><span class="pln">

puts </span><span class="str">"Width of the box is : #{x}"</span><span class="pln">
puts </span><span class="str">"Height of the box is : #{y}"</span></pre>
<p>When the above code is executed, it produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Box</span><span class="pln"> </span><span class="kwd">object</span><span class="pln"> </span><span class="kwd">is</span><span class="pln"> frozen </span><span class="kwd">object</span><span class="pln">
test</span><span class="pun">.</span><span class="pln">rb</span><span class="pun">:</span><span class="lit">20</span><span class="pun">:</span><span class="kwd">in</span><span class="pln"> </span><span class="str">`setWidth=': can't modify frozen object (TypeError)
        from test.rb:39</span></pre>
<h2>Class Constants:</h2>
<p>You can define a constant inside a class by assigning a direct numeric or string value to a variable which is defined without using either @ or @@. By convention we keep constant names in upper case.</p>
<p>Once a constant is defined, you can not change its value but you can access a constant directly  inside a class much like a variable but if you want to access a constant outside of the class then you would have to use <b>classname::constant</b> as shown in the below example.</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="com"># define a class</span><span class="pln">
</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   BOX_COMPANY </span><span class="pun">=</span><span class="pln"> </span><span class="str">"TATA Inc"</span><span class="pln">
   BOXWEIGHT </span><span class="pun">=</span><span class="pln"> </span><span class="lit">10</span><span class="pln">
   </span><span class="com"># constructor method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="com"># instance method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> getArea
      </span><span class="lit">@width</span><span class="pln"> </span><span class="pun">*</span><span class="pln"> </span><span class="lit">@height</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># create an object</span><span class="pln">
box </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">20</span><span class="pun">)</span><span class="pln">

</span><span class="com"># call instance methods</span><span class="pln">
a </span><span class="pun">=</span><span class="pln"> box</span><span class="pun">.</span><span class="pln">getArea</span><span class="pun">()</span><span class="pln">
puts </span><span class="str">"Area of the box is : #{a}"</span><span class="pln">
puts </span><span class="typ">Box</span><span class="pun">::</span><span class="pln">BOX_COMPANY
puts </span><span class="str">"Box weight is: #{Box::BOXWEIGHT}"</span></pre>
<p>When the above code is executed, it produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Area</span><span class="pln"> of the box </span><span class="kwd">is</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="lit">200</span><span class="pln">
TATA </span><span class="typ">Inc</span><span class="pln">
</span><span class="typ">Box</span><span class="pln"> weight </span><span class="kwd">is</span><span class="pun">:</span><span class="pln"> </span><span class="lit">10</span></pre>
<p>Class constants are inherited and can be overridden like instance methods.</p>
<h2>Create object using allocate:</h2>
<p>There may be a situation when you want to create an object without calling its constructor <b>initialize</b> ie. using new method, in such case you can call allocate which will create an uninitialized object for you as in the following example:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="com"># define a class</span><span class="pln">
</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   attr_accessor </span><span class="pun">:</span><span class="pln">width</span><span class="pun">,</span><span class="pln"> </span><span class="pun">:</span><span class="pln">height

   </span><span class="com"># constructor method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">w</span><span class="pun">,</span><span class="pln">h</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@width</span><span class="pun">,</span><span class="pln"> </span><span class="lit">@height</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> w</span><span class="pun">,</span><span class="pln"> h
   </span><span class="kwd">end</span><span class="pln">

   </span><span class="com"># instance method</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> getArea
      </span><span class="lit">@width</span><span class="pln"> </span><span class="pun">*</span><span class="pln"> </span><span class="lit">@height</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># create an object using new</span><span class="pln">
box1 </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">20</span><span class="pun">)</span><span class="pln">

</span><span class="com"># create another object using allocate</span><span class="pln">
box2 </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span><span class="pun">.</span><span class="pln">allocate

</span><span class="com"># call instance method using box1</span><span class="pln">
a </span><span class="pun">=</span><span class="pln"> box1</span><span class="pun">.</span><span class="pln">getArea</span><span class="pun">()</span><span class="pln">
puts </span><span class="str">"Area of the box is : #{a}"</span><span class="pln">

</span><span class="com"># call instance method using box2</span><span class="pln">
a </span><span class="pun">=</span><span class="pln"> box2</span><span class="pun">.</span><span class="pln">getArea</span><span class="pun">()</span><span class="pln">
puts </span><span class="str">"Area of the box is : #{a}"</span></pre>
<p>When the above code is executed, it produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Area</span><span class="pln"> of the box </span><span class="kwd">is</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="lit">200</span><span class="pln">
test</span><span class="pun">.</span><span class="pln">rb</span><span class="pun">:</span><span class="lit">14</span><span class="pun">:</span><span class="pln"> warning</span><span class="pun">:</span><span class="pln"> instance variable </span><span class="lit">@width</span><span class="pln"> </span><span class="kwd">not</span><span class="pln"> initialized
test</span><span class="pun">.</span><span class="pln">rb</span><span class="pun">:</span><span class="lit">14</span><span class="pun">:</span><span class="pln"> warning</span><span class="pun">:</span><span class="pln"> instance variable </span><span class="lit">@height</span><span class="pln"> </span><span class="kwd">not</span><span class="pln"> initialized
test</span><span class="pun">.</span><span class="pln">rb</span><span class="pun">:</span><span class="lit">14</span><span class="pun">:</span><span class="kwd">in</span><span class="pln"> </span><span class="str">`getArea': undefined method `</span><span class="pun">*</span><span class="str">' 
   for nil:NilClass (NoMethodError) from test.rb:29</span></pre>
<h2>Class Information:</h2>
<p>If class definitions are executable code, this implies that they execute in the context of some object: self must reference something. Let's find out what it is.</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Box</span><span class="pln">
   </span><span class="com"># print class information</span><span class="pln">
   puts </span><span class="str">"Type of self = #{self.type}"</span><span class="pln">
   puts </span><span class="str">"Name of self = #{self.name}"</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>When the above code is executed, it produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Type</span><span class="pln"> of </span><span class="kwd">self</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Class</span><span class="pln">
</span><span class="typ">Name</span><span class="pln"> of </span><span class="kwd">self</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Box</span></pre>
<p>This means that a class definition is executed with that class as the current object. This means that methods in the metaclass and its superclasses will be available during the execution of the method definition.</p>
</div>
</ion-content>
</ion-view>