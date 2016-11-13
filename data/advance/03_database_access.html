<ion-view view-title="03 - Database access">
<ion-content style="margin:0 12px">
	<div class="col-md-7 middle-col">
<h1>DBI Tutorial</h1>
<hr>
<p>This session will teach you how to access a database using Ruby. The <i>Ruby DBI</i> module provides a database-independent interface for Ruby scripts similar to that of the Perl DBI module.</p>
<p>DBI stands for Database independent interface for Ruby which means DBI provides an abstraction layer between the Ruby code and the underlying database, allowing you to switch database implementations really easily. It defines a set of methods, variables, and conventions that provide a consistent database interface, independent of the actual database being used.</p>
<p>DBI can interface with the following:</p>
<ion-list>
<li><p>ADO (ActiveX Data Objects)</p></li>
<li><p>DB2</p></li>
<li><p>Frontbase</p></li>
<li><p>mSQL</p></li>
<li><p>MySQL</p></li>
<li><p>ODBC</p></li>
<li><p>Oracle</p></li>
<li><p>OCI8 (Oracle)</p></li>
<li><p>PostgreSQL</p></li>
<li><p>Proxy/Server</p></li>
<li><p>SQLite</p></li>
<li><p>SQLRelay</p></li>
</ion-list>
<h2>Architecture of a DBI Application</h2>
<p>DBI is independent of any database available in backend. You can use DBI whether you are working with Oracle, MySQL or Informix, etc. This is clear from the following architure diagram.</p>
<img src="/img/ruby_dbi.png" alt="Ruby DBI Architecture">
<p>The general architecture for Ruby DBI uses two layers:</p>
<ion-list>
<li><p>The database interface (DBI) layer. This layer is database independent and provides a set of common access methods that are used the same way regardless of the type of database server with which you're communicating.</p></li>
<li><p>The database driver (DBD) layer. This layer is database dependent; different drivers provide access to different database engines. There is one driver for MySQL, another for PostgreSQL, another for InterBase, another for Oracle, and so forth. Each driver interprets requests from the DBI layer and maps them onto requests appropriate for a given type of database server.</p></li>
</ion-list>
<h2>Prerequisites:</h2>
<p>If you want to write Ruby scripts to access MySQL databases, you'll need to have the Ruby MySQL module installed.</p>
<p>This module acts as a DBD as explained above and can be downloaded from <a onclick="window.open('http://www.tmtm.org/en/mysql/ruby/','_system')">http://www.tmtm.org/en/mysql/ruby/</a></p>
<h2>Obtaining and Installing Ruby/DBI:</h2>
<p>You can download and install the Ruby DBI module from the following location:</p>
<table class="table table-bordered">
<tbody><tr><td>
<a onclick="window.open('http://rubyforge.org/projects/ruby-dbi/','_system')">http://rubyforge.org/projects/ruby-dbi/</a>
</td></tr>
</tbody></table>
<p>Before starting this installation make sure you have root privilege. Now, follow the following steps:</p>
<h2>Step 1</h2>
<pre class="prettyprint notranslate">$ tar zxf dbi-0.2.0.tar.gz
</pre>
<h2>Step 2</h2>
<p>Go in distribution directory <i>dbi-0.2.0</i> and configure it using the <i>setup.rb</i> script in that directory. The most general configuration command looks like this, with no arguments following the config argument. This command configures the distribution to install all drivers by default.</p>
<pre class="prettyprint notranslate">$ ruby setup.rb config
</pre>
<p>To be more specific, provide a --with option that lists the particular parts of the distribution you want to use. For example, to configure only the main DBI module and the MySQL DBD-level driver, issue the following command:</p>
<pre class="prettyprint notranslate">$ ruby setup.rb config --with=dbi,dbd_mysql
</pre>
<h2>Step 3</h2>
<p>Final step is to build the driver and install it using the following commands:</p>
<pre class="prettyprint notranslate">$ ruby setup.rb setup
$ ruby setup.rb install
</pre>
<h2>Database Connection:</h2>
<p>Assuming we are going to work with MySQL database, before connecting to a database make sure of the following:</p>
<ion-list>
<li><p>You have created a database TESTDB.</p></li>
<li><p>You have created EMPLOYEE in TESTDB.</p></li>
<li><p>This table is having fields FIRST_NAME, LAST_NAME, AGE, SEX and INCOME.</p></li>
<li><p>User ID "testuser" and password "test123" are set to access TESTDB</p></li>
<li><p>Ruby Module DBI is installed properly on your machine.</p></li>
<li><p>You have gone through MySQL tutorial to understand MySQL Basics.</p></li>
</ion-list>
<p>Following is the example of connecting with MySQL database "TESTDB"</p>
<pre class="prettyprint notranslate">#!/usr/bin/ruby -w

require "dbi"

begin
     # connect to the MySQL server
     dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", 
	                    "testuser", "test123")
     # get server version string and display it
     row = dbh.select_one("SELECT VERSION()")
     puts "Server version: " + row[0]
rescue DBI::DatabaseError =&gt; e
     puts "An error occurred"
     puts "Error code:    #{e.err}"
     puts "Error message: #{e.errstr}"
ensure
     # disconnect from server
     dbh.disconnect if dbh
end
</pre>
<p>While running this script, it's producing the following result at my Linux machine.</p>
<pre class="prettyprint notranslate">Server version: 5.0.45
</pre>
<p>If a connection is established with the data source, then a Database Handle is returned and saved into <b>dbh</b> for further use otherwise <b>dbh</b> is set to nil value and <i>e.err</i> and <i>e::errstr</i> return error code and an error string respectively.</p>
<p>Finally, before coming out it, ensure that database connection is closed and resources are released.</p>
<h2>INSERT Operation:</h2>
<p>INSERT operation is required when you want to create your records into a database table.</p>
<p>Once a database connection is established, we are ready to create tables or records into the database tables using <b>do</b> method or <b>prepare</b> and <b>execute</b> method.</p>
<h2>Using do Statement:</h2>
<p>Statements that do not return rows can be issued by invoking the <b>do</b> database handle method. This method takes a statement string argument and returns a count of the number of rows affected by the statement. </p>
<pre class="prettyprint notranslate">dbh.do("DROP TABLE IF EXISTS EMPLOYEE")
dbh.do("CREATE TABLE EMPLOYEE (
     FIRST_NAME  CHAR(20) NOT NULL,
     LAST_NAME  CHAR(20),
     AGE INT,  
     SEX CHAR(1),
     INCOME FLOAT )" );
</pre>
<p>Similar way you can execute SQL <i>INSERT</i> statement to create a record into EMPLOYEE table.</p>
<pre class="prettyprint notranslate">#!/usr/bin/ruby -w

require "dbi"

begin
     # connect to the MySQL server
     dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", 
	                    "testuser", "test123")
     dbh.do( "INSERT INTO EMPLOYEE(FIRST_NAME,
                   LAST_NAME, 
                   AGE, 
		   SEX, 
		   INCOME)
          VALUES ('Mac', 'Mohan', 20, 'M', 2000)" )
     puts "Record has been created"
     dbh.commit
rescue DBI::DatabaseError =&gt; e
     puts "An error occurred"
     puts "Error code:    #{e.err}"
     puts "Error message: #{e.errstr}"
     dbh.rollback
ensure
     # disconnect from server
     dbh.disconnect if dbh
end
</pre>
<h2>Using <i>prepare</i> and <i>execute</i>:</h2>
<p>You can use <i>prepare</i> and <i>execute</i> methods of DBI class to execute SQL statement through Ruby code.</p>
<p>Record creation takes following steps:</p>
<ion-list>
<li><p>Preparing SQL statement with INSERT statement. This will be done using <b>prepare</b> method.</p></li>
<li><p>Executing SQL query to select all the results from the database. This will be done using <b>execute</b> method.</p></li>
<li><p>Releasing Statement handle. This will be done using <b>finish</b> API</p></li>
<li><p>If everything goes fine, then <b>commit</b> this operation otherwise you can <b>rollback</b> complete transaction.</p></li>
</ion-list>
<p>Following is the syntax to use these two methods:</p>
<pre class="prettyprint notranslate">sth = dbh.prepare(statement)
sth.execute
   ... zero or more SQL operations ...
sth.finish
</pre>
<p>These two methods can be used to pass <b>bind</b> values to SQL statements. There may be a case when values to be entered is not given in advance. In such case, binding values are used. A question mark (<b>?</b>) is used in place of actual value and then actual values are passed through execute() API.</p>
<p>Following is the example to create two records in EMPLOYEE table:</p>
<pre class="prettyprint notranslate">#!/usr/bin/ruby -w

require "dbi"

begin
     # connect to the MySQL server
     dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", 
	                    "testuser", "test123")
     sth = dbh.prepare( "INSERT INTO EMPLOYEE(FIRST_NAME,
                   LAST_NAME, 
                   AGE, 
 		   SEX, 
		   INCOME)
                   VALUES (?, ?, ?, ?, ?)" )
     sth.execute('John', 'Poul', 25, 'M', 2300)
     sth.execute('Zara', 'Ali', 17, 'F', 1000)
     sth.finish
     dbh.commit
     puts "Record has been created"
rescue DBI::DatabaseError =&gt; e
     puts "An error occurred"
     puts "Error code:    #{e.err}"
     puts "Error message: #{e.errstr}"
     dbh.rollback
ensure
     # disconnect from server
     dbh.disconnect if dbh
end
</pre>
<p>If there are multiple INSERTs at a time, then preparing a statement first and then executing it multiple times within a loop is more efficient than invoking do each time through the loop</p>
<h2>READ Operation:</h2>
<p>READ Operation on any database means to fetch some useful information from the database.</p>
<p>Once our database connection is established, we are ready to make a query into this database. We can use either <b>do</b> method or <b>prepare</b> and <b>execute</b> methods to fetch values from a database table.</p>
<p>Record fetching takes following steps:</p>
<ul class="list">
<li><p>Preparing SQL query based on required conditions. This will be done using <b>prepare</b> method.</p></li>
<li><p>Executing SQL query to select all the results from the database. This will be done using <b>execute</b> method.</p></li>
<li><p>Fetching all the results one by one and printing those results. This will be done using <b>fetch</b> method.</p></li>
<li><p>Releasing Statement handle. This will be done using <b>finish</b> method.</p></li>
</ul>
<p>Following is the procedure to query all the records from EMPLOYEE table having salary more than 1000.</p>
<pre class="prettyprint notranslate">#!/usr/bin/ruby -w

require "dbi"

begin
     # connect to the MySQL server
     dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", 
	                    "testuser", "test123")
     sth = dbh.prepare("SELECT * FROM EMPLOYEE 
                        WHERE INCOME &gt; ?")
     sth.execute(1000)

     sth.fetch do |row|
        printf "First Name: %s, Last Name : %s\n", row[0], row[1]
        printf "Age: %d, Sex : %s\n", row[2], row[3]
        printf "Salary :%d \n\n", row[4]
     end
     sth.finish
rescue DBI::DatabaseError =&gt; e
     puts "An error occurred"
     puts "Error code:    #{e.err}"
     puts "Error message: #{e.errstr}"
ensure
     # disconnect from server
     dbh.disconnect if dbh
end
</pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate">First Name: Mac, Last Name : Mohan
Age: 20, Sex : M
Salary :2000

First Name: John, Last Name : Poul
Age: 25, Sex : M
Salary :2300
</pre>
<p>There are more shot cut methods to fetch records from the database. If you are interested then go through <a href="#/app/advance/03_dbi_fetching_results.html" title="Ruby DBI Read Operation">Fetching the Result</a> otherwise proceed to next section.</p>
<h2>Update Operation:</h2>
<p>UPDATE Operation on any database means to update one or more records which are already available in the database. Following is the procedure to update all the records having SEX as 'M'. Here we will increase AGE of all the males by one year. This will take three steps</p>
<ul class="list">
<li><p>Preparing SQL query based on required conditions. This will be done using <b>prepare</b> method.</p></li>
<li><p>Executing SQL query to select all the results from the database. This will be done using <b>execute</b> method.</p></li>
<li><p>Releasing Statement handle. This will be done using <b>finish</b> method.</p></li>
<li><p>If everything goes fine then <b>commit</b> this operation otherwise you can <b>rollback</b> complete transaction.</p></li>
</ul>
<pre class="prettyprint notranslate">#!/usr/bin/ruby -w

require "dbi"

begin
     # connect to the MySQL server
     dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", 
	                    "testuser", "test123")
     sth = dbh.prepare("UPDATE EMPLOYEE SET AGE = AGE + 1
                        WHERE SEX = ?")
     sth.execute('M')
     sth.finish
     dbh.commit
rescue DBI::DatabaseError =&gt; e
     puts "An error occurred"
     puts "Error code:    #{e.err}"
     puts "Error message: #{e.errstr}"
     dbh.rollback
ensure
     # disconnect from server
     dbh.disconnect if dbh
end
</pre>
<h2>DELETE Operation:</h2>
<p>DELETE operation is required when you want to delete some records from your database. Following is the  procedure to delete all the records from EMPLOYEE where AGE is more than 20. This operation will take following steps.</p>
<ul class="list">
<li><p>Preparing SQL query based on required conditions. This will be done using <b>prepare</b> method.</p></li>
<li><p>Executing SQL query to delete required records from the database. This will be done using <b>execute</b> method.</p></li>
<li><p>Releasing Statement handle. This will be done using <b>finish</b> method.</p></li>
<li><p>If everything goes fine then <b>commit</b> this operation otherwise you can <b>rollback</b> complete transaction.</p></li>
</ul>
<pre class="prettyprint notranslate">#!/usr/bin/ruby -w

require "dbi"

begin
     # connect to the MySQL server
     dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", 
	                    "testuser", "test123")
     sth = dbh.prepare("DELETE FROM EMPLOYEE 
                        WHERE AGE &gt; ?")
     sth.execute(20)
     sth.finish
     dbh.commit
rescue DBI::DatabaseError =&gt; e
     puts "An error occurred"
     puts "Error code:    #{e.err}"
     puts "Error message: #{e.errstr}"
     dbh.rollback
ensure
     # disconnect from server
     dbh.disconnect if dbh
end
</pre>
<h2>Performing Transactions:</h2>
<p>Transactions are a mechanism that ensures data consistency. Transactions should have the following four properties:</p>
<ul class="list">
<li><p><b>Atomicity:</b> Either a transaction completes or nothing happens at all.</p></li>
<li><p><b>Consistency:</b> A transaction must start in a consistent state and leave the system is a consistent state.</p></li>
<li><p><b>Isolation:</b> Intermediate results of a transaction are not visible outside the current transaction.</p></li>
<li><p><b>Durability:</b> Once a transaction was committed, the effects are persistent, even after a system failure.</p></li>
</ul>
<p>The DBI provides two methods to either <i>commit</i> or <i>rollback</i> a transaction.  There is one more method called <i>transaction</i> which can be used to implement transactions. There are two simple approaches to implement transactions:</p>
<h2>Approach I:</h2>
<p>The first approach uses DBI's <i>commit</i> and <i>rollback</i> methods to explicitly commit or cancel the transaction:</p>
<pre class="prettyprint notranslate">   dbh['AutoCommit'] = false # Set auto commit to false.
   begin
     dbh.do("UPDATE EMPLOYEE SET AGE = AGE+1 
             WHERE FIRST_NAME = 'John'")
     dbh.do("UPDATE EMPLOYEE SET AGE = AGE+1 
             WHERE FIRST_NAME = 'Zara'")
     dbh.commit
   rescue
     puts "transaction failed"
     dbh.rollback
   end
   dbh['AutoCommit'] = true
</pre>
<h2>Approach II:</h2>
<p>The second approach uses the <i>transaction</i> method. This is simpler, because it takes a code block containing the statements that make up the transaction. The <i>transaction</i> method executes the block, then invokes <i>commit</i> or <i>rollback</i> automatically, depending on whether the block succeeds or fails:</p>
<pre class="prettyprint notranslate">   dbh['AutoCommit'] = false # Set auto commit to false.
   dbh.transaction do |dbh|
     dbh.do("UPDATE EMPLOYEE SET AGE = AGE+1 
             WHERE FIRST_NAME = 'John'")
     dbh.do("UPDATE EMPLOYEE SET AGE = AGE+1 
             WHERE FIRST_NAME = 'Zara'")
   end
   dbh['AutoCommit'] = true
</pre>
<h2>COMMIT Operation:</h2>
<p>Commit is the operation, which gives a green signal to database to finalize the changes, and after this operation, no change can be reverted back.</p>
<p>Here is a simple example to call <b>commit</b> method.</p>
<pre class="prettyprint notranslate">     dbh.commit
</pre>
<h2>ROLLBACK Operation:</h2>
<p>If you are not satisfied with one or more of the changes and you want to revert back those changes completely, then use <b>rollback</b> method.</p>
<p>Here is a simple example to call <b>rollback</b> method.</p>
<pre class="prettyprint notranslate">     dbh.rollback
</pre>
<h2>Disconnecting Database:</h2>
<p>To disconnect Database connection, use disconnect API.</p>
<pre class="prettyprint notranslate">    dbh.disconnect
</pre>
<p>If the connection to a database is closed by the user with the disconnect method, any outstanding transactions are rolled back by the DBI. However, instead of depending on any of DBI's implementation details, your application would be better off calling commit or rollback explicitly.</p>
<h2>Handling Errors:</h2>
<p>There are many sources of errors. A few examples are a syntax error in an executed SQL statement, a connection failure, or calling the fetch method for an already canceled or finished statement handle.</p>
<p>If a DBI method fails, DBI raises an exception. DBI methods may raise any of several types of exception but the two most important exception classes are <i>DBI::InterfaceError</i> and <i>DBI::DatabaseError</i>.</p>
<p>Exception objects of these classes have three attributes named <i>err</i>, <i>errstr</i>, and <i>state</i>, which represent the error number, a descriptive error string, and a standard error code. The attributes are explained below:</p>
<ion-list>
<li><p><b>err:</b> Returns an integer representation of the occurred error or <i>nil</i> if this is not supported by the DBD.The Oracle DBD for example returns the numerical part of an <i>ORA-XXXX</i> error message.</p></li>
<li><p><b>errstr:</b> Returns a string representation of the occurred error.</p></li>
<li><p><b>state:</b> Returns the SQLSTATE code of the occurred error.The SQLSTATE is a five-character-long string. Most DBDs do not support this and return nil instead.</p></li>
</ion-list>
<p>You have seen following code above in most of the examples:</p>
<pre class="prettyprint notranslate">rescue DBI::DatabaseError =&gt; e
     puts "An error occurred"
     puts "Error code:    #{e.err}"
     puts "Error message: #{e.errstr}"
     dbh.rollback
ensure
     # disconnect from server
     dbh.disconnect if dbh
end
</pre>
<p>To get debugging information about what your script is doing as it executes, you can enable tracing. To do this, you must first load the dbi/trace module and then call the <i>trace</i> method that controls the trace mode and output destination:</p>
<pre class="prettyprint notranslate">require "dbi/trace"
..............

trace(mode, destination)
</pre>
<p>The mode value may be 0 (off), 1, 2, or 3, and the destination should be an IO object. The default values are 2 and STDERR, respectively.</p>
<h2>Code Blocks with Methods</h2>
<p>There are some methods which creates handles. These methods can be invoked with a code block. The advantage of using code block along with methods is that they provide the handle to the code block as its parameter and automatically clean up the handle when the block terminates. There are few examples to understand the concept</p>
<ion-list>
<li><p><b>DBI.connect :</b> This method generates a database handle and it is recommended to call <i>disconnect</i> at the end of the block to disconnect the database.</p></li>
<li><p><b>dbh.prepare : </b> This method generates a statement handle and it is recommended to <i>finish</i> at the end of the block. Within the block, you must invoke <i>execute</i> method to execute the statement.</p></li>
<li><p><b>dbh.execute :</b> This method is similar except we don't need to invoke execute within the block. The statement handle is automatically executed.</p></li>
</ion-list>
<h2>Example 1:</h2>
<p><b>DBI.connect</b> can take a code block, passes the database handle to it, and automatically disconnects the handle at the end of the block as follows.</p>
<pre class="prettyprint notranslate">dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", 
	               "testuser", "test123") do |dbh|
</pre>
<h2>Example 2:</h2>
<p><b>dbh.prepare</b> can take a code block, passes the statement handle to it, and automatically calls finish at the end of the block as follows.</p>
<pre class="prettyprint notranslate">dbh.prepare("SHOW DATABASES") do |sth|
       sth.execute
       puts "Databases: " + sth.fetch_all.join(", ")
end
</pre>
<h2>Example 3:</h2>
<p><b>dbh.execute</b> can take a code block, passes the statement handle to it, and automatically calls finish at the end of the block as follows:</p>
<pre class="prettyprint notranslate">dbh.execute("SHOW DATABASES") do |sth|
   puts "Databases: " + sth.fetch_all.join(", ")
end
</pre>
<p>DBI <i>transaction</i> method also takes a code block which has been described in  above.</p>
<h2>Driver-specific Functions and Attributes:</h2>
<p>The DBI lets database drivers provide additional database-specific functions, which can be called by the user through the <i>func</i> method of any Handle object.</p>
<p>Driver-specific attributes are supported and can be set or gotten using the <b>[]=</b> or <b>[]</b> methods.</p>
<p>DBD::Mysql implements the following driver-specific functions:</p>
<table class="table table-bordered">
<tbody><tr><th style="width:5%">S.N.</th><th>Functions with Description</th></tr>
<tr><td>1</td><td><b>dbh.func(:createdb, db_name)</b><br>Creates a new database</td></tr>
<tr><td>2</td><td><b>dbh.func(:dropdb, db_name)</b><br>Drops a database</td></tr>
<tr><td>3</td><td><b>dbh.func(:reload)</b><br>Performs a reload operation</td></tr>
<tr><td>4</td><td><b>dbh.func(:shutdown)</b><br>Shut down the server</td></tr>
<tr><td>5</td><td><b>dbh.func(:insert_id) =&gt; Fixnum</b><br>Returns the most recent AUTO_INCREMENT value for a connection. </td></tr>
<tr><td>6</td><td><b>dbh.func(:client_info) =&gt; String</b><br>Returns MySQL client information in terms of version.</td></tr>
<tr><td>7</td><td><b>dbh.func(:client_version) =&gt; Fixnum </b><br>Returns client information in terms of version. It's similar to :client_info but it return a fixnum instead of sting.</td></tr>
<tr><td>8</td><td><b>dbh.func(:host_info) =&gt; String</b><br>Returns host information</td></tr>
<tr><td>9</td><td><b>dbh.func(:proto_info) =&gt; Fixnum</b><br>Returns protocol being used for the communication.</td></tr>
<tr><td>10</td><td><b>dbh.func(:server_info) =&gt; String </b><br>Returns MySQL server information in terms of version.</td></tr>
<tr><td>11</td><td><b>dbh.func(:stat) =&gt; String</b><br>Returns current state of the database.</td></tr>
<tr><td>12</td><td><b>dbh.func(:thread_id) =&gt; Fixnum</b><br>Return current thread ID.</td></tr>
</tbody></table>
<h2>Example:</h2>
<pre class="prettyprint notranslate">#!/usr/bin/ruby

require "dbi"
begin
   # connect to the MySQL server
   dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", 
	                    "testuser", "test123") 
   puts dbh.func(:client_info)
   puts dbh.func(:client_version)
   puts dbh.func(:host_info)
   puts dbh.func(:proto_info)
   puts dbh.func(:server_info)
   puts dbh.func(:thread_id)
   puts dbh.func(:stat)
rescue DBI::DatabaseError =&gt; e
   puts "An error occurred"
   puts "Error code:    #{e.err}"
   puts "Error message: #{e.errstr}"
ensure
   dbh.disconnect if dbh
end
</pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate">5.0.45
50045
Localhost via UNIX socket
10
5.0.45
150621
Uptime: 384981  Threads: 1  Questions: 1101078  Slow queries: 4 \
Opens: 324  Flush tables: 1  Open tables: 64  \
Queries per second avg: 2.860
</pre>
</div>
</ion-content>
</ion-view>