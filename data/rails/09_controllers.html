<ion-view view-title="09 - Controller">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Controller</h1>
<hr>
<p>The Rails controller is the logical center of your application. It coordinates the interaction between the user, the views, and the model. The controller is also a home to a number of important ancillary services.</p>
<ion-list>
<li><p>It is responsible for routing external requests to internal actions. It handles people-friendly URLs extremely well.</p></li>
<li><p>It manages caching, which can give applications orders-of-magnitude performance boosts.</p></li>
<li><p>It manages helper modules, which extend the capabilities of the view templates without bulking up their code.</p></li>
<li><p>It manages sessions, giving users the impression of an ongoing interaction with our applications.</p></li>
</ion-list>
<p>The process for creating a controller is very easy, and it&apos;s similar to the process we&apos;ve already used for creating a model. We will create just one controller here &#x2212;</p>
<pre class="result notranslate">
library\&gt; rails generate controller Book
</pre>
<p>Notice that you are capitalizing Book and using the singular form. This is a Rails paradigm that you should follow each time you create a controller.</p>
<p>This command accomplishes several tasks, of which the following are relevant here &#x2212;</p>
<ion-list>
<li><p>It creates a file called <b>app/controllers/book_controller.rb</b></p></li>
</ion-list>
<p>If you look at book_controller.rb, you will find it as follows &#x2212;</p>
<pre class="result notranslate">
class BookController &lt; ApplicationController
end
</pre>
<p>Controller classes inherit from <i>ApplicationController,</i> which is the other file in the controllers folder: <b>application.rb</b>.</p>
<p>The <i>ApplicationController</i> contains code that can be run in all your controllers and it inherits from Rails <i>ActionController::Base</i> class.</p>
<p>You don&apos;t need to worry with the <i>ApplicationController</i> as of yet, so let&apos;s just define a few method stubs in <b>book_controller.rb</b>. Based on your requirement, you could define any number of functions in this file.</p>
<p>Modify the file to look like the following and save your changes. Note that it is upto you what name you want to give to these methods, but better to give relevant names.</p>
<pre class="prettyprint notranslate">
class BookController &lt; ApplicationController
   def list
   end
   
   def show
   end
   
   def new
   end
   
   def create
   end
   
   def edit
   end
   
   def update
   end
   
   def delete
   end
   
end
</pre>
<p>Now let us implement all the methods one by one.</p>
<h2>Implementing the list Method</h2>
<p>The list method gives you a list of all the books in the database. This functionality will be achieved by the following lines of code. Edit the following lines in book_controller.rb file.</p>
<pre class="prettyprint notranslate">
def list
   @books = Book.all
end
</pre>
<p>The <i>@books = Book.all</i> line in the list method tells Rails to search the books table and store each row it finds in the @books instance object.</p>
<h2>Implementing the show Method</h2>
<p>The show method displays only further details on a single book. This functionality will be achieved by the following lines of code.</p>
<pre class="result notranslate">
def show
   @book = Book.find(params[:id])
end
</pre>
<p>The show method&apos;s <i>@book = Book.find(params[:id])</i> line tells Rails to find only the book that has the id defined in params[:id].</p>
<p>The params object is a container that enables you to pass values between method calls. For example, when you&apos;re on the page called by the list method, you can click a link for a specific book, and it passes the id of that book via the params object so that show can find the specific book.</p>
<h2>Implementing the new Method</h2>
<p>The new method lets Rails know that you will create a new object. So just add the following code in this method.</p>
<pre class="prettyprint notranslate">
def new
   @book = Book.new
   @subjects = Subject.all
end
</pre>
<p>The above method will be called when you will display a page to the user to take user input. Here second line grabs all the subjects from the database and puts them in an array called @subjects.</p>
<h2>Implementing the create Method</h2>
<p>Once you take user input using HTML form, it is time to create a record into the database. To achieve this, edit the create method in the book_controller.rb to match the following &#x2212;</p>
<pre class="prettyprint notranslate">
def create
   @book = Book.new(book_params)
	
   if @book.save
      redirect_to :action =&gt; &apos;list&apos;
   else
      @subjects = Subject.all
      render :action =&gt; &apos;new&apos;
   end
   
end

def book_params
   params.require(:books).permit(:title, :price, :subject_id, :description)
end
</pre>
<p>The first line creates a new instance variable called @book that holds a Book object built from the data, the user submitted. The <b>book_params</b> method is used to collect all the fields from object <b>:books</b>. The data was passed from the new method to create using the params object.</p>
<p>The next line is a conditional statement that redirects the user to the <b>list</b> method if the object saves correctly to the database. If it doesn&apos;t save, the user is sent back to the new method. The redirect_to method is similar to performing a meta refresh on a web page: it automatically forwards you to your destination without any user interaction.</p>
<p>Then <i>@subjects = Subject.all</i> is required in case it does not save data successfully and it becomes similar case as with new option.</p>
<h2>Implementing the edit Method</h2>
<p>The edit method looks nearly identical to the show method. Both methods are used to retrieve a single object based on its id and display it on a page. The only difference is that the show method is not editable.</p>
<pre class="prettyprint notranslate">
def edit
   @book = Book.find(params[:id])
   @subjects = Subject.all
end
</pre>
<p>This method will be called to display data on the screen to be modified by the user. The second line grabs all the subjects from the database and puts them in an array called @subjects.</p>
<h2>Implementing the update Method</h2>
<p>This method will be called after the edit method, when the user modifies a data and wants to update the changes into the database. The update method is similar to the create method and will be used to update existing books in the database.</p>
<pre class="prettyprint notranslate">
def update
   @book = Book.find(params[:id])
	
   if @book.update_attributes(book_param)
      redirect_to :action =&gt; &apos;show&apos;, :id =&gt; @book
   else
      @subjects = Subject.all
      render :action =&gt; &apos;edit&apos;
   end
   
end

def book_param
   params.require(:book).permit(:title, :price, :subject_id, :description)
end
</pre>
<p>The update_attributes method is similar to the save method used by create but instead of creating a new row in the database, it overwrites the attributes of the existing row.</p>
<p>Then <i>@subjects = Subject.all</i> line is required in case it does not save the data successfully, then it becomes similar to edit option.</p>
<h2>Implementing the delete Method</h2>
<p>If you want to delete a record from the database then you will use this method. Implement this method as follows.</p>
<pre class="prettyprint notranslate">
def delete
   Book.find(params[:id]).destroy
   redirect_to :action =&gt; &apos;list&apos;
end
</pre>
<p>The first line finds the classified based on the parameter passed via the params object and then deletes it using the destroy method. The second line redirects the user to the list method using a redirect_to call.</p>
<h2>Additional Methods to Display Subjects</h2>
<p>Assume you want to give a facility to your users to browse all the books based on a given subject. So, you can create a method inside book_controller.rb to display all the subjects. Assume the method name is <b>show_subjects</b> &#x2212;</p>
<pre class="prettyprint notranslate">
def show_subjects
   @subject = Subject.find(params[:id])
end
</pre>
<p>Finally your <b>book_controller.rb</b> file will look as follows &#x2212;</p>
<pre class="prettyprint notranslate">
class BooksController &lt; ApplicationController

   def list
      @books = Book.all
   end

   def show
      @book = Book.find(params[:id])
   end
  
   def new
      @book = Book.new
      @subjects = Subject.all
   end

   def book_params
      params.require(:books).permit(:title, :price, :subject_id, :description)
   end

   def create
      @book = Book.new(book_params)

      if @book.save
         redirect_to :action =&gt; &apos;list&apos;
      else
         @subjects = Subject.all
         render :action =&gt; &apos;new&apos;
      end
   end
   
   def edit
      @book = Book.find(params[:id])
      @subjects = Subject.all
   end
   
   def book_param
      params.require(:book).permit(:title, :price, :subject_id, :description)
   end
   
   def update
      @book = Book.find(params[:id])
      
      if @book.update_attributes(book_param)
         redirect_to :action =&gt; &apos;show&apos;, :id =&gt; @book
      else
         @subjects = Subject.all
         render :action =&gt; &apos;edit&apos;
      end
   end
   
   def delete
      Book.find(params[:id]).destroy
      redirect_to :action =&gt; &apos;list&apos;
   end
   
   def show_subjects
      @subject = Subject.find(params[:id])
   end

end
</pre>
<p>Now save your controller file.</p>
<h2>What is Next?</h2>
<p>You have created almost all the methods, which will work on backend. Next we will define routes (URLs) for actions.</p>
</div>
</ion-content>
</ion-view>