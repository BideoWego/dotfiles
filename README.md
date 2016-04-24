# Dotfiles

```
This is my dot files Github repository.
There are many like it, but this one is mine.
My dot files Github repository is my best friend.
It is my life.
I must master it as I must master my life.
My dot files Github repository, without me, is useless.
Without my dot files Github repository, I am useless.
```

There's no place like `~`.

by [Bideo Wego](https://github/com/BideoWego)



## Installation

All contents of this repo go in your `~` folder. The included `.bashrc` will load files from the `.bash/` directory.


## Using with Git


The `.bash/functions.sh` file gives you a new command `$ githome` to which you can pass `enable` or `disable`.

**Why?**

This allows you to enable/disable the `~` directory as a git repo so it does not effect nested repos.


Here is the bash function that enables this:


```bash
function githome {
  if [ $1 ]; then
    if [ $1 == 'disable' ]; then
      mv ~/.git ~/.git_
      mv ~/.gitignore ~/.gitignore_
    elif [ $1 == 'enable' ]; then
      mv ~/.git_ ~/.git
      mv ~/.gitignore_ ~/.gitignore
    else
      echo "Unrecognized argument value $1, please specify 'enable' or 'disable'"
    fi
  else
    echo "Please specify 'enable' or 'disable'"
  fi
}
alias githome='githome'
```

And call it like this:

```shell
$ githome enable
$ githome disable
```

Under the hood, this renames the `.git/` folder and `.gitignore` file to be appended with an `_`. Thus, making them invisible as a repo and invisible to ignore files of nested repos.

Once enabled, the `.gitignore` file ignores `*` by default so your nested repos and entire `~` folder will not be checked into the repository.

The result is an organized method to version control your `~` folder dotfiles.


Enjoy!

## License

This software is offered under the MIT License.


## 

TODO: Make into Git plugin
- [Create a Git Plugin 1](https://adamcod.es/2013/07/12/how-to-create-git-plugin.html)
- [Create a Git Plugin 2](https://adamcod.es/2013/07/19/how-to-create-git-plugin-part2.html)
- [Extend Git](http://blogs.atlassian.com/2013/04/extending-git/)









