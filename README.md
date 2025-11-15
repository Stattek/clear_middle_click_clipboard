# clear_middle_click_clipboard

**This program only works for distributions using X11**.

This program is a lightweight solution to clear the middle click clipboard upon a clipboard event.
If you do not like the behavior of middle click on Linux, it is not easy to disable, and you are
often at the mercy of the developers of other programs to allow you to disable it.

This program allows you to always have a clear middle click (aka "primary") clipboard at all times.

## Building Prerequisites

Building prerequisites to run this script can be done from in this directory and running `make setup`.
This should install all of the necessary dependencies. So far, only Ubuntu-based and Fedora-based
distributions are supported.

Running the program can be done with `make run` or `./clear_middle_click_clipboard.sh`.
It should be easy to run this script upon starting up your machine. Most Linux distributions allow
you to specify commands to run upon startup.

