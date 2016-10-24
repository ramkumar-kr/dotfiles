#!/bin/bash

echo "Updating packages list..."
sudo apt update

# Install some basic packages
echo "Do you want to Intsall the following packages
- vim
- git
- tmux
- gcc
- npm 
- wget
- ssh

Enter Yes or No"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo apt-get install vim git tmux gcc npm wget; break;;
        No ) break;;
    esac
done

# Install ruby using RVM
echo "Do you want to install and configure ruby using RVM? Enter Yes or No"
select yn in "Yes" "No"; do
    case $yn in
        Yes )
         sudo apt install curl && 
         gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 &&
         curl -sSL https://get.rvm.io | bash -s stable --ruby;
         break;;
        No ) break;;
    esac
done

# Configure git
echo "Do you want to configure git? Enter Yes or No"
select yn in "Yes" "No"; do
    case $yn in
        Yes )  
         read -p "Enter your Name : " GITNAME;
         read -p "Enter your email address : " EMAIL;
         git config --global user.name $NAME;
         git config --global user.email $EMAIL;
         git config --global core.editor vim;        
         break;;
        No ) break;;
    esac
done

# Creating a SSH key
SSHDIR="$HOME/.ssh"
if [ "$(ls -A $SSHDIR)" ]; then
     echo "Skipping SSH key generation since some files already exist in the .ssh directory..."
else
    echo "Do you want to create a new SSH key?  Enter Yes or No"
    select yn in "Yes" "No"; do
    case $yn in
        Yes )
          read -p "Enter your email address : " SSHEMAIL;
           ssh-keygen -t rsa -b 8192 -C $SSHEMAIL
          break;;
        No ) break;;
    esac
done
fi

# ipython
echo "Do you want to install ipython? Enter Yes or No"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo apt-get install ipython; break;;
        No ) break;;
    esac
done

# Some gems
echo "Do you want to install the following gems (ruby) ?
- bundler
- awesome_print
- rubocop

Enter Yes or No"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) gem install bundler awesome_print rubocop; break;;
        No ) break;;
    esac
done

# Rails
echo "Do you want to install the Rails framework ( also known as Ruby on Rails )?
 Enter Yes or No"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) 
           sudo apt-get install rubygem-railties;
           echo "Wait!...There's still some more \n"
           gem install rails; break;;
        No ) break;;
    esac
done


# echo "Do you wan to install the following pip packages?
# Commenting it since I don't know much here.'
# Enter Yes or No"
# select yn in "Yes" "No"; do
#     case $yn in
#         Yes ) pip install ; break;;
#         No ) break;
#     esac
# done


# Express
echo "Do you want to install the following npm packages?
- Express
Enter Yes or No"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) npm install express ; break;;
        No ) break;;
    esac
done


# Intsall extensions for firefox - TODO
