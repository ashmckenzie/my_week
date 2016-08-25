my_week
=======

Usage
-----

* Download the latest release from https://github.com/ashmckenzie/my_week/releases
* Unzip
* Ensure the binary has execute permissions
* Grant permissions by running the binary, vist the URL and paste in the code

```shell
$ ./my_week
Go to the following link in your browser then type the authorization code:

<BIG URL HERE>

Code:
```
* Your current week should now be displayed

Filtering
---------

By default, the following affects which meetings will be shown.  Only meetings that:

* you have accepted
* have a start and end time
* that are > 0 minutes

If you wish to filter out some meetings from being printed, you can use the `--ignore` parameter.  This will perform a regex match against the event summary.  You can specific multiple `--ignore` parameters.

Help
----

```shell
NAME:
   my_week - My week, using Google Calendar

USAGE:
   my_week [global options] command [command options] [arguments...]

VERSION:
   0.x.x

COMMANDS:
     help, h  Shows a list of commands or help for one command

GLOBAL OPTIONS:
   --ignore value  ignore events based on title [$IGNORE]
   --help, -h      show help
   --version, -v   print the version
```
