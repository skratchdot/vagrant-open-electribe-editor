# vagrant-open-electribe-editor

I've had a few people report that they are having issues installing
java, or getting Open Electribe Editor to work properly.

This may not help, but it is a version of the program that runs in a
virtual machine.  You'll need to download the 2 requirements listed
below, as well as download the Vagrantfile from this project.


## Pre-Requisites

You will need to install the following 2 programs:

- [vagrant](http://www.vagrantup.com/downloads.html)
- [virtualbox](https://www.virtualbox.org/wiki/Downloads)


## Installation

Install this project by downloading the .zip file:

- [vagrant-open-electribe-editor.zip](https://github.com/skratchdot/vagrant-open-electribe-editor/archive/master.zip)

Or if you have git installed, by running this:

```bash
git clone git://github.com/skratchdot/vagrant-open-electribe-editor
```

Once you've obtained the project, use your command line to start the VM:

```bash
cd vagrant-open-electribe-editor
vagrant up
```

**NOTE:**  
This will a long time (the first time you run it), because it will need to download
a few big files when setting up the VM.  Once the VM is finished being created, you
will have a Linux VM with Open Electribe Editor installed.  The VM will have access
to the same folder that the Vagrant file is in, so you will need to put your .esx files
there (when opening/saving).


## Login Information

    username: vagrant
    password: vagrant


## `vagrant up` notes

When you start the VM, the following actions are taken:

1. Ubuntu 12.04 is downloaded (if it doesn't already exist)
2. Ubuntu is updated.
3. The Ubuntu GUI is installed
4. Java is installed
5. Open Electribe Editor is installed
6. Shortcuts are created on the desktop

