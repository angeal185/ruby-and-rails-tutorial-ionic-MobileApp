<ion-view view-title="Command Line">
<ion-content style="margin:0 12px">
<div class="col-md-7 middle-col">
<h1>Command Line Options</h1>
<hr>
<p>Ruby is generally run from the command line in the following way:</p>
<pre class="prettyprint notranslate">$ ruby [ options ] [.] [ programfile ] [ arguments ... ]
</pre>
<p>The interpreter can be invoked with any of the following options to control the environment and behavior of the interpreter.</p>
<table class="table table-bordered">
<tbody><tr><th>Option</th><th>Description</th></tr>
<tr><td><b>-a</b></td><td> Used with -n or -p to split each line. Check -n and -p options.</td></tr>
<tr><td><b>-c</b></td><td> Checks syntax only, without executing program.</td></tr>
<tr><td><b>-C dir</b></td><td> Changes directory before executing (equivalent to -X).</td></tr>
<tr><td><b>-d</b></td><td> Enables debug mode (equivalent to -debug).</td></tr>
<tr><td><b>-F pat</b></td><td>Specifies pat as the default separator pattern ($;) used by split.</td></tr>
<tr><td><b>-e prog</b></td><td>Specifies prog as the program from the command line. Specify multiple -e options for multiline programs.</td></tr>
<tr><td><b>-h</b></td><td> Displays an overview of command-line options.</td></tr>
<tr><td><b>-i [ ext]</b></td><td> Overwrites the file contents with program output. The original file is saved with the
extension ext. If ext isn't specified, the original file is deleted.</td></tr>
<tr><td><b>-I dir</b></td><td> Adds dir as the directory for loading libraries.</td></tr>
<tr><td><b>-K [ kcode]</b></td><td>Specifies the multibyte character set code (e or E for EUC (extended Unix code); s or
S for SJIS (Shift-JIS); u or U for UTF-8; and a, A, n, or N for ASCII).</td></tr>
<tr><td><b>-l</b></td><td> Enables automatic line-end processing. Chops a newline from input lines and appends a newline to output lines.</td></tr>
<tr><td><b>-n</b></td><td> Places code within an input loop (as in while gets; ... end).</td></tr>
<tr><td><b>-0[ octal]</b></td><td>Sets default record separator ($/) as an octal. Defaults to \0 if octal not specified.</td></tr>
<tr><td><b>-p</b></td><td> Places code within an input loop. Writes $_ for each iteration.</td></tr>
<tr><td><b>-r lib</b></td><td> Uses <i>require</i> to load <i>lib</i> as a library before executing.</td></tr>
<tr><td><b>-s</b></td><td> Interprets any arguments between the program name and filename arguments fitting
the pattern -xxx as a switch and defines the corresponding variable.</td></tr>
<tr><td><b>-T [level]</b></td><td> Sets the level for tainting checks (1 if level not specified).</td></tr>
<tr><td><b>-v</b></td><td> Displays version and enables verbose mode</td></tr>
<tr><td><b>-w</b></td><td> Enables verbose mode. If programfile not specified, reads from STDIN.</td></tr>
<tr><td><b>-x [dir]</b></td><td> Strips text before #!ruby line. Changes directory to <i>dir</i> before executing if <i>dir</i> is
specified.</td></tr>
<tr><td><b>-X dir</b></td><td> Changes directory before executing (equivalent to -C).</td></tr>
<tr><td><b>-y</b></td><td> Enables parser debug mode.</td></tr>
<tr><td><b>--copyright</b></td><td> Displays copyright notice.</td></tr>
<tr><td><b>--debug</b></td><td> Enables debug mode (equivalent to -d).</td></tr>
<tr><td><b>--help</b></td><td> Displays an overview of command-line options (equivalent to -h).</td></tr>
<tr><td><b>--version</b></td><td> Displays version.</td></tr>
<tr><td><b>--verbose</b></td><td> Enables verbose mode (equivalent to -v). Sets $VERBOSE to true</td></tr>
<tr><td><b>--yydebug</b></td><td> Enables parser debug mode (equivalent to -y).</td></tr>
</tbody></table>
<p>Single character command-line options can be combined. The following two lines express the same meaning:</p>
<pre class="result notranslate prettyprint">$ruby -ne 'print if /Ruby/' /usr/share/bin
   
$ruby -n -e 'print if /Ruby/' /usr/share/bin
</pre>
</div>
</ion-content>
</ion-view>