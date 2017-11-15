# New Mac Setup

## 1. Install dotfiles

```
$ git --work-tree=$HOME --git-dir=$HOME/dotfiles.git init
$ cd dotfiles.git
$ git remote add origin https://github.com/hunterloftis/dotfiles.git
$ git pull origin master
```

## 2. Configure OSX, apps, iCloud

```
$ cd ~/scripts
$ ./mac.sh
$ ./apps.sh
```

Then, follow the automatic prompt for your Apple ID and install any app-store apps you want to migrate over.
Be sure that one of the apps is 1Password.

## 4. Sync logins

Open 1Password and enable iCloud sync.
Then, copy ssh keys into ~/.ssh

## 5. Restart

Restart the machine and log-in!