# CHAnge

# Installation

## Installation Prerequisites

### Mac OS X

Install [RailsInstaller](http://railsinstaller.org/).

### Linux

Installation assumes the presence of [rvm](http://rvm.io) on your system. Otherwise, [install rvm first](https://rvm.io/rvm/install/).


After all prerequisites for your respective system have been met, clone the repository.

When you `cd` to the project directory, rvm will ask, "Do you wish to trust this .rvmrc file?" Respond with `yes`.

Then, from the root of the project directory:

    $ bundle install
    $ rake db:schema:load
    $ rake db:seed

Then run it:

    $ rails s

If all went well, it is now accessible from `http://localhost:3000`.
