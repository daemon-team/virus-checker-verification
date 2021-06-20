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
