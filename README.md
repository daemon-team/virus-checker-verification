virus-checker-verification
==========================

Here, we have a script that creates some test files for your virus checker.
The files created by this script don't contain real viruses. Instead, they
are variations of the [eicar](https://www.eicar.org/?page_id=3950) file. They have to
be detected as files containing viruses by your virus checker but they
will not do any harm to your system - unless someone hacked this repo
and modified the creation script, so use on your own risk!

Below, you find the results of some of my tests.
Basically, I expect that the virus checkers see the existance
of the eicar file in all of the files so I expect them to detect
a virus. Unfortunately, the results are mixed.

These are the files:

* create-virus-files.sh: A shell script containing the virus. It creates
  all the other files
* eicar.txt: A text file containing just the virus
* eicar-1k.txt: A text file containing 1k of data followed by the virus
* eicar+1k.txt: A text file containing the virus followed by 1k of data
* eicar-middle-2k.txt: A text file containing 1k of data followed by the virus followed by 1k of data
* eicar-200m.txt: A text file containing 200m of data followed by the virus
* eicar+200m.txt: A text file containing the virus followed by 200m of data
* eicar.zip: A zip file containing the virus file
* eicar.tar: A tar file containing the virus file
* eicar.tar.bz2: A compressed tar file containing the virus file
* eicar.tar.gz: A compressed tar file containing the virus file
* eicar.tar.xz: A compressed tar file containing the virus file
* eicar.tbz: A compressed tar file containing the virus file
* eicar.tgz: A compressed tar file containing the virus file
* eicar.txz: A compressed tar file containing the virus file
* eicar-hidden.zip: A zip file prepended by the virus file

Testing virustotal.com
----------------------

Filename              | Detection    | Result
----------------------|--------------|--------
create-virus-files.sh | detected     | OK
eicar.txt             | detected     | OK
eicar-1k.txt          | detected     | OK
eicar+1k.txt          | detected     | OK
eicar-middle-2k.txt   | detected     | OK
eicar-200m.txt        | detected     | OK
eicar+200m.txt        | not detected | bad
eicar.zip             | detected     | OK
eicar.tar             | detected     | OK
eicar.tar.bz2         | detected     | OK
eicar.tar.gz          | detected     | OK
eicar.tar.xz          | detected     | OK
eicar.tbz             | detected     | OK
eicar.tgz             | detected     | OK
eicar.txz             | detected     | OK
eicar-hidden.zip      | detected     | OK

Testing the CLAMAV virus checker
--------------------------------

Filename              | Detection    | Result
----------------------|--------------|--------
create-virus-files.sh | not detected | bad
eicar.txt             | detected     | OK
eicar-1k.txt          | not detected | bad
eicar+1k.txt          | not detected | bad
eicar-middle-2k.txt   | not detected | bad
eicar-200m.txt        | not detected | bad
eicar+200m.txt        | not detected | bad
eicar.zip             | detected     | OK
eicar.tar             | detected     | OK
eicar.tar.bz2         | detected     | OK
eicar.tar.gz          | detected     | OK
eicar.tar.xz          | detected     | OK
eicar.tbz             | detected     | OK
eicar.tgz             | detected     | OK
eicar.txz             | detected     | OK
eicar-hidden.zip      | not detected | bad
