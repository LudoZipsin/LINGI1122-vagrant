#! /usr/bin/env bash


# The "echo" are set if you want to run "vagrant up >> log" and see the result of the install. Since the document is huge, you can make search on the text printed by "echo
# That way, if there is an issue, you can search where it come from. 

##################################################
##
##       JAVA
##


##       PPA
echo "java-ppa"
add-apt-repository ppa:webupd8team/java
apt-get update

##       Install
echo "java-auto-accept"
echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
echo "java-install"
apt-get install -y oracle-java7-installer \
                   oracle-jdk7-installer  \
				   oracle-java7-set-default


##################################################
##
##      Extras tools (to be sure)
##
echo "extras-install"
apt-get install -y gcc \
	               g++ \
				   make \
				   zip \
				   unzip

##################################################
##
##      Z3
##

##      Download
echo "z3-download"
wget https://github.com/Z3Prover/z3/archive/master.zip
echo "z3-unzip"
unzip master.zip
rm -f master.zip

##      Install
cd z3-master
echo "z3-mk_make"
python scripts/mk_make.py
cd build
echo "z3-make"
make
echo "z3-make-install"
make install


##################################################
##
##      OpenJML Fixed
##
cd /home/vagrant 
echo "OpenJML-download"
wget https://github.com/LudoZipsin/LINGI1122/archive/master.zip
echo "OpenJML-unzip"
unzip master.zip
rm -f master.zip


##################################################
##
##      Tweak
##
echo "alias jml='java -jar ~/LINGI1122-master/openjml.jar -prover z3_4_3 -exec /usr/bin/z3 -esc -progress '" >> /home/vagrant/.bash_aliases
