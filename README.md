### Instructions

Include the `jquery` submodule.
```sh
git submodule update --init
```

Install [NodeJS](http://nodejs.org/download) and the Grunt CLI
```sh
npm install -g grunt-cli
```

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

Visit the server at [http://192.168.50.114:8000/test/](http://192.168.50.114:8000/test/)
