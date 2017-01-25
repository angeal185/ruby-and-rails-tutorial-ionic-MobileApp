<ion-view view-title="11 - Views">
<ion-content style="margin:0 12px">

<div class="col-md-7 middle-col">
<h1>Views</h1>

<hr>

<p>A Rails View is an ERb program that shares data with controllers through mutually accessible variables.</p>
<p>If you look in the app/views directory of the library application, you will see one subdirectory for each of the controllers, we have created: book. Each of these subdirectories was created automatically when the same-named controller was created with the generate script.</p>
<p>Rails let&apos;s you know that you need to create the view file for each new method. Each method you define in the controller needs to have a corresponding <b>erb</b> file, with the same name as the method, to display the data that the method is collecting.</p>
<p>So let&apos;s create view files for all the methods we have defined in the book_controller.rb. While executing these views, simultaneously check these actions are applicable into the database or not.</p>
<h2>Creating View File for list Method</h2>
<p>Create a file called <b>list.html.erb</b> using your favourite text editor and save it to app/views/book. After creating and saving the file, refresh your web browser. You should see a blank page; if you don&apos;t, check the spelling of your file and make sure that it is exactly the same as your controller&apos;s method.</p>
<p>Now, display the actual content. Let us put the following code into list.html.erb.</p>
<pre class="prettyprint notranslate">
&lt;% if @books.blank? %&gt;
&lt;p&gt;There are not any books currently in the system.&lt;/p&gt;
&lt;% else %&gt;
&lt;p&gt;These are the current books in our system&lt;/p&gt;

&lt;ul id = &quot;books&quot;&gt;
   &lt;% @books.each do |c| %&gt;
   &lt;li&gt;&lt;%= link_to c.title, {:action =&gt; &apos;show&apos;, :id =&gt; c.id} -%&gt;&lt;/li&gt;
   &lt;% end %&gt;
&lt;/ul&gt;

&lt;% end %&gt;
&lt;p&gt;&lt;%= link_to &quot;Add new Book&quot;, {:action =&gt; &apos;new&apos; }%&gt;&lt;/p&gt;
</pre>
<p>The code to be executed is to check whether the @books array has any objects in it. The <b>.blank?</b> method returns true if the array is empty, and false if it contains any objects. This @books object was created in controller inside the list method.</p>
<p>The code between the &lt;%= %&gt; tags is a <b>link_to</b> method call. The first parameter of link_to is the text to be displayed between the &lt;a&gt; tags. The second parameter is what action is called when the link is clicked. In this case, it is the show method. The final parameter is the id of the book that is passed via the params object.</p>
<p>Now, try refreshing your browser and you should get the following screen because we don&apos;t have any book in our library.</p>
<h2>Creating View File for new Method</h2>
<p>Till now, we don&apos;t have any book in our library. We have to create few books in the system. So, let us design a view corresponding to the <b>new</b> method defined in the book_controller.rb.</p>
<p>Create a file called new.html.erb using your favorite text editor and save it to app/views/book. Add the following code to the new.html.erb file.</p>
<pre class="prettyprint notranslate">
&lt;h1&gt;Add new book&lt;/h1&gt;

&lt;%= form_tag :action =&gt; &apos;create&apos; do %&gt;
&lt;p&gt;&lt;label for = &quot;book_title&quot;&gt;Title&lt;/label&gt;:

&lt;%= text_field &apos;books&apos;, &apos;title&apos; %&gt;&lt;/p&gt;
&lt;p&gt;&lt;label for = &quot;book_price&quot;&gt;Price&lt;/label&gt;:

&lt;%= text_field &apos;books&apos;, &apos;price&apos; %&gt;&lt;/p&gt;
&lt;p&gt;&lt;label for = &quot;book_subject_id&quot;&gt;Subject&lt;/label&gt;:

&lt;%= collection_select(:books, :subject_id, @subjects, :id, :name, prompt: true) %&gt;&lt;/p&gt;
&lt;p&gt;&lt;label for = &quot;book_description&quot;&gt;Description&lt;/label&gt;&lt;br/&gt;

&lt;%= text_area &apos;books&apos;, &apos;description&apos; %&gt;&lt;/p&gt;
&lt;%= submit_tag &quot;Create&quot; %&gt;

&lt;% end -%&gt;
&lt;%= link_to &apos;Back&apos;, {:action =&gt; &apos;list&apos;} %&gt;
</pre>
<p>Here <b>form_tag</b> method interprets the Ruby code into a regular HTML &lt;form&gt; tag using all the information supplied to it. This tag, for example, outputs the following HTML &#x2212;</p>
<pre class="result notranslate">
&lt;form action = &quot;/book/create&quot; method = &quot;post&quot;&gt;
</pre>
<p>Next method is <b>text_field</b> that outputs an &lt;input&gt; text field. The parameters for text_field are object and field name. In this case, the object is <i>book</i> and the name is <i>title</i>.</p>
<p>Rails method called <b>collection_select</b>, creates an HTML select menu built from an array, such as the @books one. There are five parameters, which are as follows &#x2212;</p>
<ion-list>
<li><p><b>:book</b> &#x2212; The object you are manipulating. In this case, it&apos;s a book object.</p></li>
<li><p><b>:subject_id</b> &#x2212; The field that is populated when the book is saved.</p></li>
<li><p><b>@books</b> &#x2212; The array you are working with.</p></li>
<li><p><b>:id</b> &#x2212; The value that is stored in the database. In terms of HTML, this is the &lt;option&gt; tag&apos;s value parameter.</p></li>
<li><p><b>:name</b> &#x2212; The output that the user sees in the pull-down menu. This is the value between the &lt;option&gt; tags.</p></li>
</ion-list>
<p>The next used is <b>submit_tag</b>, which outputs an &lt;input&gt; button that submits the form. Finally, there is the <b>end</b> method that simply translates into &lt;/form&gt;.</p>
<p>Go to your browser and visit <b>http://localhost:3000/book/new.</b></p>

<p>Enter some data in this form and then click the Create button. Here i have added the following details into the fields &#x2212;</p> 
<pre class="result notranslate">
Title: Advance Physics
Price: 390
Subject: Physics
Description: This is test to create new book
</pre>  
<p>When you click the <b>Create</b> button, it will call the <b>create</b> method, which does not need any view because this method is using either <b>list</b> or <b>new</b> methods to view the results. So, when you click the Create button, the data should submit successfully and redirect you to the list page, in which you now have a single item listed</p>
<p>If you click the link, you should see another Template is missing error, since you haven&apos;t created the template file for show method yet.</p>
<h2>Creating View File for show Method</h2>
<p>This method will display the complete detail about any book available in the library. Create a show.html.erb file under app/views/book and populate it with the following code &#x2212;</p>
<pre class="prettyprint notranslate">
&lt;h1&gt;&lt;%= @book.title %&gt;&lt;/h1&gt;

&lt;p&gt;
   &lt;strong&gt;Price: &lt;/strong&gt; $&lt;%= @book.price %&gt;&lt;br /&gt;
   &lt;strong&gt;Subject :&lt;/strong&gt; &lt;%= @book.subject.name %&gt;&lt;br /&gt;
   &lt;strong&gt;Created Date:&lt;/strong&gt; &lt;%= @book.created_at %&gt;&lt;br /&gt;
&lt;/p&gt;

&lt;p&gt;&lt;%= @book.description %&gt;&lt;/p&gt;

&lt;hr /&gt;

&lt;%= link_to &apos;Back&apos;, {:action =&gt; &apos;list&apos;} %&gt;
</pre>
<p>This is the first time you have taken the full advantage of associations, which enable you to easily pull data from related objects.</p>
<p>The format used is <b>@variable.relatedObject.column</b>. In this instance, you can pull the subject&apos;s name value through the @book variable using the <b>belongs_to</b> associations. If click on any listed record then it will show you the detail of the record</p>
<h2>Creating View File for edit Method</h2>
<p>Create a new file called edit.html.erb and save it in app/views/book. Populate it with the following code &#x2212;</p>
<pre class="prettyprint notranslate">
&lt;h1&gt;Edit Book Detail&lt;/h1&gt;

&lt;%= form_for @book, :url =&gt;{:action =&gt; &quot;update&quot;, :id =&gt;@book} do |f| %&gt;

&lt;p&gt;Title: &lt;%= f.text_field &apos;title&apos; %&gt;&lt;/p&gt;
&lt;p&gt;Price: &lt;%= f.text_field  &apos;price&apos; %&gt;&lt;/p&gt;
&lt;p&gt;Subject: &lt;%= f.collection_select :subject_id, Subject.all, :id, :name %&gt;&lt;/p&gt;
&lt;p&gt;Description&lt;br/&gt;

&lt;%= f.text_area &apos;description&apos; %&gt;&lt;/p&gt;
&lt;%= f.submit &quot;Save changes&quot; %&gt;
&lt;% end %&gt;

&lt;%= link_to &apos;Back&apos;, {:action =&gt; &apos;list&apos; } %&gt;
</pre>
<p>This code is very similar to the <b>new</b> method except action to be updated instead of creating and defining an id.</p>
<p>In this scenario, we used <b>form_for</b> tag for the form action. It will perform better than <b>form_tag</b>. Why because it will create interaction with the Model easily. Therefore it is better to use form_for tag whenever you need interaction between the model and the form fields.</p>
<p>At this point, we need some modification in the <b>list method&apos;s</b> view file. Go to the &lt;li&gt;&lt;/li&gt; element and modify it to look like the following &#x2212;</p>
<pre class="prettyprint notranslate">
&lt;li&gt;
   &lt;%= link_to c.title, {:action =&gt; &quot;show&quot;, :id =&gt; c.id} -%&gt;
   &lt;b&gt; &lt;%= link_to &apos;Edit&apos;, {:action =&gt; &quot;edit&quot;,
   :id =&gt; c.id} %&gt;&lt;/b&gt;
&lt;/li&gt;
</pre>
<p>Now, try to browse books using the <b>http://localhost:3000/book/list.</b> It will give you the listing of all the books along with <b>Edit</b> option. When you click the Edit option, then you will have next screen</p>
<p>Now, you edit this information and then click the <i>Save Changes</i> button. This will result in a call to <b>update</b> method available in the controller file and it will update all the changed attribute. Notice that the <b>update</b> method does not need any view file because it&apos;s using either <b>show</b> or <b>edit</b> methods to show its results.</p>
<h2>Creating View File for delete Method</h2>
<p>Removing information from a database using Ruby on Rails is almost too easy. You do not need to write any view code for the delete method because this method is using <b>list</b> method to display the result. So, let&apos;s just modify list.html.erb again and add a delete link.</p>
<p>Go to the &lt;li&gt;&lt;/li&gt; element and modify it to look like the following &#x2212;</p>
<pre class="prettyprint notranslate">
&lt;li&gt;
   &lt;%= link_to c.title, {:action =&gt; &apos;show&apos;, :id =&gt; c.id} -%&gt;
   &lt;b&gt; &lt;%= link_to &apos;Edit&apos;, {:action =&gt; &apos;edit&apos;, :id =&gt; c.id} %&gt;&lt;/b&gt;
   &lt;b&gt; &lt;%= link_to &quot;Delete&quot;, {:action =&gt; &apos;delete&apos;, :id =&gt; c.id},
      :confirm =&gt; &quot;Are you sure you want to delete this item?&quot; %&gt;&lt;/b&gt;
&lt;/li&gt;
</pre>
<p>The <b>:confirm</b> parameter presents a JavaScript confirmation box asking if you really want to perform the action. If the user clicks OK, the action proceeds, and the item is deleted.</p>
<p>Now, try browsing books using <b>http://localhost:3000/book/list.</b> It will give you listing of all the books along with <b>Edit</b> and <b>Delete</b> options</p>
<p>Now using the Delete option, you can delete any listed record.</p>
<h2>Creating View File for show_subjects Method</h2>
<p>Create a new file, show_subjects.html.erb, in the app/views/book directory and add the following code to it &#x2212;</p>
<pre class="prettyprint notranslate">
&lt;h1&gt;&lt;%= @subject.name -%&gt;&lt;/h1&gt;

&lt;ul&gt;
   &lt;% @subject.books.each do |c| %&gt;
   &lt;li&gt;&lt;%= link_to c.title, :action =&gt; &quot;show&quot;, :id =&gt; c.id -%&gt;&lt;/li&gt;
   &lt;% end %&gt;
&lt;/ul&gt;
</pre>
<p>You are taking advantage of associations by iterating through a single subject&apos;s many books listings.</p>
<p>Now modify the Subject: line of show.html.erb so that the subject listing shows a link.</p>
<pre class="prettyprint notranslate">
&lt;strong&gt;Subject: &lt;/strong&gt; &lt;%= link_to @book.subject.name,
:action =&gt; &quot;show_subjects&quot;, :id =&gt; @book.subject.id %&gt;&lt;br /&gt;
</pre>
<p>This will output a list of subject on the index page, so that users can access them directly.</p>
<p>Modify <b>list.html.erb</b> to add the following to the top of the file &#x2212;</p>
<pre class="prettyprint notranslate">
&lt;ul id = &quot;subjects&quot;&gt;
   &lt;% Subject.find(:all).each do |c| %&gt;
   &lt;li&gt;&lt;%= link_to c.name, :action =&gt; &quot;show_subjects&quot;, :id =&gt; c.id %&gt;&lt;/li&gt;
   &lt;% end %&gt;
&lt;/ul&gt;
</pre>
<p>Now try browsing books using http://localhost:3000/book/list. It will display all subjects with links so that you can browse all the books related to that subject.</p>
<h2>What is Next?</h2>
<p>Hope now you are feeling comfortable with all the operations of Rails.</p>
<p>The next chapter explains how to use <b>Layouts</b> to put your data in a better way. We will show you how to use CSS in your Rails applications.</p>
</div>
</ion-content>
</ion-view>