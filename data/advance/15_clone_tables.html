<ion-view view-title="15 - Clone Tables">
  <ion-content style="margin:0 12px">
  <div class="col-md-7 middle-col">
<h1>Clone Tables</h1>
<hr>
<p>There may be a situation when you need an exact copy of a table and CREATE TABLE ... SELECT... doesn't suit your purposes because the copy must include the same indexes, default values, and so forth.</p>
<p>If you are using MySQL RDBMS, you can handle this situation by the following steps:</p>
<ul class="list">
<li><p>Use SHOW CREATE TABLE command to get a CREATE TABLE statement that specifies the source table's structure, indexes and all.</p></li>
<li><p>Modify the statement to change the table name to that of the clone table and execute the statement. This way you will have exact clone table.</p></li>
<li><p>Optionally, if you need the table contents copied as well, issue an INSERT INTO ... SELECT statement, too.</p></li>
</ul>
<h2>Example:</h2>
<p>Try out the following example to create a clone table for <b>TUTORIALS_TBL</b> whose structure is as follows:</p>
<h2>Step 1: </h2> 
<p>Get complete structure about table.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">SQL</span><span class="pun">&gt;</span><span class="pln"> SHOW CREATE TABLE TUTORIALS_TBL \G</span><span class="pun">;</span><span class="pln">
</span><span class="pun">***************************</span><span class="pln"> </span><span class="lit">1.</span><span class="pln"> row </span><span class="pun">***************************</span><span class="pln">
       </span><span class="typ">Table</span><span class="pun">:</span><span class="pln"> TUTORIALS_TBL
</span><span class="typ">Create</span><span class="pln"> </span><span class="typ">Table</span><span class="pun">:</span><span class="pln"> CREATE TABLE </span><span class="str">`TUTORIALS_TBL`</span><span class="pln"> </span><span class="pun">(</span><span class="pln">
  </span><span class="str">`tutorial_id`</span><span class="pln"> </span><span class="kwd">int</span><span class="pun">(</span><span class="lit">11</span><span class="pun">)</span><span class="pln"> NOT NULL auto_increment</span><span class="pun">,</span><span class="pln">
  </span><span class="str">`tutorial_title`</span><span class="pln"> varchar</span><span class="pun">(</span><span class="lit">100</span><span class="pun">)</span><span class="pln"> NOT NULL </span><span class="kwd">default</span><span class="pln"> </span><span class="str">''</span><span class="pun">,</span><span class="pln">
  </span><span class="str">`tutorial_author`</span><span class="pln"> varchar</span><span class="pun">(</span><span class="lit">40</span><span class="pun">)</span><span class="pln"> NOT NULL </span><span class="kwd">default</span><span class="pln"> </span><span class="str">''</span><span class="pun">,</span><span class="pln">
  </span><span class="str">`submission_date`</span><span class="pln"> date </span><span class="kwd">default</span><span class="pln"> NULL</span><span class="pun">,</span><span class="pln">
  PRIMARY KEY  </span><span class="pun">(</span><span class="str">`tutorial_id`</span><span class="pun">),</span><span class="pln">
  UNIQUE KEY </span><span class="str">`AUTHOR_INDEX`</span><span class="pln"> </span><span class="pun">(</span><span class="str">`tutorial_author`</span><span class="pun">)</span><span class="pln">
</span><span class="pun">)</span><span class="pln"> TYPE</span><span class="pun">=</span><span class="typ">MyISAM</span><span class="pln">
</span><span class="lit">1</span><span class="pln"> row </span><span class="kwd">in</span><span class="pln"> </span><span class="kwd">set</span><span class="pln"> </span><span class="pun">(</span><span class="lit">0.00</span><span class="pln"> sec</span><span class="pun">)</span></pre>
<h2>Step 2: </h2> 
<p>Rename this table and create another table.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">SQL</span><span class="pun">&gt;</span><span class="pln"> CREATE TABLE </span><span class="str">`CLONE_TBL`</span><span class="pln"> </span><span class="pun">(</span><span class="pln">
  </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="str">`tutorial_id`</span><span class="pln"> </span><span class="kwd">int</span><span class="pun">(</span><span class="lit">11</span><span class="pun">)</span><span class="pln"> NOT NULL auto_increment</span><span class="pun">,</span><span class="pln">
  </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="str">`tutorial_title`</span><span class="pln"> varchar</span><span class="pun">(</span><span class="lit">100</span><span class="pun">)</span><span class="pln"> NOT NULL </span><span class="kwd">default</span><span class="pln"> </span><span class="str">''</span><span class="pun">,</span><span class="pln">
  </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="str">`tutorial_author`</span><span class="pln"> varchar</span><span class="pun">(</span><span class="lit">40</span><span class="pun">)</span><span class="pln"> NOT NULL </span><span class="kwd">default</span><span class="pln"> </span><span class="str">''</span><span class="pun">,</span><span class="pln">
  </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="str">`submission_date`</span><span class="pln"> date </span><span class="kwd">default</span><span class="pln"> NULL</span><span class="pun">,</span><span class="pln">
  </span><span class="pun">-&gt;</span><span class="pln"> PRIMARY KEY  </span><span class="pun">(</span><span class="str">`tutorial_id`</span><span class="pun">),</span><span class="pln">
  </span><span class="pun">-&gt;</span><span class="pln"> UNIQUE KEY </span><span class="str">`AUTHOR_INDEX`</span><span class="pln"> </span><span class="pun">(</span><span class="str">`tutorial_author`</span><span class="pun">)</span><span class="pln">
</span><span class="pun">-&gt;</span><span class="pln"> </span><span class="pun">)</span><span class="pln"> TYPE</span><span class="pun">=</span><span class="typ">MyISAM</span><span class="pun">;</span><span class="pln">
</span><span class="typ">Query</span><span class="pln"> OK</span><span class="pun">,</span><span class="pln"> </span><span class="lit">0</span><span class="pln"> rows affected </span><span class="pun">(</span><span class="lit">1.80</span><span class="pln"> sec</span><span class="pun">)</span></pre>
<h2>Step 3:</h2>
<p>After executing step 2, you will clone a table in your database. If you want to copy data from old table, then you can do it by using INSERT INTO... SELECT statement.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">SQL</span><span class="pun">&gt;</span><span class="pln"> INSERT INTO CLONE_TBL </span><span class="pun">(</span><span class="pln">tutorial_id</span><span class="pun">,</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln">                        tutorial_title</span><span class="pun">,</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln">                        tutorial_author</span><span class="pun">,</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln">                        submission_date</span><span class="pun">)</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln"> SELECT tutorial_id</span><span class="pun">,</span><span class="pln">tutorial_title</span><span class="pun">,</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln">        tutorial_author</span><span class="pun">,</span><span class="pln">submission_date</span><span class="pun">,</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln"> FROM TUTORIALS_TBL</span><span class="pun">;</span><span class="pln">
</span><span class="typ">Query</span><span class="pln"> OK</span><span class="pun">,</span><span class="pln"> </span><span class="lit">3</span><span class="pln"> rows affected </span><span class="pun">(</span><span class="lit">0.07</span><span class="pln"> sec</span><span class="pun">)</span><span class="pln">
</span><span class="typ">Records</span><span class="pun">:</span><span class="pln"> </span><span class="lit">3</span><span class="pln">  </span><span class="typ">Duplicates</span><span class="pun">:</span><span class="pln"> </span><span class="lit">0</span><span class="pln">  </span><span class="typ">Warnings</span><span class="pun">:</span><span class="pln"> </span><span class="lit">0</span></pre>
<p>Finally, you will have exact clone table as you wanted to have.</p>
 </ion-content>
</ion-view>
