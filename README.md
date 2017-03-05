## About
**binstall** is a command that does exactly what you would think: it takes a
filename (e.g. binary or script) and makes a link in `/usr/local/bin`. It will
also remove a file from `/usr/local/bin` when passed the `-r` option.

## Install
In a twist of recursive fate, we will use **binstall** to install **binstall**.
First we need to clone the source, `cd` into the repo, and then install:

```
$ git clone https://github.com/RagingTiger/binstall
$ cd binstall
$ ./binstall.sh binstall.sh
```

## Usage
Now at the command line you will be able to call the **binstall** command:

```
$ binstall <your_program>
```

And you will see your program in `/usr/local/bin`:

```
$ which your_program
/usr/local/bin/your_program
```

Also, if you would like the file in `/usr/local/bin` to be named something other
than `your_program`, simply pass the name as the second argument:

```
$ binstall <your_program> <prog_name>
```

This results in a program named `prog_name` being located in `/usr/local/bin`,
but linking to the file `your_program`

```
$ which prog_name
/usr/local/bin/prog_name
```

## Uninstall
Finally, should you want to delete `prog_name` simply use the `-r` option:

```
$ binstall -r prog_name
```
