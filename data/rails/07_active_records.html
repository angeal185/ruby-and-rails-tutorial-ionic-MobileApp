<ion-view view-title="07 - Active Records">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Active Records</h1>
<hr>
<p>Rails Active Record is the Object/Relational Mapping (ORM) layer supplied with Rails. It closely follows the standard ORM model, which is as follows &#x2212;</p>
<ion-list>
<li>tables map to classes,</li>
<li>rows map to objects and</li>
<li>columns map to object attributes.</li>
</ion-list>
<p>Rails Active Records provide an interface and binding between the tables in a relational database and the Ruby program code that manipulates database records. Ruby method names are automatically generated from the field names of database tables.</p>
<p>Each Active Record object has CRUD (<b><u>C</u></b>reate, <b><u>R</u></b>ead, <b><u>U</u></b>pdate, and <b><u>D</u></b>elete) methods for database access. This strategy allows simple designs and straight forward mappings between database tables and application objects.</p>
<h2>Translating a Domain Model into SQL</h2>
<p>Translating a domain model into SQL is generally straight forward, as long as you remember that you have to write Rails-friendly SQL. In practical terms, you have to follow certain rules &#x2212;</p>
<ion-list>
<li><p>Each entity (such as book) gets a table in the database named after it, but in the plural (books).</p></li>
<li><p>Each such entity-matching table has a field called <i>id</i>, which contains a unique integer for each record inserted into the table.</p></li>
<li><p>Given entity x and entity y, if entity y belongs to entity x, then table y has a field called x_id.</p></li>
<li><p>The bulk of the fields in any table store the values for that entity&apos;s simple properties (anything that&apos;s a number or a string).</p></li>
</ion-list>
<h2>Creating Active Record Files (Models)</h2>
<p>To create the Active Record files for our entities for library application, introduced in the previous chapter, issue the following command from the top level of the application directory.</p>
<pre class="result notranslate">
library\&gt; ruby script/generate model Book
library\&gt; ruby script/generate model Subject
</pre>
<p>Above <b>rails generate model book</b> commands generates the auto code </p>
<p>You&apos;re telling the generator to create models called Book and Subject to store instances of books and subjects. Notice that you are capitalizing Book and Subject and using the singular form. This is a Rails paradigm that you should follow each time you create a model.</p>
<p>When you use the generate tool, Rails creates the actual model file that holds all the methods unique to the model and the business rules you define, a unit test file for performing test-driven development, a sample data file (called fixtures) to use with the unit tests, and a Rails migration that makes creating database tables and columns easy.</p>
<p>Apart from creating many other files and directories, this will create files named <b>book.rb</b> and <b>subject.rb</b> containing a skeleton definition in the <b>app/models</b> directory.</p>
<p>Content available in book.rb &#x2212;</p>
<pre class="result notranslate">
class Book &lt; ActiveRecord::Base
end
</pre>
<p>Content available in subject.rb &#x2212;</p>
<pre class="result notranslate">
class Subject &lt; ActiveRecord::Base
end
</pre>
<h2>Creating Associations between Models</h2>
<p>When you have more than one model in your rails application, you would need to create connection between those models. You can do this via associations. Active Record supports three types of associations &#x2212;</p>
<ion-list>
<li><p><b>one-to-one</b> &#x2212; A one-to-one relationship exists when one item has exactly one of another item. For example, a person has exactly one birthday or a dog has exactly one owner.</p></li>
<li><p><b>one-to-many</b> &#x2212; A one-to-many relationship exists when a single object can be a member of many other objects. For instance, one subject can have many books.</p></li> 
<li><p><b>many-to-many</b> &#x2212; A many-to-many relationship exists when the first object is related to one or more of a second object, and the second object is related to one or many of the first object.</p></li>
</ion-list>
<p>You indicate these associations by adding declarations to your models: has_one, has_many, belongs_to, and has_and_belongs_to_many.</p>
<p>Now, you need to tell Rails what relationships you want to establish within the library data system. To do so, modify book.rb and subject.rb to look like this &#x2212;</p>
<pre class="prettyprint notranslate">
class Book &lt; ActiveRecord::Base
   belongs_to :subject
end
</pre>
<p>We have used a singular subject in the above example, because one Book can belong to a single Subject.</p>
<pre class="prettyprint notranslate">
class Subject &lt; ActiveRecord::Base
   has_many :books
end
</pre>
<p>We have used plural books here, because one subject can have multiple books.</p>
<h2>Implementing Validations on Models</h2>
<p>The implementation of validations is done in a Rails model. The data you are entering into the database is defined in the actual Rails model, so it only makes sense to define what valid data entails in the same location.</p>
<p>The validations are &#x2212;</p>
<ion-list>
<li>The value of title field should not be NULL.</li>
<li>The value of price field should be numeric.</li>
</ion-list>
<p>Open <b>book.rb</b> in the <b>app\model</b> subdiractory and put the following validations &#x2212;</p>
<pre class="result notranslate">
class Book &lt; ActiveRecord::Base
   belongs_to :subject
   validates_presence_of :title
   validates_numericality_of :price, :message=&gt;&quot;Error Message&quot;
end
</pre>
<ion-list>
<li><p><b>validates_presence_of</b> &#x2212; protects &quot;NOT NULL&quot; fields against missing user input.</p></li>
<li><p><b>validates_numericality_of</b> &#x2212; prevents the user, entering non numeric data.</p></li>
</ion-list>
<p>Besides the validations mentioned above, there are other common validations.</p>
<h2>What is Next?</h2>
<p>In the next chapter, we will learn Rails Migration, which allows you to use Ruby to define changes to your database schema, making it possible to use a version control system to keep things synchronized with the actual code.</p>
</div>
</ion-content>
</ion-view>