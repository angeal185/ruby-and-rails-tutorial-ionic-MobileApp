<ion-view view-title="Class Case Study">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Class Case Study</h1>
<hr>

<p>For your case study, you will create a Ruby Class called Customer and you will declare two methods:</p>
<ion-list>
<li><p><i>display_details</i>: method will display the details of the customer.</p></li>
<li><p><i>total_no_of_customers</i>:  method will display the total number of customers created in the system.</p></li>
</ion-list>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Customer</span><span class="pln">
   </span><span class="pun">@</span><span class="lit">@no_of_customers</span><span class="pun">=</span><span class="lit">0</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">id</span><span class="pun">,</span><span class="pln"> name</span><span class="pun">,</span><span class="pln"> addr</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@cust_id</span><span class="pun">=</span><span class="pln">id
      </span><span class="lit">@cust_name</span><span class="pun">=</span><span class="pln">name
      </span><span class="lit">@cust_addr</span><span class="pun">=</span><span class="pln">addr
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> display_details</span><span class="pun">()</span><span class="pln">
      puts </span><span class="str">"Customer id #@cust_id"</span><span class="pln">
      puts </span><span class="str">"Customer name #@cust_name"</span><span class="pln">
      puts </span><span class="str">"Customer address #@cust_addr"</span><span class="pln">
    </span><span class="kwd">end</span><span class="pln">
    </span><span class="kwd">def</span><span class="pln"> total_no_of_customers</span><span class="pun">()</span><span class="pln">
       </span><span class="pun">@</span><span class="lit">@no_of_customers</span><span class="pln"> </span><span class="pun">+=</span><span class="pln"> </span><span class="lit">1</span><span class="pln">
       puts </span><span class="str">"Total number of customers: #@@no_of_customers"</span><span class="pln">
    </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span></pre>
<p>The <i>display_details</i> method contains three puts statements displaying the Customer ID, the Customer name, and the Customer address. The puts statement:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">puts </span><span class="str">"Customer id #@cust_id"</span></pre>
<p>will display the text Customer id followed by the value of the variable @cust_id in a single line.</p>
<p>When you want to display the text and the value
of the instance variable in a single line, you need to precede the variable name with the hash symbol (#) in the puts statement. The text and the instance variable along with the hash symbol (#) should be enclosed in double quotation marks.</p>
<p>The second method, total_no_of_customers, is a method that contains the class variable @@no_of_customers. The expression @@no_of_
customers+=1 adds 1 to the variable no_of_customers each time the method total_no_of_customers is called. In this way, you will always
have the total number of customers in the class variable.</p>
<p>Now create two customers as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">cust1</span><span class="pun">=</span><span class="typ">Customer</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"1"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"John"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Wisdom Apartments, Ludhiya"</span><span class="pun">)</span><span class="pln">
cust2</span><span class="pun">=</span><span class="typ">Customer</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"2"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Poul"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"New Empire road, Khandala"</span><span class="pun">)</span></pre>
<p>Here, we create two objects of the Customer class as cust1 and cust2 and pass the necessary parameters with the new method. The initialize method is invoked, and the necessary properties of the object are initialized.</p>
<p>Once the objects are created, you need to call the methods of the class by using the two objects. If you want to call a method or any data member, you write the following:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">cust1</span><span class="pun">.</span><span class="pln">display_details</span><span class="pun">()</span><span class="pln">
cust1</span><span class="pun">.</span><span class="pln">total_no_of_customers</span><span class="pun">()</span></pre>
<p>The object name should always be followed by a dot, which is in turn followed by the method name or any data member. We have seen how to call the two methods by using the cust1 object. Using the cust2 object, you can call both methods as shown below:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">cust2</span><span class="pun">.</span><span class="pln">display_details</span><span class="pun">()</span><span class="pln">
cust2</span><span class="pun">.</span><span class="pln">total_no_of_customers</span><span class="pun">()</span></pre>
<h2>Save and Execute the Code:</h2>
<p>Now, put all this source code in main.rb file as follows:</p>
<pre class="prettyprint notranslate tryit prettyprinted" style="cursor: default;"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">class</span><span class="pln"> </span><span class="typ">Customer</span><span class="pln">
   </span><span class="pun">@</span><span class="lit">@no_of_customers</span><span class="pun">=</span><span class="lit">0</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> initialize</span><span class="pun">(</span><span class="pln">id</span><span class="pun">,</span><span class="pln"> name</span><span class="pun">,</span><span class="pln"> addr</span><span class="pun">)</span><span class="pln">
      </span><span class="lit">@cust_id</span><span class="pun">=</span><span class="pln">id
      </span><span class="lit">@cust_name</span><span class="pun">=</span><span class="pln">name
      </span><span class="lit">@cust_addr</span><span class="pun">=</span><span class="pln">addr
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> display_details</span><span class="pun">()</span><span class="pln">
      puts </span><span class="str">"Customer id #@cust_id"</span><span class="pln">
      puts </span><span class="str">"Customer name #@cust_name"</span><span class="pln">
      puts </span><span class="str">"Customer address #@cust_addr"</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
   </span><span class="kwd">def</span><span class="pln"> total_no_of_customers</span><span class="pun">()</span><span class="pln">
      </span><span class="pun">@</span><span class="lit">@no_of_customers</span><span class="pln"> </span><span class="pun">+=</span><span class="pln"> </span><span class="lit">1</span><span class="pln">
      puts </span><span class="str">"Total number of customers: #@@no_of_customers"</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="com"># Create Objects</span><span class="pln">
cust1</span><span class="pun">=</span><span class="typ">Customer</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"1"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"John"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Wisdom Apartments, Ludhiya"</span><span class="pun">)</span><span class="pln">
cust2</span><span class="pun">=</span><span class="typ">Customer</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">(</span><span class="str">"2"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"Poul"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"New Empire road, Khandala"</span><span class="pun">)</span><span class="pln">

</span><span class="com"># Call Methods</span><span class="pln">
cust1</span><span class="pun">.</span><span class="pln">display_details</span><span class="pun">()</span><span class="pln">
cust1</span><span class="pun">.</span><span class="pln">total_no_of_customers</span><span class="pun">()</span><span class="pln">
cust2</span><span class="pun">.</span><span class="pln">display_details</span><span class="pun">()</span><span class="pln">
cust2</span><span class="pun">.</span><span class="pln">total_no_of_customers</span><span class="pun">()</span></pre>
<p>Now, run this program as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">$ ruby main</span><span class="pun">.</span><span class="pln">rb</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Customer</span><span class="pln"> id </span><span class="lit">1</span><span class="pln">
</span><span class="typ">Customer</span><span class="pln"> name </span><span class="typ">John</span><span class="pln">
</span><span class="typ">Customer</span><span class="pln"> address </span><span class="typ">Wisdom</span><span class="pln"> </span><span class="typ">Apartments</span><span class="pun">,</span><span class="pln"> </span><span class="typ">Ludhiya</span><span class="pln">
</span><span class="typ">Total</span><span class="pln"> number of customers</span><span class="pun">:</span><span class="pln"> </span><span class="lit">1</span><span class="pln">
</span><span class="typ">Customer</span><span class="pln"> id </span><span class="lit">2</span><span class="pln">
</span><span class="typ">Customer</span><span class="pln"> name </span><span class="typ">Poul</span><span class="pln">
</span><span class="typ">Customer</span><span class="pln"> address </span><span class="typ">New</span><span class="pln"> </span><span class="typ">Empire</span><span class="pln"> road</span><span class="pun">,</span><span class="pln"> </span><span class="typ">Khandala</span><span class="pln">
</span><span class="typ">Total</span><span class="pln"> number of customers</span><span class="pun">:</span><span class="pln"> </span><span class="lit">2</span></pre>
</div>
</ion-content>
</ion-view>