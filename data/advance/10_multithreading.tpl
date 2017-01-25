<ion-view view-title="10 - Multithreading">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Multithreading</h1>
<hr>
<p>Traditional programs have a single <i>thread of execution</i>: the statements or instructions that comprise the program are executed sequentially until the program terminates. </p>
<p>A multithreaded program has more than one thread of execution. Within each thread, statements are executed sequentially, but the threads themselves may be executed in parallel on a multicore CPU, for example. Often on a single CPU machine, multiple threads are not actually executed in parallel, but parallelism is simulated by interleaving the execution of the threads.</p>
<p>Ruby makes it easy to write multi-threaded programs with the <i>Thread</i> class. Ruby threads are a lightweight and efficient way to achieve concurrency in your code.</p>
<h2>Creating Ruby Threads:</h2>
<p>To start a new thread, just associate a block with a call to <i>Thread.new</i>. A new thread will be created to execute the code in the block, and the original thread will return from <i>Thread.new</i> immediately and resume execution with the next statement:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com"># Thread #1 is running here</span><span class="pln">
</span><span class="typ">Thread</span><span class="pun">.</span><span class="kwd">new</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
  </span><span class="com"># Thread #2 runs this code</span><span class="pln">
</span><span class="pun">}</span><span class="pln">
</span><span class="com"># Thread #1 runs this code</span></pre>
<h2>Example:</h2>
<p>Here is an example, which shows how we can use multi-threaded Ruby program.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

</span><span class="kwd">def</span><span class="pln"> func1
   i</span><span class="pun">=</span><span class="lit">0</span><span class="pln">
   </span><span class="kwd">while</span><span class="pln"> i</span><span class="pun">&lt;=</span><span class="lit">2</span><span class="pln">
      puts </span><span class="str">"func1 at: #{Time.now}"</span><span class="pln">
      sleep</span><span class="pun">(</span><span class="lit">2</span><span class="pun">)</span><span class="pln">
      i</span><span class="pun">=</span><span class="pln">i</span><span class="pun">+</span><span class="lit">1</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

</span><span class="kwd">def</span><span class="pln"> func2
   j</span><span class="pun">=</span><span class="lit">0</span><span class="pln">
   </span><span class="kwd">while</span><span class="pln"> j</span><span class="pun">&lt;=</span><span class="lit">2</span><span class="pln">
      puts </span><span class="str">"func2 at: #{Time.now}"</span><span class="pln">
      sleep</span><span class="pun">(</span><span class="lit">1</span><span class="pun">)</span><span class="pln">
      j</span><span class="pun">=</span><span class="pln">j</span><span class="pun">+</span><span class="lit">1</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

puts </span><span class="str">"Started At #{Time.now}"</span><span class="pln">
t1</span><span class="pun">=</span><span class="typ">Thread</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">{</span><span class="pln">func1</span><span class="pun">()}</span><span class="pln">
t2</span><span class="pun">=</span><span class="typ">Thread</span><span class="pun">.</span><span class="kwd">new</span><span class="pun">{</span><span class="pln">func2</span><span class="pun">()}</span><span class="pln">
t1</span><span class="pun">.</span><span class="pln">join
t2</span><span class="pun">.</span><span class="pln">join
puts </span><span class="str">"End at #{Time.now}"</span></pre>
<p>This will produce following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Started</span><span class="pln"> </span><span class="typ">At</span><span class="pln"> </span><span class="typ">Wed</span><span class="pln"> </span><span class="typ">May</span><span class="pln"> </span><span class="lit">14</span><span class="pln"> </span><span class="lit">08</span><span class="pun">:</span><span class="lit">21</span><span class="pun">:</span><span class="lit">54</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2008</span><span class="pln">
func1 at</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Wed</span><span class="pln"> </span><span class="typ">May</span><span class="pln"> </span><span class="lit">14</span><span class="pln"> </span><span class="lit">08</span><span class="pun">:</span><span class="lit">21</span><span class="pun">:</span><span class="lit">54</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2008</span><span class="pln">
func2 at</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Wed</span><span class="pln"> </span><span class="typ">May</span><span class="pln"> </span><span class="lit">14</span><span class="pln"> </span><span class="lit">08</span><span class="pun">:</span><span class="lit">21</span><span class="pun">:</span><span class="lit">54</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2008</span><span class="pln">
func2 at</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Wed</span><span class="pln"> </span><span class="typ">May</span><span class="pln"> </span><span class="lit">14</span><span class="pln"> </span><span class="lit">08</span><span class="pun">:</span><span class="lit">21</span><span class="pun">:</span><span class="lit">55</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2008</span><span class="pln">
func1 at</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Wed</span><span class="pln"> </span><span class="typ">May</span><span class="pln"> </span><span class="lit">14</span><span class="pln"> </span><span class="lit">08</span><span class="pun">:</span><span class="lit">21</span><span class="pun">:</span><span class="lit">56</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2008</span><span class="pln">
func2 at</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Wed</span><span class="pln"> </span><span class="typ">May</span><span class="pln"> </span><span class="lit">14</span><span class="pln"> </span><span class="lit">08</span><span class="pun">:</span><span class="lit">21</span><span class="pun">:</span><span class="lit">56</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2008</span><span class="pln">
func1 at</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Wed</span><span class="pln"> </span><span class="typ">May</span><span class="pln"> </span><span class="lit">14</span><span class="pln"> </span><span class="lit">08</span><span class="pun">:</span><span class="lit">21</span><span class="pun">:</span><span class="lit">58</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2008</span><span class="pln">
</span><span class="typ">End</span><span class="pln"> at </span><span class="typ">Wed</span><span class="pln"> </span><span class="typ">May</span><span class="pln"> </span><span class="lit">14</span><span class="pln"> </span><span class="lit">08</span><span class="pun">:</span><span class="lit">22</span><span class="pun">:</span><span class="lit">00</span><span class="pln"> </span><span class="pun">-</span><span class="lit">0700</span><span class="pln"> </span><span class="lit">2008</span></pre>
<h2>Thread Lifecycle:</h2>
<p>A new threads are created with <i>Thread.new</i>. You can also use the synonyms <i>Thread.start</i> and <i>Thread.fork</i>.</p>
<p>There is no need to start a thread after creating it, it begins running automatically when CPU resources become available.</p>
<p>The Thread class defines a number of methods to query and manipulate the thread while it is running. A thread runs the code in the block associated with the call to <i>Thread.new</i> and then it stops running.</p>
<p>The value of the last expression in that block is the value of the thread, and can be obtained by calling the <i>value</i> method of the Thread object. If the thread has run to completion, then the value returns the thread's value right away. Otherwise, the <i>value</i> method blocks and does not return until the thread has completed.</p>
<p>The class method <i>Thread.current</i> returns the Thread object that represents the current thread. This allows threads to manipulate themselves. The class method <i>Thread.main</i> returns the Thread object that represents the main thread. This is the initial thread of execution that began when the Ruby program was started.</p>
<p>You can wait for a particular thread to finish by calling that thread's <i>Thread.join</i> method. The calling thread will block until the given thread is finished.</p>
<h2>Threads and Exceptions:</h2>
<p>If an exception is raised in the main thread, and is not handled anywhere, the Ruby interpreter prints a message and exits. In threads other than the main thread, unhandled exceptions cause the thread to stop running.</p>
<p>If a thread t exits because of an unhandled exception, and another thread <b>s</b> calls <i>t.join or t.value,</i> then the exception that occurred in <b>t</b> is raised in the thread <b>s</b>.</p>
<p>If <i>Thread.abort_on_exception</i> is <i>false</i>, the default condition, an unhandled exception simply kills the current thread and all the rest continue to run.</p>
<p>If you would like any unhandled exception in any thread to cause the interpreter to exit, set the class method <i>Thread.abort_on_exception</i> to <i>true</i>.</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">t </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Thread</span><span class="pun">.</span><span class="kwd">new</span><span class="pln"> </span><span class="pun">{</span><span class="pln"> </span><span class="pun">...</span><span class="pln"> </span><span class="pun">}</span><span class="pln">
t</span><span class="pun">.</span><span class="pln">abort_on_exception </span><span class="pun">=</span><span class="pln"> </span><span class="kwd">true</span></pre>
<h2>Thread Variables:</h2>
<p>A thread can normally access any variables that are in scope when the thread is created. Variables local to the block of a thread are local to the thread, and are not shared.</p>
<p>Thread class features a special facility that allows thread-local variables to be created and accessed by name. You simply treat the thread object as if it were a Hash, writing to elements using []= and reading them back using [].</p>
<p>In this example, each thread records the current value of the variable count in a threadlocal variable with the key <i>mycount</i>.</p>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

count </span><span class="pun">=</span><span class="pln"> </span><span class="lit">0</span><span class="pln">
arr </span><span class="pun">=</span><span class="pln"> </span><span class="pun">[]</span><span class="pln">

</span><span class="lit">10.times</span><span class="pln"> </span><span class="kwd">do</span><span class="pln"> </span><span class="pun">|</span><span class="pln">i</span><span class="pun">|</span><span class="pln">
   arr</span><span class="pun">[</span><span class="pln">i</span><span class="pun">]</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Thread</span><span class="pun">.</span><span class="kwd">new</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
      sleep</span><span class="pun">(</span><span class="pln">rand</span><span class="pun">(</span><span class="lit">0</span><span class="pun">)/</span><span class="lit">10.0</span><span class="pun">)</span><span class="pln">
      </span><span class="typ">Thread</span><span class="pun">.</span><span class="pln">current</span><span class="pun">[</span><span class="str">"mycount"</span><span class="pun">]</span><span class="pln"> </span><span class="pun">=</span><span class="pln"> count
      count </span><span class="pun">+=</span><span class="pln"> </span><span class="lit">1</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">

arr</span><span class="pun">.</span><span class="pln">each </span><span class="pun">{|</span><span class="pln">t</span><span class="pun">|</span><span class="pln"> t</span><span class="pun">.</span><span class="pln">join</span><span class="pun">;</span><span class="pln"> </span><span class="kwd">print</span><span class="pln"> t</span><span class="pun">[</span><span class="str">"mycount"</span><span class="pun">],</span><span class="pln"> </span><span class="str">", "</span><span class="pln"> </span><span class="pun">}</span><span class="pln">
puts </span><span class="str">"count = #{count}"</span></pre>
<p>This produces the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="lit">8</span><span class="pun">,</span><span class="pln"> </span><span class="lit">0</span><span class="pun">,</span><span class="pln"> </span><span class="lit">3</span><span class="pun">,</span><span class="pln"> </span><span class="lit">7</span><span class="pun">,</span><span class="pln"> </span><span class="lit">2</span><span class="pun">,</span><span class="pln"> </span><span class="lit">1</span><span class="pun">,</span><span class="pln"> </span><span class="lit">6</span><span class="pun">,</span><span class="pln"> </span><span class="lit">5</span><span class="pun">,</span><span class="pln"> </span><span class="lit">4</span><span class="pun">,</span><span class="pln"> </span><span class="lit">9</span><span class="pun">,</span><span class="pln"> count </span><span class="pun">=</span><span class="pln"> </span><span class="lit">10</span></pre>
<p>The main thread waits for the subthreads to finish and then prints out the value of <i>count</i> captured by each.</p>
<h2>Thread Priorities:</h2>
<p>The first factor that affects thread scheduling is thread priority: high-priority threads are scheduled before low-priority threads. More precisely, a thread will only get CPU time if there are no higher-priority threads waiting to run.</p>
<p>You can set and query the priority of a Ruby Thread object with <i>priority=</i> and <i>priority</i>.  A newly created thread starts at the same priority as the thread that created it. The main thread starts off at priority 0.</p>
<p>There is no way to set the priority of a thread before it starts running. A thread can, however, raise or lower its own priority as the first action it takes.</p>
<h2>Thread Exclusion:</h2>
<p>If two threads share access to the same data, and at least one of the threads modifies that data, you must take special care to ensure that no thread can ever see the data in an inconsistent state. This is called <i>thread exclusion</i>.</p>
<p><b>Mutex</b> is a class that implements a simple semaphore lock for mutually exclusive access to some shared resource. That is, only one thread may hold the lock at a given time. Other threads may choose to wait in line for the lock to become available, or may simply choose to get an immediate error indicating that the lock is not available.</p>
<p>By placing all accesses to the shared data under control of a <i>mutex</i>, we ensure consistency and atomic operation. Let's try to examples, first one without mutax and second one with mutax:</p>
<h2>Example without Mutax:</h2>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">
</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'thread'</span><span class="pln">

count1 </span><span class="pun">=</span><span class="pln"> count2 </span><span class="pun">=</span><span class="pln"> </span><span class="lit">0</span><span class="pln">
difference </span><span class="pun">=</span><span class="pln"> </span><span class="lit">0</span><span class="pln">
counter </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Thread</span><span class="pun">.</span><span class="kwd">new</span><span class="pln"> </span><span class="kwd">do</span><span class="pln">
   loop </span><span class="kwd">do</span><span class="pln">
      count1 </span><span class="pun">+=</span><span class="pln"> </span><span class="lit">1</span><span class="pln">
      count2 </span><span class="pun">+=</span><span class="pln"> </span><span class="lit">1</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
spy </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Thread</span><span class="pun">.</span><span class="kwd">new</span><span class="pln"> </span><span class="kwd">do</span><span class="pln">
   loop </span><span class="kwd">do</span><span class="pln">
      difference </span><span class="pun">+=</span><span class="pln"> </span><span class="pun">(</span><span class="pln">count1 </span><span class="pun">-</span><span class="pln"> count2</span><span class="pun">).</span><span class="pln">abs
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
sleep </span><span class="lit">1</span><span class="pln">
puts </span><span class="str">"count1 :  #{count1}"</span><span class="pln">
puts </span><span class="str">"count2 :  #{count2}"</span><span class="pln">
puts </span><span class="str">"difference : #{difference}"</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">count1 </span><span class="pun">:</span><span class="pln">  </span><span class="lit">1583766</span><span class="pln">
count2 </span><span class="pun">:</span><span class="pln">  </span><span class="lit">1583766</span><span class="pln">
difference </span><span class="pun">:</span><span class="pln"> </span><span class="lit">637992</span></pre>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">
</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'thread'</span><span class="pln">
mutex </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Mutex</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">

count1 </span><span class="pun">=</span><span class="pln"> count2 </span><span class="pun">=</span><span class="pln"> </span><span class="lit">0</span><span class="pln">
difference </span><span class="pun">=</span><span class="pln"> </span><span class="lit">0</span><span class="pln">
counter </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Thread</span><span class="pun">.</span><span class="kwd">new</span><span class="pln"> </span><span class="kwd">do</span><span class="pln">
   loop </span><span class="kwd">do</span><span class="pln">
      mutex</span><span class="pun">.</span><span class="pln">synchronize </span><span class="kwd">do</span><span class="pln">
         count1 </span><span class="pun">+=</span><span class="pln"> </span><span class="lit">1</span><span class="pln">
         count2 </span><span class="pun">+=</span><span class="pln"> </span><span class="lit">1</span><span class="pln">
      </span><span class="kwd">end</span><span class="pln">
    </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
spy </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Thread</span><span class="pun">.</span><span class="kwd">new</span><span class="pln"> </span><span class="kwd">do</span><span class="pln">
   loop </span><span class="kwd">do</span><span class="pln">
       mutex</span><span class="pun">.</span><span class="pln">synchronize </span><span class="kwd">do</span><span class="pln">
          difference </span><span class="pun">+=</span><span class="pln"> </span><span class="pun">(</span><span class="pln">count1 </span><span class="pun">-</span><span class="pln"> count2</span><span class="pun">).</span><span class="pln">abs
       </span><span class="kwd">end</span><span class="pln">
   </span><span class="kwd">end</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
sleep </span><span class="lit">1</span><span class="pln">
mutex</span><span class="pun">.</span><span class="kwd">lock</span><span class="pln">
puts </span><span class="str">"count1 :  #{count1}"</span><span class="pln">
puts </span><span class="str">"count2 :  #{count2}"</span><span class="pln">
puts </span><span class="str">"difference : #{difference}"</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">count1 </span><span class="pun">:</span><span class="pln">  </span><span class="lit">696591</span><span class="pln">
count2 </span><span class="pun">:</span><span class="pln">  </span><span class="lit">696591</span><span class="pln">
difference </span><span class="pun">:</span><span class="pln"> </span><span class="lit">0</span></pre>
<h2>Handling Deadlock:</h2>
<p>When we start using <i>Mutex</i> objects for thread exclusion we must be careful to avoid <i>deadlock</i>. Deadlock is the condition that occurs when all threads are waiting to acquire a resource held by another thread. Because all threads are blocked, they cannot release the locks they hold. And because they cannot release the locks, no other thread can acquire those locks.</p>
<p>This is where <i>condition variables</i> come into picture. A <i>condition variable</i> is simply a semaphore that is associated with a resource and is used within the protection of a particular <i>mutex</i>. When you need a resource that's unavailable, you wait on a condition variable. That action releases the lock on the corresponding <i>mutex</i>. When some other thread signals that the resource is available, the original thread comes off the wait and simultaneously regains the lock on the critical region.</p>
<h2>Example:</h2>
<pre class="prettyprint notranslate tryit prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">
</span><span class="kwd">require</span><span class="pln"> </span><span class="str">'thread'</span><span class="pln">
mutex </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Mutex</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">

cv </span><span class="pun">=</span><span class="pln"> </span><span class="typ">ConditionVariable</span><span class="pun">.</span><span class="kwd">new</span><span class="pln">
a </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Thread</span><span class="pun">.</span><span class="kwd">new</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
   mutex</span><span class="pun">.</span><span class="pln">synchronize </span><span class="pun">{</span><span class="pln">
      puts </span><span class="str">"A: I have critical section, but will wait for cv"</span><span class="pln">
      cv</span><span class="pun">.</span><span class="pln">wait</span><span class="pun">(</span><span class="pln">mutex</span><span class="pun">)</span><span class="pln">
      puts </span><span class="str">"A: I have critical section again! I rule!"</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
</span><span class="pun">}</span><span class="pln">

puts </span><span class="str">"(Later, back at the ranch...)"</span><span class="pln">

b </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Thread</span><span class="pun">.</span><span class="kwd">new</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
   mutex</span><span class="pun">.</span><span class="pln">synchronize </span><span class="pun">{</span><span class="pln">
      puts </span><span class="str">"B: Now I am critical, but am done with cv"</span><span class="pln">
      cv</span><span class="pun">.</span><span class="pln">signal
      puts </span><span class="str">"B: I am still critical, finishing up"</span><span class="pln">
   </span><span class="pun">}</span><span class="pln">
</span><span class="pun">}</span><span class="pln">
a</span><span class="pun">.</span><span class="pln">join
b</span><span class="pun">.</span><span class="pln">join</span></pre>
<p>This will produce the following result:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="pln">A</span><span class="pun">:</span><span class="pln"> I have critical section</span><span class="pun">,</span><span class="pln"> but will wait </span><span class="kwd">for</span><span class="pln"> cv
</span><span class="pun">(</span><span class="typ">Later</span><span class="pun">,</span><span class="pln"> back at the ranch</span><span class="pun">...)</span><span class="pln">
B</span><span class="pun">:</span><span class="pln"> </span><span class="typ">Now</span><span class="pln"> I am critical</span><span class="pun">,</span><span class="pln"> but am </span><span class="kwd">done</span><span class="pln"> </span><span class="kwd">with</span><span class="pln"> cv
B</span><span class="pun">:</span><span class="pln"> I am still critical</span><span class="pun">,</span><span class="pln"> finishing up
A</span><span class="pun">:</span><span class="pln"> I have critical section again</span><span class="pun">!</span><span class="pln"> I rule</span><span class="pun">!</span></pre>
<h2>Thread States:</h2>
<p>There are five possible return values corresponding to the five possible states as shown in the following table.  The <i>status</i> method returns the state of the thread.</p>
<table class="table table-bordered">
<tbody><tr><th style="width:50%">Thread state</th><th>Return value</th></tr>
<tr><td>Runnable</td><td>run</td></tr>
<tr><td>Sleeping</td><td>Sleeping</td></tr>
<tr><td>Aborting</td><td>aborting</td></tr>
<tr><td>Terminated normally</td><td>false </td></tr>
<tr><td>Terminated with exception</td><td>nil </td></tr>
</tbody></table>
<h2>Thread Class Methods:</h2>
<p>Following methods are provided by <i>Thread</i> class  and they are applicable to all the threads available in the program. These methods will be called as using <i>Thread</i> class name as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="typ">Thread</span><span class="pun">.</span><span class="pln">abort_on_exception </span><span class="pun">=</span><span class="pln"> </span><span class="kwd">true</span></pre>
<p>Here is complete list of all the class methods available:</p>
<table class="table table-bordered">
<tbody><tr><th style="width:5%">SN</th><th>Methods with Description</th></tr>
<tr><td>1</td><td><b>Thread.abort_on_exception</b><p></p>Returns the status of the global <i>abort on exception</i> condition. The default is <i>false</i>. When set to <i>true</i>, will cause all threads to abort (the process will exit(0)) if an exception is raised in any thread.<p></p></td></tr>
<tr><td>2</td><td><b>Thread.abort_on_exception=</b><p></p>When set to <i>true</i>, all threads will abort if an exception is raised. Returns the new state.<p></p></td></tr>
<tr><td>3</td><td><b>Thread.critical</b><p></p>Returns the status of the global <i>thread critical</i> condition.<p></p></td></tr>
<tr><td>4</td><td><b>Thread.critical=</b><p></p>Sets the status of the global <i>thread critical</i> condition and returns it. When set to <i>true</i>, prohibits scheduling of any existing thread. Does not block new threads from being created and run. Certain thread operations (such as stopping or killing a thread, sleeping in the current thread, and raising an exception) may cause a thread to be scheduled even when in a critical section.<p></p></td></tr>
<tr><td>5</td><td><b>Thread.current</b><p></p>Returns the currently executing thread.<p></p></td></tr>
<tr><td>6</td><td><b>Thread.exit</b><p></p>Terminates the currently running thread and schedules another thread to be run. If this thread is already marked to be killed, <i>exit</i> returns the <i>Thread.</i> If this is the main thread, or the last thread, exit the process.<p></p></td></tr>
<tr><td>7</td><td><b>Thread.fork { block }</b><p></p>Synonym for Thread.new .<p></p></td></tr>
<tr><td>8</td><td><b>Thread.kill( aThread )</b><p></p>Causes the given <i>aThread</i> to exit<p></p></td></tr>
<tr><td>9</td><td><b>Thread.list</b><p></p>Returns an array of <i>Thread</i> objects for all threads that are either runnable or stopped. Thread.<p></p></td></tr>
<tr><td>10</td><td><b>Thread.main</b><p></p>Returns the main thread for the process.<p></p></td></tr>
<tr><td>11</td><td><b>Thread.new( [ arg ]* ) {| args | block }</b><p></p>Creates a new thread to execute the instructions given in block, and begins running it. Any arguments passed to <i>Thread.new</i> are passed into the block.<p></p></td></tr>
<tr><td>12</td><td><b>Thread.pass</b><p></p>Invokes the thread scheduler to pass execution to another thread.<p></p></td></tr>
<tr><td>13</td><td><b>Thread.start( [ args ]* ) {| args | block }</b><p></p>Basically the same as <i>Thread.new</i> . However, if class <i>Thread</i> is subclassed, then calling <i>start</i> in that subclass will not invoke the subclass's <i>initialize</i> method.<p></p></td></tr>
<tr><td>14</td><td><b>Thread.stop</b><p></p>Stops execution of the current thread, putting it into a <i>sleep</i> state, and schedules execution of another thread. Resets the <i>critical</i> condition to false.<p></p></td></tr>
</tbody></table>
<h2>Thread Instance Methods:</h2>
<p>These methods are applicable to an instance of a thread. These methods will be called as using an instance of a  <i>Thread</i> as follows:</p>
<pre class="prettyprint notranslate prettyprinted"><span class="com">#!/usr/bin/ruby</span><span class="pln">

thr </span><span class="pun">=</span><span class="pln"> </span><span class="typ">Thread</span><span class="pun">.</span><span class="kwd">new</span><span class="pln"> </span><span class="kwd">do</span><span class="pln">   </span><span class="com"># Calling a class method </span><i><span class="com">new</span></i><span class="pln">
   puts </span><span class="str">"In second thread"</span><span class="pln">
   </span><span class="kwd">raise</span><span class="pln"> </span><span class="str">"Raise exception"</span><span class="pln">
</span><span class="kwd">end</span><span class="pln">
thr</span><span class="pun">.</span><span class="pln">join   </span><span class="com"># Calling an instance method </span><i><span class="com">join</span></i>
</pre>
<p>Here is complete list of all the instance methods available:</p>
<table class="table table-bordered">
<tbody><tr><th style="width:5%">SN</th><th>Methods with Description</th></tr>
<tr><td>1</td><td><b>thr[ aSymbol ]</b><p></p>Attribute Reference - Returns the value of a thread-local variable, using either a
symbol or a <i>aSymbol</i> name. If the specified variable does not exist, returns <i>nil</i>.<p></p></td></tr>
<tr><td>2</td><td><b>thr[ aSymbol ] =</b><p></p>Attribute Assignment - Sets or creates the value of a thread-local variable, using
either a symbol or a string.<p></p></td></tr>
<tr><td>3</td><td><b>thr.abort_on_exception</b><p></p>Returns the status of the <i>abort on exception</i> condition for <i>thr</i>. The default is <i>false</i>.<p></p></td></tr>
<tr><td>4</td><td><b>thr.abort_on_exception=</b><p></p>When set to <i>true</i>, causes all threads (including the main program) to abort if an exception is raised in <i>thr</i>. The process will effectively <i>exit(0)</i>.<p></p></td></tr>
<tr><td>5</td><td><b>thr.alive?</b><p></p>Returns <i>true</i> if <i>thr</i> is running or sleeping.<p></p></td></tr>
<tr><td>6</td><td><b>thr.exit</b><p></p>Terminates <i>thr</i> and schedules another thread to be run. If this thread is already
marked to be killed, <i>exit</i> returns the <i>Thread</i>. If this is the main thread, or the last thread, exits the process.<p></p></td></tr>
<tr><td>7</td><td><b>thr.join</b><p></p>The calling thread will suspend execution and run <i>thr</i>. Does not return until <i>thr</i> exits. Any threads not joined will be killed when the main program exits.<p></p></td></tr>
<tr><td>8</td><td><b>thr.key?</b><p></p>Returns <i>true</i> if the given string (or symbol) exists as a thread-local variable.<p></p></td></tr>
<tr><td>9</td><td><b>thr.kill</b><p></p>Synonym for <i>Thread.exit</i> .<p></p></td></tr>
<tr><td>10</td><td><b>thr.priority</b><p></p>Returns the priority of <i>thr</i>. Default is zero; higher-priority threads will run before lower priority threads.<p></p></td></tr>
<tr><td>11</td><td><b>thr.priority=</b><p></p>Sets the priority of <i>thr</i> to an Integer. Higher-priority threads will run before lower priority threads.<p></p></td></tr>
<tr><td>12</td><td><b>thr.raise( anException )</b><p></p>Raises an exception from <i>thr</i>. The caller does not have to be <i>thr</i>.<p></p></td></tr>
<tr><td>13</td><td><b>thr.run</b><p></p>Wakes up <i>thr</i>, making it eligible for scheduling. If not in a critical section, then invokes the scheduler.<p></p></td></tr>
<tr><td>14</td><td><b>thr.safe_level</b><p></p>Returns the safe level in effect for <i>thr</i>.<p></p></td></tr>
<tr><td>15</td><td><b>thr.status</b><p></p>Returns the status of <i>thr</i>: <i>sleep</i> if <i>thr</i> is sleeping or waiting on I/O, <i>run</i> if <i>thr</i> is executing, false if <i>thr</i> terminated normally, and <i>nil</i> if <i>thr</i> terminated with an exception.<p></p></td></tr>
<tr><td>16</td><td><b>thr.stop?</b><p></p>Returns <i>true</i> if <i>thr</i> is dead or sleeping.<p></p></td></tr>
<tr><td>17</td><td><b>thr.value</b><p></p>Waits for thr to complete via <i>Thread.join</i> and returns its value.<p></p></td></tr>
<tr><td>18</td><td><b>thr.wakeup</b><p></p>Marks <i>thr</i> as eligible for scheduling, it may still remain blocked on I/O, however.<p></p></td></tr>
</tbody></table>
</ion-content>
</ion-view>
