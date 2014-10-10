### Prerequisites

[Vagrant](https://www.vagrantup.com/downloads.html), [VirtualBox](https://www.virtualbox.org/wiki/Downloads), [NodeJS](http://nodejs.org/download), and the [Grunt CLI](http://gruntjs.com/getting-started).

### Instructions

Grab the `jquery/jquery` repository. Switch to the `master` branch. Install its dependencies. Build `jQuery` for the first time.
```sh
git submodule update --init # Clone jquery/jquery
cd jquery
git checkout master # Switch to latest branch
npm install # Install dependencies
grunt # Build jQuery
```

Start the VM. Vagrant will set up the VM if its the first run. SSH into the VM. Start the server.
```sh
vagrant up # Start the VM
vagrant ssh # SSH into the VM
jquery serve # Start server
```

Once the server is started, unit tests will be available here: [http://192.168.50.114:8000/test/](http://192.168.50.114:8000/test/)

From there, just make changes to jQuery on your host machine. The folder will automatically sync with the VM. Remember to build again with `grunt`, before testing new changes.

Enjoy!
