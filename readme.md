PERL web service file manipulation project

Development Environment Setup

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
9. Install eclipse IDE (http://www.eclipse.org/downloads/)
10. Install EPIC Eclipse plugin for eclipse (http://www.epic-ide.org/download.php) - HINT: for me i had to do the "local installaiton" because
    the sourceforge based update site was not found by eclipse when I attempted the normal installation.