#!/bin/sh
sudo apt-get -y install git-core curl zlib1g-dev build-essential \
    libssl-dev libreadline-dev libyaml-dev libsqlite3-dev \
    sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev \
    python-software-properties libffi-dev

wget http://ftp.ruby-lang.org/pub/ruby/2.2/ruby-2.2.3.tar.gz
tar -xzf ruby-2.2.3.tar.gz
cd ruby-2.2.3/
echo "./configure"
./configure > /dev/null 2>&1
echo "make"
make > /dev/null 2>&1
echo "make install"
sudo make install > /dev/null 2>&1
cd ..

sudo gem install bundler serverspec