<ion-view view-title="14 - Temporary Tables">
  <ion-content style="margin:0 12px">
  <div class="col-md-7 middle-col">
<h1>Temporary Tables</h1>
<hr>
<p>There are RDBMS, which support temporary tables. Temporary Tables are a great feature that lets you store and process intermediate results by using the same selection, update, and join capabilities that you can use with typical SQL Server tables.</p>
<p>The temporary tables could be very useful in some cases to keep temporary data. The most important thing that should be known for temporary tables is that they will be deleted when the current client session terminates.</p>
<p>Temporary tables are available in MySQL version 3.23 onwards. If you use an older version of MySQL than 3.23, you can't use temporary tables, but you can use heap tables.</p>
<p>As stated earlier, temporary tables will only last as long as the session is alive. If you run the code in a PHP script, the temporary table will be destroyed  automatically when the script finishes executing. If you are connected to the MySQL database server through the MySQL client program, then the temporary table will exist until you close the client or manually destroy  the table.</p>
<h2>Example:</h2>
<p>Here is an example showing you usage of temporary table:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">mysql</span><span class="pun">&gt;</span><span class="pln"> CREATE TEMPORARY TABLE SALESSUMMARY </span><span class="pun">(</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln"> product_name VARCHAR</span><span class="pun">(</span><span class="lit">50</span><span class="pun">)</span><span class="pln"> NOT NULL
    </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="pun">,</span><span class="pln"> total_sales DECIMAL</span><span class="pun">(</span><span class="lit">12</span><span class="pun">,</span><span class="lit">2</span><span class="pun">)</span><span class="pln"> NOT NULL DEFAULT </span><span class="lit">0.00</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="pun">,</span><span class="pln"> avg_unit_price DECIMAL</span><span class="pun">(</span><span class="lit">7</span><span class="pun">,</span><span class="lit">2</span><span class="pun">)</span><span class="pln"> NOT NULL DEFAULT </span><span class="lit">0.00</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="pun">,</span><span class="pln"> total_units_sold INT UNSIGNED NOT NULL DEFAULT </span><span class="lit">0</span><span class="pln">
</span><span class="pun">);</span><span class="pln">
</span><span class="typ">Query</span><span class="pln"> OK</span><span class="pun">,</span><span class="pln"> </span><span class="lit">0</span><span class="pln"> rows affected </span><span class="pun">(</span><span class="lit">0.00</span><span class="pln"> sec</span><span class="pun">)</span><span class="pln">

mysql</span><span class="pun">&gt;</span><span class="pln"> INSERT INTO SALESSUMMARY
    </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="pun">(</span><span class="pln">product_name</span><span class="pun">,</span><span class="pln"> total_sales</span><span class="pun">,</span><span class="pln"> avg_unit_price</span><span class="pun">,</span><span class="pln"> total_units_sold</span><span class="pun">)</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln"> VALUES
    </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="pun">(</span><span class="str">'cucumber'</span><span class="pun">,</span><span class="pln"> </span><span class="lit">100.25</span><span class="pun">,</span><span class="pln"> </span><span class="lit">90</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2</span><span class="pun">);</span>
<span class="pln">
mysql> SELECT * FROM SALESSUMMARY;
    <table class="table table-bordered">
            <tbody><tr>
                <th>product_name</th>
                <th>total_sales</th>
                <th>avg_unit_price</th>
                <th>total_units_sold</th>
                
            </tr>
            <tr>
                <td align="left">cucumber</td>
                <td align="right">100.25</td>
                <td align="right">90.00</td>
                <td align="right">2</td>          
            </tr>           
        </tbody></table>
1 row in set (0.00 sec)
</span>
</pre>
<p> When you issue a <b>SHOW TABLES</b> command, then your temporary table would not be listed out in the list. Now if you will log out of the MySQL session and then you will issue a SELECT command, then you will find no data available in the database. Even your temporary table would also not exist.</p>
<h2>Dropping Temporary Tables:</h2>
<p>By default, all the temporary tables are deleted by MySQL when your database connection gets terminated. Still you want to delete them in between, then you do so by issuing DROP TABLE command.</p>
<p>Following is the example on dropping a temporary table.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">mysql</span><span class="pun">&gt;</span><span class="pln"> CREATE TEMPORARY TABLE SALESSUMMARY </span><span class="pun">(</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln"> product_name VARCHAR</span><span class="pun">(</span><span class="lit">50</span><span class="pun">)</span><span class="pln"> NOT NULL
    </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="pun">,</span><span class="pln"> total_sales DECIMAL</span><span class="pun">(</span><span class="lit">12</span><span class="pun">,</span><span class="lit">2</span><span class="pun">)</span><span class="pln"> NOT NULL DEFAULT </span><span class="lit">0.00</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="pun">,</span><span class="pln"> avg_unit_price DECIMAL</span><span class="pun">(</span><span class="lit">7</span><span class="pun">,</span><span class="lit">2</span><span class="pun">)</span><span class="pln"> NOT NULL DEFAULT </span><span class="lit">0.00</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="pun">,</span><span class="pln"> total_units_sold INT UNSIGNED NOT NULL DEFAULT </span><span class="lit">0</span><span class="pln">
</span><span class="pun">);</span><span class="pln">
</span><span class="typ">Query</span><span class="pln"> OK</span><span class="pun">,</span><span class="pln"> </span><span class="lit">0</span><span class="pln"> rows affected </span><span class="pun">(</span><span class="lit">0.00</span><span class="pln"> sec</span><span class="pun">)</span><span class="pln">

mysql</span><span class="pun">&gt;</span><span class="pln"> INSERT INTO SALESSUMMARY
    </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="pun">(</span><span class="pln">product_name</span><span class="pun">,</span><span class="pln"> total_sales</span><span class="pun">,</span><span class="pln"> avg_unit_price</span><span class="pun">,</span><span class="pln"> total_units_sold</span><span class="pun">)</span><span class="pln">
    </span><span class="pun">-&gt;</span><span class="pln"> VALUES
    </span><span class="pun">-&gt;</span><span class="pln"> </span><span class="pun">(</span><span class="str">'cucumber'</span><span class="pun">,</span><span class="pln"> </span><span class="lit">100.25</span><span class="pun">,</span><span class="pln"> </span><span class="lit">90</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2</span><span class="pun">);</span>
mysql> SELECT * FROM SALESSUMMARY;
    <table class="table table-bordered">
            <tbody><tr>
                <th>product_name</th>
                <th>total_sales</th>
                <th>avg_unit_price</th>
                <th>total_units_sold</th>
                
            </tr>
            <tr>
                <td align="left">cucumber</td>
                <td align="right">100.25</td>
                <td align="right">90.00</td>
                <td align="right">2</td>          
            </tr>           
        </tbody></table>
1 row in set (0.00 sec)
<span class="pln">
mysql</span><span class="pun">&gt;</span><span class="pln"> DROP TABLE SALESSUMMARY</span><span class="pun">;</span><span class="pln">
mysql</span><span class="pun">&gt;</span><span class="pln">  SELECT </span><span class="pun">*</span><span class="pln"> FROM SALESSUMMARY</span><span class="pun">;</span><span class="pln">
ERROR </span><span class="lit">1146</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Table</span><span class="pln"> </span><span class="str">'TUTORIALS.SALESSUMMARY'</span><span class="pln"> doesn</span><span class="str">'t exist</span></pre>
 </ion-content>
</ion-view>
