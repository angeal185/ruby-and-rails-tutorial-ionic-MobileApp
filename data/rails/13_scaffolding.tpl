<ion-view view-title="13 - Scaffolding">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Scaffolding</h1>
<hr>
<p>While you&apos;re developing Rails applications, especially those which are mainly providing you with a simple interface to data in a database, it can often be useful to use the scaffold method.</p>
<p>Scaffolding provides more than cheap demo thrills. Here are some benefits &#x2212;</p>
<ion-list>
<li><p>You can quickly get code in front of your users for feedback.</p></li>
<li><p>You are motivated by faster success.</p></li>
<li><p>You can learn how Rails works by looking at the generated code.</p></li>
<li><p>You can use scaffolding as a foundation to jump start your development.</p></li>
</ion-list>
<h2>Scaffolding Example</h2>
<p>To understand <i>scaffolding,</i> let&apos;s create a database called <b>cookbook</b> and a table called <b>recipes</b>.</p>
<h2>Creating an Empty Rails Web Application</h2>
<p>Open a command window and navigate to where you want to create this <b>cookbook</b> web application. So, run the following command to create a complete directory structure.</p>
<pre class="result notranslate">
tp&gt; rails new cookbook
</pre>
<h2>Setting up the Database</h2>
<p>Here is the way to create a database &#x2212;</p>
<pre class="result notranslate">
mysql&gt; create database cookbook;
Query OK, 1 row affected (0.01 sec)

mysql&gt; grant all privileges on cookbook.*
to &apos;root&apos;@&apos;localhost&apos; identified by &apos;password&apos;;
Query OK, 0 rows affected (0.00 sec)

mysql&gt; FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.00 sec)
</pre>
<p>To instruct Rails how to find the database, edit the configuration file cookbook\config\database.yml and change the database name to cookbook. Leave the password empty. When you finish, it should look as follows &#x2212;</p>
<pre class="result notranslate">
development:
   adapter: mysql
   database: cookbook
   username: root
   password: [password]
   host: localhost
	
test:
   adapter: mysql
   database: cookbook
   username: root
   password: [password]
   host: localhost
	
production:
   adapter: mysql
   database: cookbook
   username: root
   password: [password]
   host: localhost
</pre>
<p>Rails lets you run in the development mode, test mode, or production mode, using different databases. This application uses the same database for each.</p>
<h2>The Generated Scaffold Code</h2>
<p>With the scaffold action, Rails generates all the code it needs dynamically. By running <i>scaffold</i> as a script, we can get all the code written to disk, where we can investigate it and then start tailoring it to our requirements.</p>
<p>So now, let&apos;s start once again to generate Scaffold code manually by using the scaffold helper script &#x2212;</p>
<pre class="result notranslate">
cookbook&gt; rails generate scaffold recipe
</pre>
<p>It generates auto-files.</p>
<h2>The Controller</h2>
<p>Let&apos;s look at the code behind the controller. This code is generated by the <b>scaffold</b> generator. If you open app/controllers/recipes_controller.rb, then you will find something as follows &#x2212;</p>
<pre class="prettyprint notranslate">
class RecipesController &lt; ApplicationController
   before_action :set_recipe, only: [:show, :edit, :update, :destroy]
   
   # GET /recipes
   # GET /recipes.json
   def index
      @recipes = Recipe.all
   end
   
   # GET /recipes/1
   # GET /recipes/1.json
   def show
   end
   
   # GET /recipes/new
   def new
      @recipe = Recipe.new
   end
   
   # GET /recipes/1/edit
   def edit
   end
   
   # POST /recipes
   # POST /recipes.json
   def create
      @recipe = Recipe.new(recipe_params)
      
      respond_to do |format|
         if @recipe.save
            format.html { redirect_to @recipe, notice: &apos;Recipe was successfully created.&apos; }
            format.json { render :show, status: :created, location: @recipe }
         else
            format.html { render :new }
            format.json { render json: @recipe.errors, status: :unprocessable_entity }
         end
      end
      
   end
   
   # PATCH/PUT /recipes/1
   # PATCH/PUT /recipes/1.json
   def update
      respond_to do |format|
         if @recipe.update(recipe_params)
            format.html { redirect_to @recipe, notice: &apos;Recipe was successfully updated.&apos; }
            format.json { render :show, status: :ok, location: @recipe }
         else
            format.html { render :edit }
            format.json { render json: @recipe.errors, status: :unprocessable_entity }
         end
      end
      
   end
   
   # DELETE /recipes/1
   # DELETE /recipes/1.json
   def destroy
      @recipe.destroy
         respond_to do |format|
         format.html { redirect_to recipes_url, notice: &apos;Recipe was successfully destroyed.&apos; }
         format.json { head :no_content }
      end
   end
   
   private
   
   # Use callbacks to share common setup or constraints between actions.
   def set_recipe
      @recipe = Recipe.find(params[:id])
   end
   
   # Never trust parameters from the scary internet, only allow the white list through.
   def recipe_params
      params.require(:recipe).permit(:tittle, :instructions)
   end
end
</pre>
<p>When the user of a Rails application selects an action, e.g. &quot;Show&quot; - the controller will execute any code in the appropriate section - &quot;def show&quot; - and then by default will render a template of the same name - &quot;show.html.erb&quot;. This default behavior can be overwritten.</p>
<p>The controller uses ActiveRecord methods such as <i>find, find_all, new, save, update_attributes, and destroy</i> to move data to and from the database tables. Note that you do not have to write any SQL statements, rails will take care of it automatically.</p>
<p>This single line of code will bring the database table to life. It will provide with a simple interface to your data, and ways of &#x2212;</p>
<ion-list>
<li>Creating new entries</li>
<li>Editing current entries</li>
<li>Viewing current entries</li>
<li>Destroying current entries</li>
</ion-list>
<p>When creating or editing an entry, scaffold will do all the hard work like form generation and handling for you, and will even provide clever form generation, supporting the following types of inputs &#x2212;</p>
<ion-list>
<li>Simple text strings</li>
<li>Text areas (or large blocks of text)</li>
<li>Date selectors</li>
<li>Date-time selectors</li>
</ion-list>
<p>You can use Rails Migrations to create and maintain tables.</p>
<pre class="result notranslate">
rake db:migrate RAILS_ENV=development
</pre>
<p>Now, go to the cookbook directory and run the Web Server using the following command &#x2212;</p>
<pre class="result notranslate">
cookbook&gt; rails server
</pre>
<p>Now, open a browser and navigate to <b>http://127.0.0.1:3000/recipe/new.</b> This will provide you a screen to create new entries in the recipes table.</p>
<p>Once you press the <b>Create</b> button to create a new recipe, your record is added into the recipes table and it shows the result</p>
<p>You can see the option to edit, show, and destroy the records. So, play around with these options.</p>
<p>You can also list down all the recipes available in the recipes table using the URL http://127.0.0.1:3000/recipe/list.</p>
<h2>Enhancing the Model</h2>
<p>Rails gives you a lot of error handling for free. To understand this, add some validation rules to the empty recipe  model &#x2212;</p>
<p>Modify app/models/recipe.rb as follows and then test your application &#x2212;</p>
<pre class="result notranslate">
class Recipe &lt; ActiveRecord::Base
   validates_length_of :title, :within =&gt; 1..20
   validates_uniqueness_of :title, :message =&gt; &quot;already exists&quot;
end
</pre>
<p>These entries will give automatic checking.</p>
<ion-list>
<li><p><b>validates_length_of</b> &#x2212; the field is not blank and not too long.</p></li>
<li><p><b>validates_uniqueness_of</b> &#x2212; duplicate values are trapped. Instead of the default Rails error message, we have given a custom message here.</p></li>
</ion-list>
<h2>Alternative Way to Create Scaffolding</h2>
<p>Create an application as shown above and <b>The Generated Scaffold Code</b> as shown below</p>
<pre class="result notranslate">
rails g scaffold Recipe tittle:string instructions:text
</pre>
<p>Above code generates the auto files with data base by using with sqlite3 with tittle and instruction column.</p>
<p>we need to migrate the data base by using below syntax.</p>
<pre class="result notranslate">
$ rake db:migrate RAILS_ENV=development
</pre>
<p>Finally run the application by using the following command line &#x2212;</p>
<pre class="result notranslate">
rails server
</pre>
<p>It will generate the result as shown above output images.</p>
<h2>The Views</h2>
<p>All the views and corresponding all the controller methods are created by <b>scaffold</b> command and they are available in the app/views/recipes directory.</p>
<h2>How Scaffolding is Different?</h2>
<p>If you have gone through the previous chapters, then you must have seen that we had created methods to list, show, delete and create data etc., but scaffolding does that job automatically.</p>
</div>
</ion-content>
</ion-view