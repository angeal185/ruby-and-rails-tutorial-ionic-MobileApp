<ion-view view-title="13 - Date Functions">
  <ion-content style="margin:0 12px">
  <div class="col-md-7 middle-col">
<h1>Date Functions</h1>
<hr>
<p>Following is a list of all important Date and Time related functions available through SQL. There are various other functions supported by your RDBMS. Given list is based on MySQL RDBMS. <br>
*Note: click on function name for details and examples about the function.
</p>
<table class="table table-bordered">
<tbody><tr>
		<th><strong>No.</strong></th>
		<th><strong>Name</strong></th>
		<th><strong>Description</strong></th>
	</tr>
	<tr>
		<td>1</td>
		<td><a href="#/app/dateFn/01_add_date.html">ADDDATE()</a></td>
		<td>Adds dates</td>
	</tr>
	<tr>
		<td>2</td>
		<td><a href="#/app/dateFn/02_add_time.html">ADDTIME()</a></td>
		<td>Adds time</td>
	</tr>
	<tr>
		<td>3</td>
		<td>CONVERT_TZ()</td>
		<td>Converts from one timezone to another</td>
	</tr>
	<tr>
		<td>4</td>
		<td>CURDATE()</td>
		<td>Returns the current date</td>
	</tr>
	<tr>
		<td>5</td>
		<td>CURRENT_DATE(), CURRENT_DATE</td>
		<td>Synonyms for CURDATE()</td>
	</tr>
	<tr>
		<td>6</td>
		<td>CURRENT_TIME(), CURRENT_TIME</td>
		<td>Synonyms for CURTIME()</td>
	</tr>
	<tr>
		<td>7</td>
		<td>CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP</td>
		<td>Synonyms for NOW()</td>
	</tr>
	<tr>
		<td>8</td>
		<td>CURTIME()</td>
		<td>Returns the current time</td>
	</tr>
	<tr>
		<td>9</td>
		<td>DATE_ADD()</td>
		<td>Adds two dates</td>
	</tr>
	<tr>
		<td>10</td>
		<td>DATE_FORMAT()</td>
		<td>Formats date as specified</td>
	</tr>
	<tr>
		<td>11</td>
		<td>DATE_SUB()</td>
		<td>Subtracts two dates</td>
	</tr>
	<tr>
		<td>12</td>
		<td>DATE()</td>
		<td>Extracts the date part of a date or datetime expression</td>
	</tr>
	<tr>
		<td>13</td>
		<td>DATEDIFF()</td>
		<td>Subtracts two dates</td>
	</tr>
	<tr>
		<td>14</td>
		<td>DAY()</td>
		<td>Synonym for DAYOFMONTH()</td>
	</tr>
	<tr>
		<td>15</td>
		<td>DAYNAME()</td>
		<td>Returns the name of the weekday</td>
	</tr>
	<tr>
		<td>16</td>
		<td>DAYOFMONTH()</td>
		<td>Returns the day of the month (1-31)</td>
	</tr>
	<tr>
		<td>17</td>
		<td>DAYOFWEEK()</td>
		<td>Returns the weekday index of the argument</td>
	</tr>
	<tr>
		<td>18</td>
		<td>DAYOFYEAR()</td>
		<td>Returns the day of the year (1-366)</td>
	</tr>
	<tr>
		<td>19</td>
		<td>EXTRACT</td>
		<td>Extracts part of a date</td>
	</tr>
	<tr>
		<td>20</td>
		<td>FROM_DAYS()</td>
		<td>Converts a day number to a date</td>
	</tr>
	<tr>
		<td>21</td>
		<td>FROM_UNIXTIME()</td>
		<td>Formats date as a UNIX timestamp</td>
	</tr>
	<tr>
		<td>22</td>
		<td>HOUR()</td>
		<td>Extracts the hour</td>
	</tr>
	<tr>
		<td>23</td>
		<td>LAST_DAY</td>
		<td>Returns the last day of the month for the argument</td>
	</tr>
	<tr>
		<td>24</td>
		<td>LOCALTIME(), LOCALTIME</a></td>
		<td>Synonym for NOW()</td>
	</tr>
	<tr>
		<td>25</td>
		<td>LOCALTIMESTAMP, LOCALTIMESTAMP()</td>
		<td>Synonym for NOW()</td>
	</tr>
	<tr>
		<td>26</td>
		<td>MAKEDATE()</a></td>
		<td>Creates a date from the year and day of year</td>
	</tr>
	<tr>
		<td>27</td>
		<td>MAKETIME</a></td>
		<td>MAKETIME()</td>
	</tr>
	<tr>
		<td>28</td>
		<td>MICROSECOND()</a></td>
		<td>Returns the microseconds from argument</td>
	</tr>
	<tr>
		<td>29</td>
		<td>MINUTE()</a></td>
		<td>Returns the minute from the argument</td>
	</tr>
	<tr>
		<td>30</td>
		<td>MONTH()</a></td>
		<td>Return the month from the date passed</td>
	</tr>
	<tr>
		<td>31</td>
		<td>MONTHNAME()</a></td>
		<td>Returns the name of the month</td>
	</tr>
	<tr>
		<td>32</td>
		<td>NOW()</a></td>
		<td>Returns the current date and time</td>
	</tr>
	<tr>
		<td>33</td>
		<td>PERIOD_ADD()</a></td>
		<td>Adds a period to a year-month</td>
	</tr>
	<tr>
		<td>34</td>
		<td>PERIOD_DIFF()</a></td>
		<td>Returns the number of months between periods</td>
	</tr>
	<tr>
		<td>35</td>
		<td>QUARTER()</a></td>
		<td>Returns the quarter from a date argument</td>
	</tr>
	<tr>
		<td>36</td>
		<td>SEC_TO_TIME()</a></td>
		<td>Converts seconds to 'HH:MM:SS' format</td>
	</tr>
	<tr>
		<td>37</td>
		<td>SECOND()</a></td>
		<td>Returns the second (0-59)</td>
	</tr>
	<tr>
		<td>38</td>
		<td>STR_TO_DATE()</a></td>
		<td>Converts a string to a date</td>
	</tr>
	<tr>
		<td>39</td>
		<td>SUBDATE()</td>
		<td>When invoked with three arguments a synonym for DATE_SUB()</td>
	</tr>
	<tr>
		<td>40</td>
		<td>SUBTIME()</td>
		<td>Subtracts times</td>
	</tr>
	<tr>
		<td>41</td>
		<td>SYSDATE()</td>
		<td>Returns the time at which the function executes</td>
	</tr>
	<tr>
		<td>42</td>
		<td>TIME_FORMAT()</td>
		<td>Formats as time</td>
	</tr>
	<tr>
		<td>43</td>
		<td>TIME_TO_SEC()</td>
		<td>Returns the argument converted to seconds</td>
	</tr>
	<tr>
		<td>44</td>
		<td>TIME()</td>
		<td>Extracts the time portion of the expression passed</td>
	</tr>
	<tr>
		<td>45</td>
		<td>TIMEDIFF()</td>
		<td>Subtracts time</td>
	</tr>
	<tr>
		<td>46</td>
		<td>TIMESTAMP()</td>
		<td>With a single argument, this function returns the date or  datetime expression. With two arguments, the sum of the arguments</td>
	</tr>
	<tr>
		<td>47</td>
		<td>TIMESTAMPADD()</td>
		<td>Adds an interval to a datetime expression</td>
	</tr>
	<tr>
		<td>48</td>
		<td>TIMESTAMPDIFF()</td>
		<td>Subtracts an interval from a datetime expression</td>
	</tr>
	<tr>
		<td>49</td>
		<td>TO_DAYS()</td>
		<td>Returns the date argument converted to days</td>
	</tr>
	<tr>
		<td>50</td>
		<td>UNIX_TIMESTAMP()</td>
		<td>Returns a UNIX timestamp</td>
	</tr>
	<tr>
		<td>51</td>
		<td>UTC_DATE()</td>
		<td>Returns the current UTC date</td>
	</tr>
	<tr>
		<td>52</td>
		<td>UTC_TIME()</td>
		<td>Returns the current UTC time</td>
	</tr>
	<tr>
		<td>53</td>
		<td>UTC_TIMESTAMP()</td>
		<td>Returns the current UTC date and time</td>
	</tr>
	<tr>
		<td>54</td>
		<td>WEEK()</td>
		<td>Returns the week number</td>
	</tr>
	<tr>
		<td>55</td>
		<td>WEEKDAY()</td>
		<td>Returns the weekday index</td>
	</tr>
	<tr>
		<td>56</td>
		<td>WEEKOFYEAR()</td>
		<td>Returns the calendar week of the date (1-53)</td>
	</tr>
	<tr>
		<td>57</td>
		<td>YEAR()</td>
		<td>Returns the year</td>
	</tr>
	<tr>
		<td>58</td>
		<td>YEARWEEK()</td>
		<td>Returns the year and week</td>
	</tr>
</tbody></table>
 </ion-content>
</ion-view>
