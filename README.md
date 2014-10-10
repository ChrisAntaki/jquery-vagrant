### Instructions

Include the `www` submodule.
```sh
git submodule update --init
```

Install [Vagrant](https://www.vagrantup.com/downloads.html) and [VirtualBox](https://www.virtualbox.org/wiki/Downloads).

Start the VM. (If this is your first time, it will install & provision itself first.)
```sh
vagrant up
```

SSH into the VM.

```sh
vagrant ssh
```

Rake it up.
```sh
rake db:create
rake db:migrate
```

Start the server!
```sh
rails s
```
