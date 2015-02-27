establish
========

Operating System agnostic dependency management.

Currently supporting: Mac and Debian

*Note: This project is still in early dev stages.*  

depends.sh
==========
`depends.sh` is the file that establish uses to know what dependencies
you have. It will load that file, load any recursive dependencies and
then install them. 


Usage
-----
  - Get establish on your machine: `git clone
    https://github.com/andrewhood125/establish`
  - Run `./establish.sh /some-path/depends.sh`
