#!/bin/bash

# Install some basic packages
echo "Do you want to Intsall the following packages
- vim
- git
- tmux
- ruby
- gcc
- npm 
- wget
- ssh

Enter Yes or No"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo apt-get install vim git tmux ruby gcc npm wget; break;;
        No ) break;;
    esac
done

# Configure git
echo "Do you want to configure git? Enter Yes or No"
select yn in "Yes" "No"; do
    case $yn in
        Yes )  
         read -p "Enter your Name : " GITNAME;
         read -p "Enter your email address : " GITEMAIL;
         git config --global user.name $NAME;
         git config --global user.email $EMAIL;        
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
           ssh-keygen -t rsa -b 4096 -C $SSHEMAIL
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
