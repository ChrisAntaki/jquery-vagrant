### Instructions

Include the `jquery` submodule.
```sh
git submodule update --init
```

Install [NodeJS](http://nodejs.org/download), if you haven't

Install dependencies
```sh
cd jquery
npm install
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

Start the server.
```sh
jquery serve
```
