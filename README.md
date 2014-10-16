### Dependencies

[Vagrant](https://www.vagrantup.com/downloads.html), [VirtualBox](https://www.virtualbox.org/wiki/Downloads), [NodeJS](http://nodejs.org/download), and [Grunt CLI](http://gruntjs.com/getting-started).

### Installation

```sh
# Get the latest jQuery repository.
. ./install/jquery.sh

# Start up your nginx!
vagrant up
```

Unit tests will be viewable at: [http://192.168.50.114:8000/test/](http://192.168.50.114:8000/test/)

Now just build jQuery by running `grunt`, in the `./jquery` directory, and your changes will be testable!
