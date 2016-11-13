<ion-view view-title="Ruby DBI Read Operation">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>DBI Methods for Read Operation</h1>
<hr>
<p>DBI provides several different methods to fetch records from the database. Assuming <b>dbh</b> is a database handle and <b>sth</b> is a statement handle:</p>
<table class="table table-bordered">
<tbody><tr><th style="width:5%">S.N.</th><th>Methods with Description</th></tr>
<tr><td>1</td><td><b>db.select_one( stmt, *bindvars ) =&gt; aRow | nil</b><p> Executes the <i>stmt</i> statement with the <i>bindvars</i> binding beforehand to parameter markers. Returns the first row or <i>nil</i> if the result-set is empty.</p></td></tr>
<tr><td>2</td><td><b>db.select_all( stmt, *bindvars ) =&gt; [aRow, ...] | nil</b><p><b>db.select_all( stmt, *bindvars ){ |aRow| aBlock }</b></p><p> Executes the <i>stmt</i> statement with the <i>bindvars</i> binding beforehand to parameter markers. Calling this method without block returns an array containing all rows. If a block is given, this will be called for each row.</p></td></tr>
<tr><td>3</td><td><b>sth.fetch =&gt; aRow | nil</b><p> Returns the <i>next</i> row. Returns <i>nil</i> if no further rows are in the result-set.</p></td></tr>
<tr><td>4</td><td><b>sth.fetch { |aRow| aBlock }</b><p> Invokes the given block for the remaining rows
of the result-set.</p></td></tr>
<tr><td>5</td><td><b>sth.fetch_all =&gt; [aRow, ...]</b><p> Returns all remaining rows of the result-set collected
in an array.</p></td></tr>
<tr><td>6</td><td><b>sth.fetch_many( count ) =&gt; [aRow, ...]</b><p> Returns the next <i>count</i> rows collected in an
[aRow, ...] array.</p></td></tr>
<tr><td>7</td><td><b>sth.fetch_scroll( direction, offset=1 ) =&gt; aRow | nil</b><p> Returns the row specified by the <i>direction</i> parameter	and <i>offset</i>. Parameter <i>offset</i> is discarded for all but SQL_FETCH_ABSOLUTE
and SQL_FETCH_RELATIVE. See a table below for possible values of <i>direction</i> parameter.</p></td></tr>
<tr><td>8</td><td><b>sth.column_names =&gt; anArray</b><p>Returns the names of the columns.</p></td></tr>
<tr><td>9</td><td><b>column_info =&gt; [ aColumnInfo, ... ]</b><p>Returns an array of DBI::ColumnInfo objects. Each object stores information about one column and contains its name, type, precision and more.</p></td></tr>
<tr><td>10</td><td><b>sth.rows =&gt; rpc</b><p> Returns the Row Processed <i>Count</i> of the
executed statement or <i>nil</i> if no such exist.</p></td></tr>
<tr><td>11</td><td><b>sth.fetchable? =&gt; true | false</b><p> Returns <i>true</i> if it's possible to fetch rows,
otherwise <i>false</i>.</p></td></tr>
<tr><td>12</td><td><b>sth.cancel</b><p> Frees the resources held by the result-set. After calling this method, it is no longer
possible to fetch rows until you again call <i>execute</i>.</p></td></tr>
<tr><td>13</td><td><b>sth.finish</b><p> Frees the resources held by the prepared statement. After calling this method no
further methods can be called onto this object.</p></td></tr>
</tbody></table>
<h2>The direction Parameter:</h2>
<p>Following values could be used for the direction Parameter of the <i>fetch_scroll</i> Method:</p>
<table class="table table-bordered">
<tbody><tr><th>Constant</th><th>Description</th></tr>
<tr><td>DBI::SQL_FETCH_FIRST</td><td>Fetch first row.</td></tr>
<tr><td>DBI::SQL_FETCH_LAST</td><td>Fetch last row.</td></tr>
<tr><td>DBI::SQL_FETCH_NEXT</td><td>Fetch next row.</td></tr>
<tr><td>DBI::SQL_FETCH_PRIOR</td><td>Fetch previous row.</td></tr>
<tr><td>DBI::SQL_FETCH_ABSOLUTE</td><td>Fetch row at position offset.</td></tr>
<tr><td>DBI::SQL_FETCH_RELATIVE</td><td>Fetch the row that is offset rows away from
the current.</td></tr>
</tbody></table>
<h2>Example:</h2>
<p>The following example shows how to get metadata for a statement. Consider EMPLOYEE table, which we created in last chapter.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby -w</span><span class="pln">

</span><span class="kwd">require</span><span class="pln"> </span><span class="str">"dbi"</span><span class="pln">

</span><span class="kwd">begin</span><span class="pln">
     </span><span class="com"># connect to the MySQL server</span><span class="pln">
     dbh </span><span class="pun">=</span><span class="pln"> DBI</span><span class="pun">.</span><span class="pln">connect</span><span class="pun">(</span><span class="str">"DBI:Mysql:TESTDB:localhost"</span><span class="pun">,</span><span class="pln"> 
	                    </span><span class="str">"testuser"</span><span class="pun">,</span><span class="pln"> </span><span class="str">"test123"</span><span class="pun">)</span><span class="pln">
     sth </span><span class="pun">=</span><span class="pln"> dbh</span><span class="pun">.</span><span class="pln">prepare</span><span class="pun">(</span><span class="str">"SELECT * FROM EMPLOYEE 
	                    WHERE INCOME &gt; ?"</span><span class="pun">)</span><span class="pln">
     sth</span><span class="pun">.</span><span class="pln">execute</span><span class="pun">(</span><span class="lit">1000</span><span class="pun">)</span><span class="pln">
     </span><span class="kwd">if</span><span class="pln"> sth</span><span class="pun">.</span><span class="pln">column_names</span><span class="pun">.</span><span class="pln">size </span><span class="pun">==</span><span class="pln"> </span><span class="lit">0</span><span class="pln"> </span><span class="kwd">then</span><span class="pln">
        puts </span><span class="str">"Statement has no result set"</span><span class="pln">
        printf </span><span class="str">"Number of rows affected: %d\n"</span><span class="pun">,</span><span class="pln"> sth</span><span class="pun">.</span><span class="pln">rows
     </span><span class="kwd">else</span><span class="pln">
        puts </span><span class="str">"Statement has a result set"</span><span class="pln">
        rows </span><span class="pun">=</span><span class="pln"> sth</span><span class="pun">.</span><span class="pln">fetch_all
        printf </span><span class="str">"Number of rows: %d\n"</span><span class="pun">,</span><span class="pln"> rows</span><span class="pun">.</span><span class="pln">size
        printf </span><span class="str">"Number of columns: %d\n"</span><span class="pun">,</span><span class="pln"> sth</span><span class="pun">.</span><span class="pln">column_names</span><span class="pun">.</span><span class="pln">size
        sth</span><span class="pun">.</span><span class="pln">column_info</span><span class="pun">.</span><span class="pln">each_with_index </span><span class="kwd">do</span><span class="pln"> </span><span class="pun">|</span><span class="pln">info</span><span class="pun">,</span><span class="pln"> i</span><span class="pun">|</span><span class="pln">
          printf </span><span class="str">"--- Column %d (%s) ---\n"</span><span class="pun">,</span><span class="pln"> i</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"name"</span><span class="pun">]</span><span class="pln">
          printf </span><span class="str">"sql_type:         %s\n"</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"sql_type"</span><span class="pun">]</span><span class="pln">
          printf </span><span class="str">"type_name:        %s\n"</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"type_name"</span><span class="pun">]</span><span class="pln">
          printf </span><span class="str">"precision:        %s\n"</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"precision"</span><span class="pun">]</span><span class="pln">
          printf </span><span class="str">"scale:            %s\n"</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"scale"</span><span class="pun">]</span><span class="pln">
          printf </span><span class="str">"nullable:         %s\n"</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"nullable"</span><span class="pun">]</span><span class="pln">
          printf </span><span class="str">"indexed:          %s\n"</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"indexed"</span><span class="pun">]</span><span class="pln">
          printf </span><span class="str">"primary:          %s\n"</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"primary"</span><span class="pun">]</span><span class="pln">
          printf </span><span class="str">"unique:           %s\n"</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"unique"</span><span class="pun">]</span><span class="pln">
          printf </span><span class="str">"mysql_type:       %s\n"</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"mysql_type"</span><span class="pun">]</span><span class="pln">
          printf </span><span class="str">"mysql_type_name:  %s\n"</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"mysql_type_name"</span><span class="pun">]</span><span class="pln">
          printf </span><span class="str">"mysql_length:     %s\n"</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"mysql_length"</span><span class="pun">]</span><span class="pln">
          printf </span><span class="str">"mysql_max_length: %s\n"</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"mysql_max_length"</span><span class="pun">]</span><span class="pln">
          printf </span><span class="str">"mysql_flags:      %s\n"</span><span class="pun">,</span><span class="pln"> info</span><span class="pun">[</span><span class="str">"mysql_flags"</span><span class="pun">]</span><span class="pln">
      </span><span class="kwd">end</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
   sth</span><span class="pun">.</span><span class="pln">finish
</span><span class="kwd">rescue</span><span class="pln"> DBI</span><span class="pun">::</span><span class="typ">DatabaseError</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> e
     puts </span><span class="str">"An error occurred"</span><span class="pln">
     puts </span><span class="str">"Error code:    #{e.err}"</span><span class="pln">
     puts </span><span class="str">"Error message: #{e.errstr}"</span><span class="pln">
</span><span class="kwd">ensure</span><span class="pln">
     </span><span class="com"># disconnect from server</span><span class="pln">
     dbh</span><span class="pun">.</span><span class="pln">disconnect </span><span class="kwd">if</span><span class="pln"> dbh
</span><span class="kwd">end</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Statement</span><span class="pln"> has a result </span><span class="kwd">set</span><span class="pln">
</span><span class="typ">Number</span><span class="pln"> of rows</span><span class="pun">:</span><span class="pln"> </span><span class="lit">5</span><span class="pln">
</span><span class="typ">Number</span><span class="pln"> of columns</span><span class="pun">:</span><span class="pln"> </span><span class="lit">5</span><span class="pln">
</span><span class="pun">---</span><span class="pln"> </span><span class="typ">Column</span><span class="pln"> </span><span class="lit">0</span><span class="pln"> </span><span class="pun">(</span><span class="pln">FIRST_NAME</span><span class="pun">)</span><span class="pln"> </span><span class="pun">---</span><span class="pln">
sql_type</span><span class="pun">:</span><span class="pln">         </span><span class="lit">12</span><span class="pln">
type_name</span><span class="pun">:</span><span class="pln">        VARCHAR
precision</span><span class="pun">:</span><span class="pln">        </span><span class="lit">20</span><span class="pln">
scale</span><span class="pun">:</span><span class="pln">            </span><span class="lit">0</span><span class="pln">
nullable</span><span class="pun">:</span><span class="pln">         </span><span class="kwd">true</span><span class="pln">
indexed</span><span class="pun">:</span><span class="pln">          </span><span class="kwd">false</span><span class="pln">
primary</span><span class="pun">:</span><span class="pln">          </span><span class="kwd">false</span><span class="pln">
unique</span><span class="pun">:</span><span class="pln">           </span><span class="kwd">false</span><span class="pln">
mysql_type</span><span class="pun">:</span><span class="pln">       </span><span class="lit">254</span><span class="pln">
mysql_type_name</span><span class="pun">:</span><span class="pln">  VARCHAR
mysql_length</span><span class="pun">:</span><span class="pln">     </span><span class="lit">20</span><span class="pln">
mysql_max_length</span><span class="pun">:</span><span class="pln"> </span><span class="lit">4</span><span class="pln">
mysql_flags</span><span class="pun">:</span><span class="pln">      </span><span class="lit">0</span><span class="pln">
</span><span class="pun">---</span><span class="pln"> </span><span class="typ">Column</span><span class="pln"> </span><span class="lit">1</span><span class="pln"> </span><span class="pun">(</span><span class="pln">LAST_NAME</span><span class="pun">)</span><span class="pln"> </span><span class="pun">---</span><span class="pln">
sql_type</span><span class="pun">:</span><span class="pln">         </span><span class="lit">12</span><span class="pln">
type_name</span><span class="pun">:</span><span class="pln">        VARCHAR
precision</span><span class="pun">:</span><span class="pln">        </span><span class="lit">20</span><span class="pln">
scale</span><span class="pun">:</span><span class="pln">            </span><span class="lit">0</span><span class="pln">
nullable</span><span class="pun">:</span><span class="pln">         </span><span class="kwd">true</span><span class="pln">
indexed</span><span class="pun">:</span><span class="pln">          </span><span class="kwd">false</span><span class="pln">
primary</span><span class="pun">:</span><span class="pln">          </span><span class="kwd">false</span><span class="pln">
unique</span><span class="pun">:</span><span class="pln">           </span><span class="kwd">false</span><span class="pln">
mysql_type</span><span class="pun">:</span><span class="pln">       </span><span class="lit">254</span><span class="pln">
mysql_type_name</span><span class="pun">:</span><span class="pln">  VARCHAR
mysql_length</span><span class="pun">:</span><span class="pln">     </span><span class="lit">20</span><span class="pln">
mysql_max_length</span><span class="pun">:</span><span class="pln"> </span><span class="lit">5</span><span class="pln">
mysql_flags</span><span class="pun">:</span><span class="pln">      </span><span class="lit">0</span><span class="pln">
</span><span class="pun">---</span><span class="pln"> </span><span class="typ">Column</span><span class="pln"> </span><span class="lit">2</span><span class="pln"> </span><span class="pun">(</span><span class="pln">AGE</span><span class="pun">)</span><span class="pln"> </span><span class="pun">---</span><span class="pln">
sql_type</span><span class="pun">:</span><span class="pln">         </span><span class="lit">4</span><span class="pln">
type_name</span><span class="pun">:</span><span class="pln">        INTEGER
precision</span><span class="pun">:</span><span class="pln">        </span><span class="lit">11</span><span class="pln">
scale</span><span class="pun">:</span><span class="pln">            </span><span class="lit">0</span><span class="pln">
nullable</span><span class="pun">:</span><span class="pln">         </span><span class="kwd">true</span><span class="pln">
indexed</span><span class="pun">:</span><span class="pln">          </span><span class="kwd">false</span><span class="pln">
primary</span><span class="pun">:</span><span class="pln">          </span><span class="kwd">false</span><span class="pln">
unique</span><span class="pun">:</span><span class="pln">           </span><span class="kwd">false</span><span class="pln">
mysql_type</span><span class="pun">:</span><span class="pln">       </span><span class="lit">3</span><span class="pln">
mysql_type_name</span><span class="pun">:</span><span class="pln">  INT
mysql_length</span><span class="pun">:</span><span class="pln">     </span><span class="lit">11</span><span class="pln">
mysql_max_length</span><span class="pun">:</span><span class="pln"> </span><span class="lit">2</span><span class="pln">
mysql_flags</span><span class="pun">:</span><span class="pln">      </span><span class="lit">32768</span><span class="pln">
</span><span class="pun">---</span><span class="pln"> </span><span class="typ">Column</span><span class="pln"> </span><span class="lit">3</span><span class="pln"> </span><span class="pun">(</span><span class="pln">SEX</span><span class="pun">)</span><span class="pln"> </span><span class="pun">---</span><span class="pln">
sql_type</span><span class="pun">:</span><span class="pln">         </span><span class="lit">12</span><span class="pln">
type_name</span><span class="pun">:</span><span class="pln">        VARCHAR
precision</span><span class="pun">:</span><span class="pln">        </span><span class="lit">1</span><span class="pln">
scale</span><span class="pun">:</span><span class="pln">            </span><span class="lit">0</span><span class="pln">
nullable</span><span class="pun">:</span><span class="pln">         </span><span class="kwd">true</span><span class="pln">
indexed</span><span class="pun">:</span><span class="pln">          </span><span class="kwd">false</span><span class="pln">
primary</span><span class="pun">:</span><span class="pln">          </span><span class="kwd">false</span><span class="pln">
unique</span><span class="pun">:</span><span class="pln">           </span><span class="kwd">false</span><span class="pln">
mysql_type</span><span class="pun">:</span><span class="pln">       </span><span class="lit">254</span><span class="pln">
mysql_type_name</span><span class="pun">:</span><span class="pln">  VARCHAR
mysql_length</span><span class="pun">:</span><span class="pln">     </span><span class="lit">1</span><span class="pln">
mysql_max_length</span><span class="pun">:</span><span class="pln"> </span><span class="lit">1</span><span class="pln">
mysql_flags</span><span class="pun">:</span><span class="pln">      </span><span class="lit">0</span><span class="pln">
</span><span class="pun">---</span><span class="pln"> </span><span class="typ">Column</span><span class="pln"> </span><span class="lit">4</span><span class="pln"> </span><span class="pun">(</span><span class="pln">INCOME</span><span class="pun">)</span><span class="pln"> </span><span class="pun">---</span><span class="pln">
sql_type</span><span class="pun">:</span><span class="pln">         </span><span class="lit">6</span><span class="pln">
type_name</span><span class="pun">:</span><span class="pln">        FLOAT
precision</span><span class="pun">:</span><span class="pln">        </span><span class="lit">12</span><span class="pln">
scale</span><span class="pun">:</span><span class="pln">            </span><span class="lit">31</span><span class="pln">
nullable</span><span class="pun">:</span><span class="pln">         </span><span class="kwd">true</span><span class="pln">
indexed</span><span class="pun">:</span><span class="pln">          </span><span class="kwd">false</span><span class="pln">
primary</span><span class="pun">:</span><span class="pln">          </span><span class="kwd">false</span><span class="pln">
unique</span><span class="pun">:</span><span class="pln">           </span><span class="kwd">false</span><span class="pln">
mysql_type</span><span class="pun">:</span><span class="pln">       </span><span class="lit">4</span><span class="pln">
mysql_type_name</span><span class="pun">:</span><span class="pln">  FLOAT
mysql_length</span><span class="pun">:</span><span class="pln">     </span><span class="lit">12</span><span class="pln">
mysql_max_length</span><span class="pun">:</span><span class="pln"> </span><span class="lit">4</span><span class="pln">
mysql_flags</span><span class="pun">:</span><span class="pln">      </span><span class="lit">32768</span></pre>   
</div>
</ion-content>
</ion-view>