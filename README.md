establish
========
Operating System agnostic dependency management.

Currently supporting: Mac and Debian

*Note: This project is still in early dev stages.*  

depends.sh
==========
`depends.sh` is the file that establish uses to know what dependencies
you have. It will load that file, load any recursive dependencies and
then install them. It has an array `deps` with space delimited strings.
You can have an optional function `_after` that runs after all your
dependencies are installed. Which is great for tasks that are only run
once. e.g. symlink your vhost
````
# My projects dependencies
deps=(composer nginx php5_fpm)

# One time setup done after I run establish
_after() {
  BASENAME=$(basename $PWD)
  sudo ln -s "${PWD}/vhost" /etc/nginx/sites-available/${BASENAME}
  sudo ln -s /etc/nginx/sites-available/${BASENAME} /etc/nginx/sites-enabled/${BASENAME}
  sudo service nginx restart
}
````

Installation
------------

`bash <(curl -sSL http://git.io/pOwC)`

Usage
-----
  - cd into your project root or anywhere `./depends.sh` exists.
  - Run `establish`


Book Code Standards
-------------------
  - Books should suppress all stdout
  - They should require no input expect for passwords
