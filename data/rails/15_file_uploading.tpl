<ion-view view-title="15 - File Uploading">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>File Uploading</h1>
<hr>
<p>You may have a requirement in which you want your site visitors to upload a file on your server. Rails makes it very easy to handle this requirement. Now we will proceed with a simple and small Rails project.</p>
<p>As usual, let&apos;s start off with a new Rails application called <b>testfile</b>. Let&apos;s create the basic structure of the application by using simple rails command.</p>
<pre class="result notranslate">
tp&gt; rails new testfile
</pre>
<p>Before starting application development, we should install gem files as shown below &#x2212;</p>
<pre class="result notranslate">
gem install carrierwave
gem install bootstrap-sass
</pre>
<p>Open up your gemfile and add the following two gems at the bottom.</p>
<p>After adding gems in the gem file, we need to run the following command on the console &#x2212;</p>
<pre class="result notranslate">
bundle install
</pre>
<h2>Creating the Model</h2>
<p>We need to create a model with two strings as name and attachment as shown below &#x2212;</p>
<pre class="result notranslate">
rails g model Resume name:string attachment:string
</pre>
<p>We need to create the database migration as shown below &#x2212;</p> 
<pre class="result notranslate">
rake db:migrate
</pre>
<p>We need to generate the controller as shown below &#x2212;</p>
<pre class="result notranslate">
rails g controller Resumes index new create destroy
</pre>
<p>Great! Now we have the basic structure set up. Now we need to create an uploader. An Uploader came from carrierwave gem and it tells to carrierwave how to handle the files. In short, it contained all file processing functionalities. Run the command to create an uploader as shown below</p>
<pre class="result notranslate">
rails g uploader attachment
</pre>
<p>Now open the resume model and call the uploader as shown below. Resume model has placed at app/models/resume.rb &#x2212;</p>
<pre class="prettyprint notranslate">
class Resume &lt; ActiveRecord::Base
   mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
   validates :name, presence: true # Make sure the owner&apos;s name is present.
end
</pre>
<p>Before working on controller, we need to modify our config/routes.db as shown below &#x2212;</p>
<pre class="prettyprint notranslate">
CarrierWaveExample::Application.routes.draw do
   resources :resumes, only: [:index, :new, :create, :destroy]
   root &quot;resumes#index&quot;
end
</pre>
<p>Lets us edit the controller as shown below.</p>
<pre class="prettyprint notranslate">
class ResumesController &lt; ApplicationController
   def index
      @resumes = Resume.all
   end
   
   def new
      @resume = Resume.new
   end
   
   def create
      @resume = Resume.new(resume_params)
      
      if @resume.save
         redirect_to resumes_path, notice: &quot;The resume #{@resume.name} has been uploaded.&quot;
      else
         render &quot;new&quot;
      end
      
   end
   
   def destroy
      @resume = Resume.find(params[:id])
      @resume.destroy
      redirect_to resumes_path, notice:  &quot;The resume #{@resume.name} has been deleted.&quot;
   end
   
   private
      def resume_params
      params.require(:resume).permit(:name, :attachment)
   end
   
end
</pre>
<p>Let&apos;s add bootstrap implementation in css file.css file could be in app/assets/stylesheets/resumes.css.scss</p>
<pre class="result notranslate">
@import &quot;bootstrap&quot;;
</pre>
<p>Now open up app/views/layouts/application.html.erb and add codes as shown below &#x2212;</p>
<pre class="prettyprint notranslate">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
   
   &lt;head&gt;
      &lt;title&gt;Tutorialspoint&lt;/title&gt;
      &lt;%= stylesheet_link_tag &quot;application&quot;, media: &quot;all&quot;, &quot;data-turbolinks-track&quot; =&gt; true %&gt;
      &lt;%= javascript_include_tag &quot;application&quot;, &quot;data-turbolinks-track&quot; =&gt; true %&gt;
      &lt;%= csrf_meta_tags %&gt;
   &lt;/head&gt;
   
   &lt;body&gt;
      &lt;div class = &quot;container&quot; style = &quot;padding-top:20px;&quot;&gt;
         &lt;%= yield %&gt;
      &lt;/div&gt;
   &lt;/body&gt;

&lt;/html&gt;
</pre>
<p>Now we need to set up index views as shown below &#x2212;</p>
<pre class="prettyprint notranslate">
&lt;% if !flash[:notice].blank? %&gt;
   &lt;div class = &quot;alert alert-info&quot;&gt;
      &lt;%= flash[:notice] %&gt;
   &lt;/div&gt;
&lt;% end %&gt;

&lt;br /&gt;

&lt;%= link_to &quot;New Resume&quot;, new_resume_path, class: &quot;btn btn-primary&quot; %&gt;
&lt;br /&gt;
&lt;br /&gt;

&lt;table class = &quot;table table-bordered table-striped&quot;&gt;
   &lt;thead&gt;.
      &lt;tr&gt;
         &lt;th&gt;Name&lt;/th&gt;
         &lt;th&gt;Download Link&lt;/th&gt;
         &lt;th&gt;&#xA0;&lt;/th&gt;
      &lt;/tr&gt;
   &lt;/thead&gt;
   
   &lt;tbody&gt;
      &lt;% @resumes.each do |resume| %&gt;
         
         &lt;tr&gt;
            &lt;td&gt;&lt;%= resume.name %&gt;&lt;/td&gt;
            &lt;td&gt;&lt;%= link_to &quot;Download Resume&quot;, resume.attachment_url %&gt;&lt;/td&gt;
            &lt;td&gt;&lt;%= button_to &quot;Delete&quot;,  resume, method: :delete, class: &quot;btn btn-danger&quot;, confirm: &quot;Are you sure that you wish to delete #{resume.name}?&quot; %&gt;&lt;/td&gt;
         &lt;/tr&gt;
         
      &lt;% end %&gt;
   &lt;/tbody&gt;
   
&lt;/table&gt;
</pre>
<p>Now, lets edit new.html.erb and add our form code.</p>
<pre class="prettyprint notranslate">
&lt;% if !@resume.errors.empty? %&gt;
   &lt;div class = &quot;alert alert-error&quot;&gt;
      
      &lt;ul&gt;
         &lt;% @resume.errors.full_messages.each do |msg| %&gt;
            &lt;li&gt;&lt;%= msg %&gt;&lt;/li&gt;
         &lt;% end %&gt;
      &lt;/ul&gt;
      
   &lt;/div&gt;
&lt;% end %&gt;

&lt;div class = &quot;well&quot;&gt;
   &lt;%= form_for @resume, html: { multipart: true } do |f| %&gt;
      &lt;%= f.label :name %&gt;
      &lt;%= f.text_field :name %&gt;
      &lt;%= f.label :attachment %&gt;
      &lt;%= f.file_field :attachment %&gt;
      &lt;%= f.submit &quot;Save&quot;, class: &quot;btn btn-primary&quot; %&gt;
   &lt;% end %&gt;
&lt;/div&gt;
</pre>
<p>Now start the server and visit http://localhost:3000.</p>
<p>One last thing we need to do is filter the list of allowed filetypes. For that we need add simple code as shown below at app/uploaders/attachment_uploader.rb</p>
<pre class="prettyprint notranslate">
class AttachmentUploader &lt; CarrierWave::Uploader::Base
   storage :file
   
   def store_dir
      &quot;uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}&quot;
   end
   
   def extension_white_list
      %w(pdf doc htm html docx)
   end
end
</pre>
<p>Now start the server and visit http://localhost:3000. Now input a wrong format; it will generate a wrong message.</p>
<p>For a complete detail on <b>File</b> object, you need to go through the <b>Ruby Reference Manual</b>.</p>
</div>
</ion-content>
</ion-view>