PERL web service file manipulation project
------------------------------------------

# Development Environment Setup

1. Clone the github repo
2. Install perlbrew to allow you to manage multiple versions of perl (http://perlbrew.pl/)
3. See what versions of perl are available:
	```
	perl tsullivan$ perlbrew available
	i perl-5.23.0
	  perl-5.22.0
	  perl-5.20.2
	  perl-5.18.4
	  perl-5.16.3
	  perl-5.14.4
	  perl-5.12.5
	  perl-5.10.1
	  perl-5.8.9
	  perl-5.6.2
	  perl5.005_04
	  perl5.004_05
	  perl5.003_07
	```  

4. Install one or more version(s) of perl
	```
	perlbrew install perl-5.23.0
	```

4. Switch into an "isolated perl sandbox" with the version you want
	```
	perlbrew switch perl-5.23.0
	```

5. Install the cpanm perl package management tool (this command auto installs it across all perlbrew managed perl versions)
	
	```
	perlbrew install-cpanm
	```

6. Install PadWalker to get debugging support in EPIC  (the Eclipse Perl IDE) using the cpanm perl package management tool 

	```
	cpanm PadWalker
	```

7. Install jEnv which enables management of multiple versions of Java (http://www.jenv.be/)
8. Use jEnv to install the appropriate version of Java needed to run eclipse (at time of this writing it was Java 7)
9. Install eclipse IDE (http://www.eclipse.org/downloads/) - needed version 3.7.2 to get EPIC to work
10. Install EPIC Eclipse plugin for eclipse (http://www.epic-ide.org/download.php) - HINT: for me i had to do the "local installaiton" because
    the sourceforge based update site was not found by eclipse when I attempted the normal installation.


# Working with modules

Let's practice creating and testing a cpanm compatible perl package. Then we will learn about
how to write better tests, and then implement code that causes the tests to pass! So below is 
the setup for that. Eventually we will want each perl package to have its own github repo
and be the "root" of the project. So ideally we should fix the folder structure and check that in
to github. 

1. Install Module::Starter
	```
	cpanm Module::Starter
	```
	This installs a package which includes a command line tool, module-starter, which can be used
	to create perl modules that are compatible with cpanm. 

2. Generate a module (use your own name)
	```
	module-starter --module=TommySullivan::FirstModule --author="Tommy Sullivan" --email="tom@tommysullivan.me"

	```
	
3. There should be a new directory for the module (you may need to right click and refresh in eclpise to see it)
 	CD into that directory
 	
4. Generate a makefile for your system
	```
	perl Makefile.pl
	```
	
5. Build your module
	```
	make
	```

6. Test your module
	```
	make test
	```

7. Install your module
	```
	make install
	```
	

# Debugging with Eclipse

1. Set a breakpoint by double clicking on the gray vertical bar to the left side of your perl source code
2. Right click the perl file in the navigator and select "debug as..." to debug through the file.
3. Find "debug configurations" to change settings (like environment variables, arguments, etc) that should be passed by eclipse
	when you run the program
4. In the debugging view, there is a little down carat icon, click it and check "show global variables" so you can see values.


# Travis CI

TODO: We will want to hook travis CI up to our github project once we have passing tests in the right folder
of the repository. This will cause builds to happen upon checkin and anyone can see the build history and the 
test pass / fail history as well as the current status of the repo (is it in a tests passing state?)

