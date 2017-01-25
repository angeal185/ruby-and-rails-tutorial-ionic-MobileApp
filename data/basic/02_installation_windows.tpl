<ion-view view-title="Installation - Windows">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Installation - Windows</h1>
<hr>
<p>Here are the steps to install Ruby on a Windows machine.</p>
<p><b>NOTE:</b> You may have different version available at the time of installation.</p>
<ion-list>
<li><p>Download a zipped file  having latest version of Ruby.  Follow <a onclick="window.open('http://www.ruby-lang.org/en/downloads/','_system')">Download Link</a>.</p></li>
<li><p>After having downloaded the Ruby archive, unpack it and change into the newly created directory:</p></li>
<li><p>Double-click the Ruby1.6.7.exe file. The Ruby installation wizard starts.</p></li>
<li><p>Click Next to move to the Important Information page of the wizard and keep moving till Ruby installer completes installing Ruby.</p></li>
</ion-list>
<p>You may need to some environment variables if your installation has not setup them appropriately.</p>
<ion-list>
<li><p>If you use Windows 9x, add the following lines to your c:\autoexec.bat: set PATH="D:\(ruby install directory)\bin;%PATH%"</p></li>
<li><p>Windows NT/2000 users need to modify their registries.</p>
<ul>
<li><p> - Click Control Panel | System Properties | Environment Variables.</p></li>
<li><p> - Under System Variables, select Path and click EDIT.</p></li>
<li><p> - Add your Ruby directory to the end of the Variable Value list and click OK.</p></li>
<li><p> - Under System Variables, select PATHEXT and click EDIT.</p></li>
<li><p> - Add .RB and .RBW to the Variable Value list and click OK.</p></li>
</ul>
</li>
</ion-list>
<ion-list>
<li><p>After installation, make sure everything is working fine by issuing the following command on the command-line:</p></li>
</ion-list>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">$ruby </span><span class="pun">-</span><span class="pln">v
ruby </span><span class="lit">1.6</span><span class="pun">.</span><span class="lit">7</span></pre>
<ion-list>
<li><p>If everything is fine, this should output the version of the installed Ruby interpreter as shown above. You may have installed different version, so it will display a different version.</p></li>
</ion-list>
</div>
</ion-content>
</ion-view>