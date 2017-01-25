<ion-view view-title="04 - Classes">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Classes and Objects</h1>
<hr>
<p>Ruby is a perfect Object Oriented Programming Language. The features of the object-oriented programming language include:</p>
<ion-list>
<li><p>Data Encapsulation:</p></li> 
<li><p>Data Abstraction:</p></li>
<li><p>Polymorphism:</p></li>
<li><p>Inheritance:</p></li>
</ion-list>
<p>These features have been discussed in <a href="#/app/advance/01_object_oriented.html">Object Oriented Ruby in advance section</a>.</p>
<p>An object-oriented program involves classes and objects. A class is the blueprint from which individual objects are created. In object-oriented terms, we say that your <i>bicycle</i> is an instance of the <i>class of objects</i> known as bicycles.</p>
<p>Take the example of any vehicle. It comprises wheels, horsepower, and fuel or gas tank capacity. These characteristics form the data members of the class Vehicle. You can differentiate one vehicle from the other with the help of these characteristics.</p>
<p>A vehicle can also have certain functions, such as halting, driving, and speeding. Even these functions form the data members of the class Vehicle. You can, therefore, define a class as a combination of characteristics and functions.</p>
<p>A class Vehicle can be defined in Java as follows :</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Class</span><span class="pln"> </span><span class="typ">Vehicle</span><span class="pln">
</span><span class="pun">{</span><span class="pln">
   </span><span class="typ">Number</span><span class="pln"> no_of_wheels
   </span><span class="typ">Number</span><span class="pln"> horsepower
   </span><span class="typ">Characters</span><span class="pln"> type_of_tank
   </span><span class="typ">Number</span><span class="pln"> </span><span class="typ">Capacity</span><span class="pln">
   </span><span class="typ">Function</span><span class="pln"> speeding
   </span><span class="pun">{</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
   </span><span class="typ">Function</span><span class="pln"> driving
   </span><span class="pun">{</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
   </span><span class="typ">Function</span><span class="pln"> halting
   </span><span class="pun">{</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
</span><span class="pun">}</span></pre>
<p>By assigning different values to these data members, you can form several instances of the class Vehicle. For example, an airplane has three wheels, horsepower of 1,000, fuel as the type of tank, and a capacity of 100 liters. In the same way, a car has four wheels, horsepower of 200, gas as the type of tank, and a capacity of 25 litres.</p>
<h2>Defining a Class in Ruby:</h2>
<p>To implement object-oriented programming by using Ruby, you need to first learn how to create objects and classes in Ruby.</p>
<p>A class in Ruby always starts with the keyword <i>class</i> followed by the name of the class. The name should always be in initial capitals. The class <i>Customer</i> can be displayed as:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">Customer</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>You terminate a class by using the keyword <i>end</i>. All the data members in the <i>class</i> are between the class definition and the <i>end</i> keyword.</p>
<h2>Variables in a Ruby Class:</h2>
<p>Ruby provides four types of variables:</p>
<ion-list>
<li><p><b>Local Variables:</b> Local variables are the variables that are defined in a method. Local variables are not available outside the method. You will see more details about method in subsequent chapter. Local variables begin with a lowercase letter or _.</p></li>
<li><p><b>Instance Variables:</b> Instance variables are available across methods for any particular instance or object. That means that instance variables change from object to object. Instance variables are preceded by the at sign (@) followed by the variable name.</p></li>
<li><p><b>Class Variables:</b> Class variables are available across different objects. A class variable belongs to the class and is a characteristic of a class. They are preceded by the sign @@ and are followed by the variable name.</p></li>
<li><p><b>Global Variables:</b> Class variables are not available across classes. If you want to have a single variable, which is available across classes, you need to define a global variable. The global variables are always preceded by the dollar sign ($).</p></li>
</ion-list>
<h2>Example:</h2>
<p>Using the class variable @@no_of_customers, you can determine the number of objects that are being created. This enables in deriving the number of customers.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">Customer</span><span class="pln">
   </span><span class="pun">@</span><span class="lit">@no_of_customers</span><span class="pun">=</span><span class="lit">0</span><span class="pln">
</span><span class="kwd">end</span></pre>
<h2>Creating Objects in Ruby using <i>new</i> Method:</h2>
<p>Objects are instances of the class. You will now learn how to create objects of a class in Ruby. You can create objects in Ruby by using the method <i>new</i> of the class.</p>
<p>The method <i>new</i> is a unique type of method, which is predefined in the Ruby library. The new method belongs to the <i>class</i> methods.</p>
<p>Here is the example to create two objects cust1 and cust2 of the class Customer:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">cust1 </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Customer</span><span class="pun">.</span><span class="pln"> </span><span class="kwd">new</span><span class="pln">
cust2 </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Customer</span><span class="pun">.</span><span class="pln"> </span><span class="kwd">new</span></pre>
<p>Here, cust1 and cust2 are the names of two objects. You write the object name followed by the equal to sign (=) after which the class name will follow. Then, the dot operator and the keyword <i>new</i> will follow.</p>
<h2>Custom Method to create Ruby Objects :</h2>
<p>You can pass parameters to method <i>new</i> and  those parameters can be used to initialize class variables.</p>
<p>When you plan to declare the <i>new</i> method with parameters, you need to declare the method <i>initialize</i> at the time of the class creation.</p>
<p>The <i>initialize</i> method is a special type of method, which will be executed when the <i>new</i> method of the class is called with parameters.</p>
<p>Here is the example to create initialize method:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">Customer</span><span class="pln">
   </span><span class="pun">@</span><span class="lit">@no_of_customers</span><span class="pun">=</span><span class="lit">0</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">id</span><span class="pun">,</span><span class="pln"> name</span><span class="pun">,</span><span class="pln"> addr</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@cust_id</span><span class="pun">=</span><span class="pln">id
      </span><span class="lit">@cust_name</span><span class="pun">=</span><span class="pln">name
      </span><span class="lit">@cust_addr</span><span class="pun">=</span><span class="pln">addr
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>In this example, you declare the <i>initialize</i> method with <b>id, name</b>, and <b>addr</b> as local variables. Here, <i>def</i> and <i>end</i> are used to define a Ruby method <i>initialize</i>. You will learn more about methods in subsequent chapters.</p>
<p>In the <i>initialize</i> method, you pass on the values of these local variables to the instance variables @cust_id, @cust_name, and @cust_addr. Here local variables hold the values that are passed along with the new method.</p>
<p>Now, you can create objects as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">cust1</span><span class="pun">=</span><span class="typ">Customer</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"1"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"John"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Wisdom Apartments, Ludhiya"</span><span class="pun">)</span><span class="pln">
cust2</span><span class="pun">=</span><span class="typ">Customer</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"2"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Poul"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"New Empire road, Khandala"</span><span class="pun">)</span></pre>
<h2>Member Functions in Ruby Class:</h2>
<p>In Ruby, functions are called methods. Each method in a <i>class</i> starts with the keyword <i>def</i> followed by the method name.</p>
<p>The method name always preferred in <b>lowercase letters</b>. You end a method in Ruby by using the keyword <i>end</i>.</p>
<p>Here is the example to define a Ruby method:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">Sample</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> </span><span class="kwd">function</span><span class="pln">
      statement </span><span class="lit">1</span><span class="pln">
      statement </span><span class="lit">2</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>Here, <i>statement 1</i> and <i>statement 2</i> are part of the body of the method <i>function</i> inside the class Sample. These statments could be any valid Ruby statement. For example we can put a method <i>puts</i> to print <i>Hello Ruby</i> as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="kwd">class</span><span class="pln"> </span><span class="typ">Sample</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> hello
      puts </span><span class="str">"Hello Ruby!"</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>Now in the following example, create one object of Sample class and call <i>hello</i> method and see the result:</p>
<pre class="prettyprint notranslate tryit prettyprinted" style="cursor: default;"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Sample</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> hello
      puts </span><span class="str">"Hello Ruby!"</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># Now using above class to create objects</span><span class="pln">
</span><span class="kwd">object</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Sample</span><span class="pun">.</span><span class="pln"> </span><span class="kwd">new</span><span class="pln">
</span><span class="kwd">object</span><span class="pun">.</span><span class="pln">hello</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Hello</span><span class="pln"> </span><span class="typ">Ruby</span><span class="pun">!</span></pre>
<h2>Simple Case Study:</h2>
<p>Here is a case study if you want to do more practice with class and objects:</p>
<p><b><a href="#/app/basic/04_class_case_study.html" title="Ruby Class Case Study">Ruby Class Case Study</a></b></p>

</div>
</ion-content>
</ion-view>