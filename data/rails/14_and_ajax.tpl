<ion-view view-title="14 - Rails and AJAX">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Rails and AJAX</h1>
<hr>
<p>Ajax stands for <b>A</b>synchronous <b>J</b>avaScript and <b>X</b>ML. Ajax is not a single technology; it is a suite of several technologies. Ajax incorporates the following &#x2212;</p>
<ion-list>
<li>XHTML for the markup of web pages</li>
<li>CSS for the styling</li>
<li>Dynamic display and interaction using the DOM</li>
<li>Data manipulation and interchange using XML</li>
<li>Data retrieval using XMLHttpRequest</li>
<li>JavaScript as the glue that meshes all this together</li>
</ion-list>
<p>Ajax enables you to retrieve data for a web page without having to refresh the contents of the entire page. In the basic web architecture, the user clicks a link or submits a form. The form is submitted to the server, which then sends back a response.  The response is then displayed for the user on a new page.</p>
<p>When you interact with an Ajax-powered web page, it loads an Ajax engine in the background. The engine is written in JavaScript and its responsibility is to both communicate with the web server and display the results to the user. When you submit data using an Ajax-powered form, the server returns an HTML fragment that contains the server&apos;s response and displays only the data that is new or changed as opposed to refreshing the entire page.</p>
<h2>How Rails Implements Ajax</h2>
<p>Rails has a simple, consistent model for how it implements Ajax operations. Once the browser has rendered and displayed the initial web page, different user actions cause it to display a new web page (like any traditional web application) or trigger an Ajax operation &#x2212;</p>
<ion-list>
<li><p><b>Some trigger fires</b> &#x2212; This trigger could be the user clicking on a button or link, the user making changes to the data on a form or in a field, or just a periodic trigger (based on a timer).</p></li>
<li><p><b>The web client calls the server</b> &#x2212; A JavaScript method, <i>XMLHttpRequest</i>, sends data associated with the trigger to an action handler on the server. The data might be the ID of a checkbox, the text in an entry field, or a whole form.</p></li>
<li><p><b>The server does processing</b> &#x2212; The server-side action handler ( Rails controller action )-- does something with the data and returns an HTML fragment to the web client.</p></li>
<li><p><b>The client receives the response</b> &#x2212; The client-side JavaScript, which Rails creates automatically, receives the HTML fragment and uses it to update a specified part of the current page&apos;s HTML, often the content of a &lt;div&gt; tag.</p></li>
</ion-list>
<p>These steps are the simplest way to use Ajax in a Rails application, but with a little extra work, you can have the server return any kind of data in response to an Ajax request, and you can create custom JavaScript in the browser to perform more involved interactions.</p>
<h2>AJAX Example</h2>
<p>This example works based on scaffold, Destroy concept works based on ajax.</p>
<p>In this example, we will provide, list, show and create operations on ponies table. If you did not understand the scaffold technology then we would suggest you to go through the previous chapters first and then continue with AJAX on Rails.</p>
<h2>Creating An Application</h2>
<p>Let us start with the creation of an application It will be done as follows &#x2212;</p>
<pre class="result notranslate">
rails new ponies
</pre>
<p>The above command creates an application, now we need to call the app directory using with cd command. It will enter in to an application directory then we need to call a scaffold command. It will be done as follows &#x2212;</p>
<pre class="result notranslate">
rails generate scaffold Pony name:string profession:string
</pre>
<p>Above command generates the scaffold with name and profession column. We need to migrate the data base as follows command</p>
<pre class="result notranslate">
rake db:migrate
</pre>
<p>Now Run the Rails application as follows command</p>
<pre class="result notranslate">
rails s
</pre>
<p>Now open the web browser and call a url as http://localhost:3000/ponies/new</p>
<h2>Creating an Ajax</h2>
<p>Now open app/views/ponies/index.html.erb with suitable text editors. Update your destroy line with :remote =&gt; true, :class =&gt; &apos;delete_pony&apos;.</p>
<p>Create a file, destroy.js.erb, put it next to your other .erb files (under app/views/ponies).</p>
<p>Now enter the code as shown below in destroy.js.erb</p>
<pre class="prettyprint notranslate">
$(&apos;.delete_pony&apos;).bind(&apos;ajax:success&apos;, function() {
   $(this).closest(&apos;tr&apos;).fadeOut();
});
</pre>
<p>Now Open your controller file which is placed at app/controllers/ponies_controller.rb and add the following  code in destroy method as shown below &#x2212;</p>
<pre class="prettyprint notranslate">
# DELETE /ponies/1
# DELETE /ponies/1.json
def destroy
   @pony = Pony.find(params[:id])
   @pony.destroy
   
   respond_to do |format|
      format.html { redirect_to ponies_url }
      format.json { head :no_content }
      format.js   { render :layout =&gt; false }
   end
   
end
</pre>
<p>Now run an application, Output called from http://localhost:3000/ponies/new</p>
<p>Press on create pony button.</p>
<p>Now click on back button, it will show all pony created information</p>
<p>Till now, we are working on scaffold, now click on destroy button, it will call a pop-up, the pop-up works based on Ajax.</p>
<p>If Click on ok button, it will delete the record from pony. Here I have clicked ok button. </p>
</div>
</ion-content>
</ion-view