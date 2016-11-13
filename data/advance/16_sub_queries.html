<ion-view view-title="16 - Sub Queries">
  <ion-content style="margin:0 12px">
  <div class="col-md-7 middle-col">
<h1>Sub Queries</h1>
<hr>
<p>A Subquery or Inner query or Nested query is a query within another SQL query and embedded within the WHERE clause.</p>
<p>A subquery is used to return data that will be used in the main query as a condition to further restrict the data to be retrieved.</p>
<p>Subqueries can be used with the SELECT, INSERT, UPDATE, and DELETE statements along with the operators like =, &lt;, &gt;, &gt;=, &lt;=, IN, BETWEEN etc.</p>
<p>There are a few rules that subqueries must follow:</p>
<ion-list>
<li><p>Subqueries must be enclosed within parentheses.</p></li>
<li><p>A subquery can have only one column in the SELECT clause, unless multiple columns are in the main query for the subquery to compare its selected columns.</p></li>
<li><p>An ORDER BY cannot be used in a subquery, although the main query can use an ORDER BY. The GROUP BY can be used to perform the same function as the ORDER BY in a subquery.</p></li>
<li><p>Subqueries that return more than one row can only be used with multiple value operators, such as the IN operator.</p></li>
<li><p>The SELECT list cannot include any references to values that evaluate to a BLOB, ARRAY, CLOB, or NCLOB.</p></li>
<li><p>A subquery cannot be immediately enclosed in a set function.</p></li>
<li><p>The BETWEEN operator cannot be used with a subquery; however, the BETWEEN operator can be used within the subquery.</p></li>
</ion-list>
<h2>Subqueries with the SELECT Statement:</h2>
<p>Subqueries are most frequently used with the SELECT statement. The basic syntax is as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">SELECT column_name </span><span class="pun">[,</span><span class="pln"> column_name </span><span class="pun">]</span><span class="pln">
FROM   table1 </span><span class="pun">[,</span><span class="pln"> table2 </span><span class="pun">]</span><span class="pln">
WHERE  column_name OPERATOR
      </span><span class="pun">(</span><span class="pln">SELECT column_name </span><span class="pun">[,</span><span class="pln"> column_name </span><span class="pun">]</span><span class="pln">
      FROM table1 </span><span class="pun">[,</span><span class="pln"> table2 </span><span class="pun">]</span><span class="pln">
      </span><span class="pun">[</span><span class="pln">WHERE</span><span class="pun">])</span></pre>
<h2>Example:</h2>
<p>Consider the CUSTOMERS table having the following records:</p>
<div>
  <table class="table table-bordered">
      <tbody><tr>
        <th>ID</th>
        <th>NAME</th>
        <th>AGE</th>
        <th>ADDRESS</th>
        <th>SALARY</th>
      </tr>
      <tr>
        <td>1<br>2<br>3<br>4<br>5<br>6<br>7</td>
        <td>Ramesh<br>Khilan<br>kaushik<br>
          Chaitali<br>Hardik<br>Komal<br>Muffy</td>
        <td align="center">32<br>25<br>23<br>25<br>27<br>22<br>24</td>
        <td>Ahmedabad<br>Delhi<br>Kota<br>Mumbai<br>Bhopal<br>MP<br>Indore</td>
        <td align="right">2000.00<br>1500.00<br>2000.00<br>
          6500.00<br>8500.00<br>4500.00<br>10000.00</td>        
      </tr>     
    </tbody></table> <br>
</div>
<p>Now, let us check following subquery with SELECT statement:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">SQL</span><span class="pun">&gt;</span><span class="pln"> SELECT </span><span class="pun">*</span><span class="pln"> 
     FROM CUSTOMERS 
     WHERE ID IN </span><span class="pun">(</span><span class="pln">SELECT ID 
                  FROM CUSTOMERS 
                  WHERE SALARY </span><span class="pun">&gt;</span><span class="pln"> </span><span class="lit">4500</span><span class="pun">)</span><span class="pln"> </span><span class="pun">;</span></pre>
<p>This would produce the following result:</p>
<div>
  <table class="table table-bordered">
      <tbody><tr>
        <th>ID</th>
        <th>NAME</th>
        <th>AGE</th>
        <th>ADDRESS</th>
        <th>SALARY</th>
      </tr>
      <tr>
        <td>4<br>5<br>7</td>
        <td>Chaitali<br>Hardik<br>Muffy</td>
        <td align="center">25<br>27<br>24</td>
        <td>Mumbai<br>Bhopal<br>Indore</td>
        <td align="right">6500.00<br>8500.00<br>10000.00</td>        
      </tr>     
    </tbody></table> <br>
</div>
<h2>Subqueries with the INSERT Statement:</h2>
<p>Subqueries also can be used  with INSERT statements. The INSERT statement uses the data returned from the subquery to insert into another table. The selected data in the subquery can be modified with any of the character, date or number functions.</p>
<p>The basic syntax is as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">INSERT INTO table_name </span><span class="pun">[</span><span class="pln"> </span><span class="pun">(</span><span class="pln">column1 </span><span class="pun">[,</span><span class="pln"> column2 </span><span class="pun">])</span><span class="pln"> </span><span class="pun">]</span><span class="pln">
           SELECT </span><span class="pun">[</span><span class="pln"> </span><span class="pun">*|</span><span class="pln">column1 </span><span class="pun">[,</span><span class="pln"> column2 </span><span class="pun">]</span><span class="pln">
           FROM table1 </span><span class="pun">[,</span><span class="pln"> table2 </span><span class="pun">]</span><span class="pln">
           </span><span class="pun">[</span><span class="pln"> WHERE VALUE OPERATOR </span><span class="pun">]</span></pre>
<h2>Example:</h2>
<p>Consider a table CUSTOMERS_BKP with similar structure as  CUSTOMERS table. Now to copy complete CUSTOMERS table into CUSTOMERS_BKP, following is the syntax:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">SQL</span><span class="pun">&gt;</span><span class="pln"> INSERT INTO CUSTOMERS_BKP
     SELECT </span><span class="pun">*</span><span class="pln"> FROM CUSTOMERS 
     WHERE ID IN </span><span class="pun">(</span><span class="pln">SELECT ID 
                  FROM CUSTOMERS</span><span class="pun">)</span><span class="pln"> </span><span class="pun">;</span></pre>
<h2>Subqueries with the UPDATE Statement:</h2>
<p>The subquery can be used in conjunction with the UPDATE statement. Either single or multiple columns in a table can be updated when using a subquery with the UPDATE statement.</p>
<p>The basic syntax is as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">UPDATE table
SET column_name </span><span class="pun">=</span><span class="pln"> new_value
</span><span class="pun">[</span><span class="pln"> WHERE OPERATOR </span><span class="pun">[</span><span class="pln"> VALUE </span><span class="pun">]</span><span class="pln">
   </span><span class="pun">(</span><span class="pln">SELECT COLUMN_NAME
   FROM TABLE_NAME</span><span class="pun">)</span><span class="pln">
   </span><span class="pun">[</span><span class="pln"> WHERE</span><span class="pun">)</span><span class="pln"> </span><span class="pun">]</span></pre>
<h2>Example:</h2>
<p>Assuming, we have CUSTOMERS_BKP table available which is backup of CUSTOMERS table.</p>
<p>Following example updates SALARY by 0.25 times in CUSTOMERS table for all the customers whose AGE is greater than or equal to 27:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">SQL</span><span class="pun">&gt;</span><span class="pln"> UPDATE CUSTOMERS
     SET SALARY </span><span class="pun">=</span><span class="pln"> SALARY </span><span class="pun">*</span><span class="pln"> </span><span class="lit">0.25</span><span class="pln">
     WHERE AGE IN </span><span class="pun">(</span><span class="pln">SELECT AGE FROM CUSTOMERS_BKP
                   WHERE AGE </span><span class="pun">&gt;=</span><span class="pln"> </span><span class="lit">27</span><span class="pln"> </span><span class="pun">);</span></pre>
<p>This would impact two rows and finally CUSTOMERS table would have the following records:</p>

<div>
  <table class="table table-bordered">
      <tbody><tr>
        <th>ID</th>
        <th>NAME</th>
        <th>AGE</th>
        <th>ADDRESS</th>
        <th>SALARY</th>
      </tr>
      <tr>
        <td>1<br>2<br>3<br>4<br>5<br>6<br>7</td>
        <td>Ramesh<br>Khilan<br>kaushik<br>
          Chaitali<br>Hardik<br>Komal<br>Muffy</td>
        <td align="center">32<br>25<br>23<br>25<br>27<br>22<br>24</td>
        <td>Ahmedabad<br>Delhi<br>Kota<br>Mumbai<br>Bhopal<br>MP<br>Indore</td>
        <td align="right">500.00<br>1500.00<br>2000.00<br>
          6500.00<br>2125.00<br>4500.00<br>10000.00</td>        
      </tr>     
    </tbody></table> <br>
</div>
<h2>Subqueries with the DELETE Statement:</h2>
<p>The subquery can be used in conjunction with the DELETE statement like with any other statements mentioned above.</p>
<p>The basic syntax is as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">DELETE FROM TABLE_NAME
</span><span class="pun">[</span><span class="pln"> WHERE OPERATOR </span><span class="pun">[</span><span class="pln"> VALUE </span><span class="pun">]</span><span class="pln">
   </span><span class="pun">(</span><span class="pln">SELECT COLUMN_NAME
   FROM TABLE_NAME</span><span class="pun">)</span><span class="pln">
   </span><span class="pun">[</span><span class="pln"> WHERE</span><span class="pun">)</span><span class="pln"> </span><span class="pun">]</span></pre>
<h2>Example:</h2>
<p>Assuming, we have CUSTOMERS_BKP table available which is backup of CUSTOMERS table.</p>
<p>Following example deletes records from CUSTOMERS table for all the customers whose AGE is greater than or equal to 27:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">SQL</span><span class="pun">&gt;</span><span class="pln"> DELETE FROM CUSTOMERS
     WHERE AGE IN </span><span class="pun">(</span><span class="pln">SELECT AGE FROM CUSTOMERS_BKP
                   WHERE AGE </span><span class="pun">&gt;</span><span class="pln"> </span><span class="lit">27</span><span class="pln"> </span><span class="pun">);</span></pre>
<p>This would impact two rows and finally CUSTOMERS table would have the following records:</p>
<div>
  <table class="table table-bordered">
      <tbody><tr>
        <th>ID</th>
        <th>NAME</th>
        <th>AGE</th>
        <th>ADDRESS</th>
        <th>SALARY</th>
      </tr>
      <tr>
        <td>2<br>3<br>4<br>6<br>7</td>
        <td>Khilan<br>kaushik<br>
          Chaitali<br>Komal<br>Muffy</td>
        <td align="center">25<br>23<br>25<br>22<br>24</td>
        <td>Ahmedabad<br>Delhi<br>Kota<br>MP<br>Indore</td>
        <td align="right">1500.00<br>2000.00<br>
          6500.00<br>4500.00<br>10000.00</td>        
      </tr>     
    </tbody></table> <br>
</div>
 </ion-content>
</ion-view>
