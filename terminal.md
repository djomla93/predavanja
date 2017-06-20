iOS Akademija
# Terminal

Terminal je sistemski program na Macu za ulaz u Unix - tačnije FreeBSD - svet. Gotovo sve što po netu možete naći da se odnosi na Linux uglavnom se identično koristi i na Macu, mada ponekad Apple odradi neke stvari drugačije.

Ovaj tekstualni program se različito zove i odnosi se na istu stvar: `command line` ili `terminal` ili `shell`

Par korisnih linkova:

* [The Terminal](http://furbo.org/2014/09/03/the-terminal/) 
* [Tips and Tricks for Mac Terminal](http://apple.stackexchange.com/questions/5435/got-any-tips-or-tricks-for-terminal-in-mac-os-x)

## Osnovne komande

* Home folder alias u komandnoj liniji: `~` (tzv. tilda znak)
* `$` = oznaka za shell komandnu liniju

Evo nekoliko primera uobičajenih komandi…

Trenutni folder u kome se nalazite (pwd = print working directory):

```
$ pwd
/Users/aleck
```

Listanje fajlova u tekućem folderu:

```
$ ls -l
total 0
drwxr-xr-x   38 aleck  501  1292 Sep  8 11:36 Applications
drwxr-xr-x+  12 aleck  501   408 Sep 26 13:29 Desktop
drwxrwxrwx+  41 aleck  501  1394 Oct 20  2014 Documents
drwxr-xr-x+   7 aleck  501   238 Sep 27 10:35 Downloads
drwx------@  75 aleck  501  2550 Sep 25 20:05 Dropbox
drwxr-xr-x@ 110 aleck  501  3740 Sep 21 14:41 Library
drwx------+  18 aleck  501   612 Jun 23  2015 Movies
drwxr-xr-x@   9 aleck  501   306 Oct  3  2015 Music
drwx------+  11 aleck  501   374 Sep  6 17:35 Pictures
drwxr-xr-x+   6 aleck  501   204 Sep 29  2014 Public
drwxr-xr-x+   6 aleck  501   204 Sep 29  2014 Sites
drwxr-xr-x    3 aleck  501   102 Jan 11  2014 bin
drwxr-xr-x    7 aleck  501   238 Sep 24 13:10 iosakademija
drwxr-xr-x    5 aleck  501   170 Feb 20  2013 java
drwxr-xr-x   24 aleck  501   816 May 21  2015 logs
drwxr-xr-x   59 aleck  501  2006 Sep 12 08:53 my.stuff
```

Listanje svih mogućih fajlova, uključujući i skrivene (opcija `-a`):

```
$ ls -al
total 464
drwxr-xr-x+  102 aleck  501     3468 Sep 26 13:09 .
drwxr-xr-x     8 root   admin    272 Sep 21 10:05 ..
-rw-r--r--@    1 aleck  501    43012 Sep 26 14:00 .DS_Store
drwx------     2 aleck  501       68 Sep 27 14:24 .Trash
-rw-------     1 aleck  501    12995 Sep 26 19:48 .bash_history
-rw-r--r--@    1 aleck  501      183 Oct  9  2009 .bash_login
-rw-r--r--@    1 aleck  501      637 Aug  3 18:54 .bash_profile
drwx------   275 aleck  501     9350 Sep 27 10:14 .bash_sessions
-rw-r--r--@    1 aleck  501      883 Aug 13 11:48 .bashrc
drwxr-xr-x     3 aleck  501      102 Jul 19 12:52 .cache
drwxr-xr-x     3 aleck  501      102 Sep 30  2014 .cocoapods
drwxr-xr-x     3 aleck  501      102 Aug  2 11:12 .config
-rw-r--r--     1 aleck  501     1064 Sep 23 10:39 .gitconfig
-rw-r--r--@    1 aleck  501      251 Feb 26  2016 .gitignore_global
-rw-r--r--@    1 aleck  501      694 Mar 25  2014 .lldbinit
drwxr-xr-x     3 aleck  501      102 Oct  4  2015 .local
drwx------    10 aleck  501      340 Feb 21  2016 .ssh
drwxr-xr-x    38 aleck  501     1292 Sep  8 11:36 Applications
drwxr-xr-x+   12 aleck  501      408 Sep 26 13:29 Desktop
drwxrwxrwx+   41 aleck  501     1394 Oct 20  2014 Documents
drwxr-xr-x+    7 aleck  501      238 Sep 27 10:35 Downloads
drwx------@   75 aleck  501     2550 Sep 25 20:05 Dropbox
drwxr-xr-x@  110 aleck  501     3740 Sep 21 14:41 Library
drwx------+   18 aleck  501      612 Jun 23  2015 Movies
drwxr-xr-x@    9 aleck  501      306 Oct  3  2015 Music
drwx------+   11 aleck  501      374 Sep  6 17:35 Pictures
drwxr-xr-x+    6 aleck  501      204 Sep 29  2014 Public
drwxr-xr-x+    6 aleck  501      204 Sep 29  2014 Sites
```

Ovo je komanda koju možete iskoristiti da bi videli da li u nekom folderu postoji git repo ili ne (tj. da li ima `.git`)

`.` = tekući folder
`..` = veza ka parent folderu

Prelazak u neki podfolder:

```
$ cd iosakademija
```

Kreiranje novog foldera u tekućem:

```
$ mkdir vezbe
```

