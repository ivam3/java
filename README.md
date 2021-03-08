# JAVA FOR ANDROID IN TERMUX

Java is a class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let application developers write once, run anywhere (WORA), meaning that compiled Java code can run on all platforms that support Java without the need for recompilation.

This software and related documentation are provided under license agreement containing in www.java.com

# INSTALLATION.

Its installation has been simplified as much as possible and for this you will only have to execute the following commands:
        $ yes|apt update && apt upgrade && apt install git
	$ git clone https://github.com/Ivam3/java.git $HOME
	$ cd $HOME/java
	$ chmod +x setup
	$ bash setup

# USAGE.

Java needs administrator permissions(ROOT) to be executed, however it is not mandatory that the device is rooted because java works in Termux's $PREFIX environment, so if your device is not rooted you can call the fake root under the next :
        $ proot -0 -w ~ $SHELL

And then you just call java as
	$ java --help

	Usage: java [-options] class [args...]
           (to execute a class)
	or  java [-options] -jar jarfile [args...]
           (to execute a jar file)
	where options include:
	-d32          use a 32-bit data model if available
	-d64          use a 64-bit data model if available
	-server       to select the "server" VM
	              The default VM is server,
                      because you are running on a server-class machine.
	

	-cp <class search path of directories and zip/jar files>
	-classpath <class search path of directories and zip/jar files>
                      A : separated list of directories, JAR archives,
                      and ZIP archives to search for class files.
	-D<name>=<value>
                      set a system property
	-verbose:[class|gc|jni]
                      enable verbose output
	-version      print product version and exit
	-version:<value>
                      Warning: this feature is deprecated and will be removed
		      in a future release.
		      require the specified version to run
	-showversion  print product version and continue
	-jre-restrict-search | -no-jre-restrict-search
                      Warning: this feature is deprecated and will be removed
		      in a future release.
		      include/exclude user private JREs in the version search
	-? -help      print this help message
	-X            print help on non-standard options
	-ea[:<packagename>...|:<classname>]
	-enableassertions[:<packagename>...|:<classname>]
                      enable assertions with specified granularity
		      -da[:<packagename>...|:<classname>]
	-disableassertions[:<packagename>...|:<classname>]
                      disable assertions with specified granularity
	-esa | -enablesystemassertions
                      enable system assertions
	-dsa | -disablesystemassertions
                      disable system assertions
	-agentlib:<libname>[=<options>]
                      load native agent library <libname>, e.g. -agentlib:hprof
		      see also, -agentlib:jdwp=help and -agentlib:hprof=help
	-agentpath:<pathname>[=<options>]
                      load native agent library by full pathname
	-javaagent:<jarpath>[=<options>]
                      load Java programming language agent, see java.lang.instrument
	-splash:<imagepath>
                      show splash screen with specified image
	See http://www.oracle.com/technetwork/java/javase/documentation/index.html for more details.


# FEEDBACK

To get help about how to use it, join to Telegram group chat on :
        https://t.me/Ivam3byCinderella

To report some issues join to:
        https://t.me/Ivam3_Bot

Please refer to http://java.com/licensereadme

