<ion-view view-title="16 - Date &amp; Time">
  <ion-content style="margin:0 12px">
  <div class="col-md-7 middle-col">
<h1>Date &amp; Time in Ruby</h1>
<hr>
<p>The <b>Time</b> class represents dates and times in Ruby. It is a thin layer over the system date and time functionality provided by the operating system. This class may be unable on your system to represent dates before 1970 or after 2038.</p>
<p>This tutorial will make you familiar with all the most wanted concepts of date and time.</p>
<h2>Getting Current Date and Time:</h2>
<p>Following is the simple example to get current date and time:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

time1 </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Time</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">

puts </span><span class="str">"Current Time : "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> time1</span><span class="pun">.</span><span class="pln">inspect

</span><span class="com"># Time.now is a synonym:</span><span class="pln">
time2 </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Time</span><span class="pun">.</span><span class="pln">now
puts </span><span class="str">"Current Time : "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> time2</span><span class="pun">.</span><span class="pln">inspect</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Current</span><span class="pln"> </span><span class="typ">Time</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">Mon</span><span class="pln"> </span><span class="typ">Jun</span><span class="pln"> </span><span class="lit">02</span><span class="pln"> </span><span class="lit">12</span><span class="pun">:</span><span class="lit">02</span><span class="pun">:</span><span class="lit">39</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2008</span><span class="pln">
</span><span class="typ">Current</span><span class="pln"> </span><span class="typ">Time</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">Mon</span><span class="pln"> </span><span class="typ">Jun</span><span class="pln"> </span><span class="lit">02</span><span class="pln"> </span><span class="lit">12</span><span class="pun">:</span><span class="lit">02</span><span class="pun">:</span><span class="lit">39</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2008</span></pre>
<h2>Getting components of a Date &amp; Time:</h2>
<p>We can use <i>Time</i> object to get various components of date and time. Following is the example showing the same:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

time </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Time</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">

</span><span class="com"># Components of a Time</span><span class="pln">
puts </span><span class="str">"Current Time : "</span><span class="pln"> </span><span class="pun">+</span><span class="pln"> time</span><span class="pun">.</span><span class="pln">inspect
puts time</span><span class="pun">.</span><span class="pln">year    </span><span class="com"># =&gt; Year of the date </span><span class="pln">
puts time</span><span class="pun">.</span><span class="pln">month   </span><span class="com"># =&gt; Month of the date (1 to 12)</span><span class="pln">
puts time</span><span class="pun">.</span><span class="pln">day     </span><span class="com"># =&gt; Day of the date (1 to 31 )</span><span class="pln">
puts time</span><span class="pun">.</span><span class="pln">wday    </span><span class="com"># =&gt; 0: Day of week: 0 is Sunday</span><span class="pln">
puts time</span><span class="pun">.</span><span class="pln">yday    </span><span class="com"># =&gt; 365: Day of year</span><span class="pln">
puts time</span><span class="pun">.</span><span class="pln">hour    </span><span class="com"># =&gt; 23: 24-hour clock</span><span class="pln">
puts time</span><span class="pun">.</span><span class="pln">min     </span><span class="com"># =&gt; 59</span><span class="pln">
puts time</span><span class="pun">.</span><span class="pln">sec     </span><span class="com"># =&gt; 59</span><span class="pln">
puts time</span><span class="pun">.</span><span class="pln">usec    </span><span class="com"># =&gt; 999999: microseconds</span><span class="pln">
puts time</span><span class="pun">.</span><span class="pln">zone    </span><span class="com"># =&gt; "UTC": timezone name</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Current</span><span class="pln"> </span><span class="typ">Time</span><span class="pln"> </span><span class="pun">:</span><span class="pln"> </span><span class="typ">Mon</span><span class="pln"> </span><span class="typ">Jun</span><span class="pln"> </span><span class="lit">02</span><span class="pln"> </span><span class="lit">12</span><span class="pun">:</span><span class="lit">03</span><span class="pun">:</span><span class="lit">08</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2008</span><span class="pln">
</span><span class="lit">2008</span><span class="pln">
</span><span class="lit">6</span><span class="pln">
</span><span class="lit">2</span><span class="pln">
</span><span class="lit">1</span><span class="pln">
</span><span class="lit">154</span><span class="pln">
</span><span class="lit">12</span><span class="pln">
</span><span class="lit">3</span><span class="pln">
</span><span class="lit">8</span><span class="pln">
</span><span class="lit">247476</span><span class="pln">
UTC</span></pre>
<h2><i>Time.utc</i>, <i>Time.gm</i> and <i>Time.local</i> Functions:</h2>
<p>These two functions can be used to format date in standard format as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com"># July 8, 2008</span><span class="pln">
</span><span class="typ">Time</span><span class="pun">.</span><span class="kwd">local</span><span class="pun">(</span><span class="lit">2008</span><span class="pun">,</span><span class="pln"> </span><span class="lit">7</span><span class="pun">,</span><span class="pln"> </span><span class="lit">8</span><span class="pun">)</span><span class="pln">  
</span><span class="com"># July 8, 2008, 09:10am, local time</span><span class="pln">
</span><span class="typ">Time</span><span class="pun">.</span><span class="kwd">local</span><span class="pun">(</span><span class="lit">2008</span><span class="pun">,</span><span class="pln"> </span><span class="lit">7</span><span class="pun">,</span><span class="pln"> </span><span class="lit">8</span><span class="pun">,</span><span class="pln"> </span><span class="lit">9</span><span class="pun">,</span><span class="pln"> </span><span class="lit">10</span><span class="pun">)</span><span class="pln">   
</span><span class="com"># July 8, 2008, 09:10 UTC</span><span class="pln">
</span><span class="typ">Time</span><span class="pun">.</span><span class="pln">utc</span><span class="pun">(</span><span class="lit">2008</span><span class="pun">,</span><span class="pln"> </span><span class="lit">7</span><span class="pun">,</span><span class="pln"> </span><span class="lit">8</span><span class="pun">,</span><span class="pln"> </span><span class="lit">9</span><span class="pun">,</span><span class="pln"> </span><span class="lit">10</span><span class="pun">)</span><span class="pln">  
</span><span class="com"># July 8, 2008, 09:10:11 GMT (same as UTC)</span><span class="pln">
</span><span class="typ">Time</span><span class="pun">.</span><span class="pln">gm</span><span class="pun">(</span><span class="lit">2008</span><span class="pun">,</span><span class="pln"> </span><span class="lit">7</span><span class="pun">,</span><span class="pln"> </span><span class="lit">8</span><span class="pun">,</span><span class="pln"> </span><span class="lit">9</span><span class="pun">,</span><span class="pln"> </span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">11</span><span class="pun">)</span><span class="pln">  </span></pre>
<p>Following is the example to get all components in an array in the following format:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pun">[</span><span class="pln">sec</span><span class="pun">,</span><span class="pln">min</span><span class="pun">,</span><span class="pln">hour</span><span class="pun">,</span><span class="pln">day</span><span class="pun">,</span><span class="pln">month</span><span class="pun">,</span><span class="pln">year</span><span class="pun">,</span><span class="pln">wday</span><span class="pun">,</span><span class="pln">yday</span><span class="pun">,</span><span class="pln">isdst</span><span class="pun">,</span><span class="pln">zone</span><span class="pun">]</span></pre>
<p>Try the following:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

time </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Time</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">

values </span><span class="pun">=</span><span class="pln"> time</span><span class="pun">.</span><span class="pln">to_a
p values</span></pre>
<p>This will generate the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pun">[</span><span class="lit">26</span><span class="pun">,</span><span class="pln"> </span><span class="lit">10</span><span class="pun">,</span><span class="pln"> </span><span class="lit">12</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2</span><span class="pun">,</span><span class="pln"> </span><span class="lit">6</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2008</span><span class="pun">,</span><span class="pln"> </span><span class="lit">1</span><span class="pun">,</span><span class="pln"> </span><span class="lit">154</span><span class="pun">,</span><span class="pln"> </span><span class="kwd">false</span><span class="pun">,</span><span class="pln"> </span><span class="str">"MST"</span><span class="pun">]</span></pre>
<p>This array could be passed to <i>Time.utc</i> or <i>Time.local</i> functions to  get different format of dates as follows:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

time </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Time</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">

values </span><span class="pun">=</span><span class="pln"> time</span><span class="pun">.</span><span class="pln">to_a
puts </span><span class="typ">Time</span><span class="pun">.</span><span class="pln">utc</span><span class="pun">(*</span><span class="pln">values</span><span class="pun">)</span></pre>
<p>This will generate following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Mon</span><span class="pln"> </span><span class="typ">Jun</span><span class="pln"> </span><span class="lit">02</span><span class="pln"> </span><span class="lit">12</span><span class="pun">:</span><span class="lit">15</span><span class="pun">:</span><span class="lit">36</span><span class="pln"> UTC </span><span class="lit">2008</span></pre>
<p>Following is the way to get time represented internally as seconds since the (platform-dependent) epoch:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com"># Returns number of seconds since epoch</span><span class="pln">
time </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Time</span><span class="pun">.</span><span class="pln">now</span><span class="pun">.</span><span class="pln">to_i  

</span><span class="com"># Convert number of seconds into Time object.</span><span class="pln">
</span><span class="typ">Time</span><span class="pun">.</span><span class="pln">at</span><span class="pun">(</span><span class="pln">time</span><span class="pun">)</span><span class="pln">

</span><span class="com"># Returns second since epoch which includes microseconds</span><span class="pln">
time </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Time</span><span class="pun">.</span><span class="pln">now</span><span class="pun">.</span><span class="pln">to_f</span></pre>
<h2>Timezones and daylight savings time:</h2>
<p>You can use a <i>Time</i> object to get all the information related to Timezones and daylight savings as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">time </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Time</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">

</span><span class="com"># Here is the interpretation</span><span class="pln">
time</span><span class="pun">.</span><span class="pln">zone       </span><span class="com"># =&gt; "UTC": return the timezone</span><span class="pln">
time</span><span class="pun">.</span><span class="pln">utc_offset </span><span class="com"># =&gt; 0: UTC is 0 seconds offset from UTC</span><span class="pln">
time</span><span class="pun">.</span><span class="pln">zone       </span><span class="com"># =&gt; "PST" (or whatever your timezone is)</span><span class="pln">
time</span><span class="pun">.</span><span class="pln">isdst      </span><span class="com"># =&gt; false: If UTC does not have DST.</span><span class="pln">
time</span><span class="pun">.</span><span class="pln">utc</span><span class="pun">?</span><span class="pln">       </span><span class="com"># =&gt; true: if t is in UTC time zone</span><span class="pln">
time</span><span class="pun">.</span><span class="pln">localtime  </span><span class="com"># Convert to local timezone.</span><span class="pln">
time</span><span class="pun">.</span><span class="pln">gmtime     </span><span class="com"># Convert back to UTC.</span><span class="pln">
time</span><span class="pun">.</span><span class="pln">getlocal   </span><span class="com"># Return a new Time object in local zone</span><span class="pln">
time</span><span class="pun">.</span><span class="pln">getutc     </span><span class="com"># Return a new Time object in UTC</span></pre>
<h2>Formatting Times and Dates:</h2>
<p>There are various ways to format date and time. Here is one example showing few:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">
time </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Time</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">

puts time</span><span class="pun">.</span><span class="pln">to_s
puts time</span><span class="pun">.</span><span class="pln">ctime
puts time</span><span class="pun">.</span><span class="pln">localtime
puts time</span><span class="pun">.</span><span class="pln">strftime</span><span class="pun">(</span><span class="str">"%Y-%m-%d %H:%M:%S"</span><span class="pun">)</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Mon</span><span class="pln"> </span><span class="typ">Jun</span><span class="pln"> </span><span class="lit">02</span><span class="pln"> </span><span class="lit">12</span><span class="pun">:</span><span class="lit">35</span><span class="pun">:</span><span class="lit">19</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2008</span><span class="pln">
</span><span class="typ">Mon</span><span class="pln"> </span><span class="typ">Jun</span><span class="pln">  </span><span class="lit">2</span><span class="pln"> </span><span class="lit">12</span><span class="pun">:</span><span class="lit">35</span><span class="pun">:</span><span class="lit">19</span><span class="pln"> </span><span class="lit">2008</span><span class="pln">
</span><span class="typ">Mon</span><span class="pln"> </span><span class="typ">Jun</span><span class="pln"> </span><span class="lit">02</span><span class="pln"> </span><span class="lit">12</span><span class="pun">:</span><span class="lit">35</span><span class="pun">:</span><span class="lit">19</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2008</span><span class="pln">
</span><span class="lit">2008</span><span class="pun">-</span><span class="lit">06</span><span class="pun">-</span><span class="lit">02</span><span class="pln"> </span><span class="lit">12</span><span class="pun">:</span><span class="lit">35</span><span class="pun">:</span><span class="lit">19</span></pre>
<h2>Time Formatting Directives:</h2>
<p>These directives in the following table are used with the method <i>Time.strftime</i>.</p>
<table class="table table-bordered">
<tbody><tr><th>Directive</th><th>Description</th></tr>
<tr><td>%a</td><td>The abbreviated weekday name (Sun).</td></tr>
<tr><td>%A</td><td>The full weekday name (Sunday).</td></tr>
<tr><td>%b</td><td>The abbreviated month name (Jan).</td></tr>
<tr><td>%B</td><td>The full month name (January).</td></tr>
<tr><td>%c</td><td>The preferred local date and time representation.</td></tr>
<tr><td>%d</td><td>Day of the month (01 to 31).</td></tr>
<tr><td>%H</td><td>Hour of the day, 24-hour clock (00 to 23).</td></tr>
<tr><td>%I</td><td>Hour of the day, 12-hour clock (01 to 12).</td></tr>
<tr><td>%j</td><td>Day of the year (001 to 366).</td></tr>
<tr><td>%m</td><td>Month of the year (01 to 12).</td></tr>
<tr><td>%M</td><td>Minute of the hour (00 to 59).</td></tr>
<tr><td>%p</td><td>Meridian indicator (AM or PM).</td></tr>
<tr><td>%S</td><td>Second of the minute (00 to 60).</td></tr>
<tr><td>%U</td><td>Week number of the current year, starting with the first Sunday as
the first day of the first week (00 to 53).</td></tr>
<tr><td>%W</td><td>Week number of the current year, starting with the first Monday as
the first day of the first week (00 to 53).</td></tr>
<tr><td>%w</td><td>Day of the week (Sunday is 0, 0 to 6).</td></tr>
<tr><td>%x</td><td>Preferred representation for the date alone, no time.</td></tr>
<tr><td>%X</td><td>Preferred representation for the time alone, no date.</td></tr>
<tr><td>%y</td><td>Year without a century (00 to 99).</td></tr>
<tr><td>%Y</td><td>Year with century.</td></tr>
<tr><td>%Z</td><td>Time zone name.</td></tr>
<tr><td>%%</td><td>Literal % character.</td></tr>
</tbody></table>
<h2>Time arithmetic:</h2>
<p>You can do simple arithmetic with time as follows:</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="pln">now </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Time</span><span class="pun">.</span><span class="pln">now           </span><span class="com"># Current time</span><span class="pln">
puts now

past </span><span class="pun">=</span><span class="pln"> now </span><span class="pun">-</span><span class="pln"> </span><span class="lit">10</span><span class="pln">          </span><span class="com"># 10 seconds ago. Time - number =&gt; Time</span><span class="pln">
puts past

future </span><span class="pun">=</span><span class="pln"> now </span><span class="pun">+</span><span class="pln"> </span><span class="lit">10</span><span class="pln">        </span><span class="com"># 10 seconds from now Time + number =&gt; Time</span><span class="pln">
puts future

diff </span><span class="pun">=</span><span class="pln"> future </span><span class="pun">-</span><span class="pln"> now      </span><span class="com"># =&gt; 10  Time - Time =&gt; number of seconds</span><span class="pln">
puts diff</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Thu</span><span class="pln"> </span><span class="typ">Aug</span><span class="pln"> </span><span class="lit">01</span><span class="pln"> </span><span class="lit">20</span><span class="pun">:</span><span class="lit">57</span><span class="pun">:</span><span class="lit">05</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2013</span><span class="pln">
</span><span class="typ">Thu</span><span class="pln"> </span><span class="typ">Aug</span><span class="pln"> </span><span class="lit">01</span><span class="pln"> </span><span class="lit">20</span><span class="pun">:</span><span class="lit">56</span><span class="pun">:</span><span class="lit">55</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2013</span><span class="pln">
</span><span class="typ">Thu</span><span class="pln"> </span><span class="typ">Aug</span><span class="pln"> </span><span class="lit">01</span><span class="pln"> </span><span class="lit">20</span><span class="pun">:</span><span class="lit">57</span><span class="pun">:</span><span class="lit">15</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2013</span><span class="pln">
</span><span class="lit">10.0</span></pre>
</div>
 </ion-content>
</ion-view>