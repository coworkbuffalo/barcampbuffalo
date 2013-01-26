# BarcampBuffalo

Quick little Rails app for BarCampBuffalo 2012.

## Setup

Requires rbenv and PostgreSQL. For the homebrewers out there:

    brew install ruby-build
    # Make sure you follow the instructions for rbenv. At the very least, add eval "$(rbenv init -)" to your ~/.bash_profile 
    brew install rbenv
    # Make sure postgresql is actually running after this.
    brew install postgresql


If you don't already use pow:

    curl get.pow.cx | sh

Run the following:

    rbenv install 1.9.3-p327
    ln -s ~/Dev/barcampbuffalo ~/.pow/barcampbuffalo
    ./script/setup

Open it up!

    open http://barcampbuffalo.dev

## License

See `MIT-LICENSE`.
