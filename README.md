# Box Vagrant MCP

Box vagrant avec provisionning pour le cours de Méthode de Conception des Programmes à l'UCL. Dans le cadre de ce cours, pour un projet, on doit utiliser les outils OpenJML ainsi que le prouveur Z3. Néanmoins ces outils sont limités pour le moment à Java 1.7. Afin de séparer les outils à utiliser pour le cours des outils faisant partit de notre environnement de développement (et donc éviter de trop chipoter dans notre système principal), nous allons mettre en place à base de [vagrant](https://www.vagrantup.com/).

## Install

### Dépendences

Pour commencer, il faut avoir un virtal box d'installée. Pour ce faire, une rapide recherche internet vous aidera pour l'installation en fonction de votre système

Le second point important est l'installation de vagrant. Si vous êtes sur base ubuntu:

```
sudo apt-get install vagrant
```
Si vous utiliser ubutnu 14.04, vous risquez de recontrer un problème pour vargrant. Dans ce cas, suivez la procédure suivante (vous devrez peut être modifier les numéros de version en fonction de votre cas):

```
wget ttps://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb
sudo dpkg -i vagrant_1.8.1_x86_64.deb
```

### Vagrant

Maintenant, passons à l'installation à proprement parlé de notre box

```
cd /ou/vous/voulez
git clone git@github.com:LudoZipsin/LINGI1122-vagrant.git
mkdir my_vagrant
cd my_vagrant
vagrant init
vagrant box add ubuntu/trusty64
rm -f Vagrantfile
cp ../LINGI1122-vagrant/Vagrantfile ../LINGI1122-vagrant/bootstrap.sh ../LINGI1122-vagrant/HelloWorld.java .
```

Puis la partie longue à cause de la compilation de z3 (pas encore trouvé comment faire autrement, si vous avez des idées pour accélérer cette partie, faites le moi savoir)

```
vagrant up
```
Ça ne prendra du temps qu'au premier `vagrant up`

## Utilisation

Voilà, après pas mal de temps de patience, votre box est prête. Dans le répertoire où vous avez tappez `vagrant init`:

```
vagrant ssh
```

Pour tester:

```
cd /vagrant
jml HelloWorld.java
```

Pour quitter votre machine virtuelle (tout simplement):

```
exit
```

Pour fermer votre machine virtuelle:

```
vagrant halt
```

Pour réallumer votre box:

```
vagrant up
```

## Retirer la box

Une fois le cours fini, plus besoin de garder la box, on détruit la machine virtuelle:

```
vagrant destroy
```

et si vous voulez retirer l'image de base:

```
vagrant box remove ubuntu/trusty64
```

