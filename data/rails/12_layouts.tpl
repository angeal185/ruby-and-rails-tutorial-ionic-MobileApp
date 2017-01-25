<ion-view view-title="12 - Layouts">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Layouts</h1>
<hr>
<p>A layout defines the surroundings of an HTML page. It&apos;s the place to define a common look and feel of your final output. Layout files reside in app/views/layouts.</p>
<p>The process involves defining a layout template and then letting the controller know that it exists and to use it. First, let&apos;s create the template.</p>
<p>Add a new file called standard.html.erb to app/views/layouts. You let the controllers know what template to use by the name of the file, so following a same naming scheme is advised.</p>
<p>Add the following code to the new standard.html.erb file and save your changes &#x2212;</p>
<pre class="prettyprint notranslate">
&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;

&lt;html xmlns = &quot;http://www.w3.org/1999/xhtml&quot;&gt;

   &lt;head&gt;
      &lt;meta http-equiv = &quot;Content-Type&quot; content = &quot;text/html; charset = iso-8859-1&quot; /&gt;
      &lt;meta http-equiv = &quot;Content-Language&quot; content = &quot;en-us&quot; /&gt;
      &lt;title&gt;Library Info System&lt;/title&gt;
      &lt;%= stylesheet_link_tag &quot;style&quot; %&gt;
   &lt;/head&gt;

   &lt;body id = &quot;library&quot;&gt;
      &lt;div id = &quot;container&quot;&gt;
         
         &lt;div id = &quot;header&quot;&gt;
            &lt;h1&gt;Library Info System&lt;/h1&gt;
            &lt;h3&gt;Library powered by Ruby on Rails&lt;/h3&gt;
         &lt;/div&gt;

         &lt;div id = &quot;content&quot;&gt;
            &lt;%= yield -%&gt;
         &lt;/div&gt;

         &lt;div id = &quot;sidebar&quot;&gt;&lt;/div&gt;
         
      &lt;/div&gt;
   &lt;/body&gt;
   
&lt;/html&gt;
</pre>
<p>Everything you just added were standard HTML elements except two lines. The <b>stylesheet_link_tag</b> helper method outputs a stylesheet &lt;link&gt;. In this instance, we are linking style.css style sheet. The <b>yield</b> command lets Rails know that it should put the html.erb for the method called here.</p>
<p>Now open <b>book_controller.rb</b> and add the following line just below the first line &#x2212;</p>
<pre class="result notranslate">
class BookController &lt; ApplicationController
layout &apos;standard&apos;
def list
@books = Book.all
end
...................
</pre>
<p>It instructs the controller that we want to use a layout available in the standard.html.erb file. Now try browsing books</p>
<h2>Adding Style Sheet</h2>
<p>Till now, we have not created any style sheet, so Rails is using the default style sheet. Now let&apos;s create a new file called style.css and save it in /public/stylesheets. Add the following code to this file.</p>
<pre class="prettyprint notranslate">
body {
   font-family: Helvetica, Geneva, Arial, sans-serif;
   font-size: small;
   font-color: #000;
   background-color: #fff;
}

a:link, a:active, a:visited {
   color: #CD0000;
}

input { 
   margin-bottom: 5px;
}

p { 
   line-height: 150%;
}

div#container {
   width: 760px;
   margin: 0 auto;
}

div#header {
   text-align: center;
   padding-bottom: 15px;
}

div#content {
   float: left;
   width: 450px;
   padding: 10px;
}

div#content h3 {
   margin-top: 15px;
}

ul#books {
   list-style-type: none;
}

ul#books li {
   line-height: 140%;
}

div#sidebar {
   width: 200px;
   margin-left: 480px;
}

ul#subjects {
   width: 700px;
   text-align: center;
   padding: 5px;
   background-color: #ececec;
   border: 1px solid #ccc;
   margin-bottom: 20px;
}

ul#subjects li {
   display: inline;
   padding-left: 5px;
}
</pre>
<p>Now refresh your browser and see the difference.</p>
<h2>What is Next?</h2>
<p>The next chapter explains how to develop applications using Rails Scaffolding to give user access to add, delete, and modify the records in any database.</p>
</div>
</ion-content>
</ion-view>