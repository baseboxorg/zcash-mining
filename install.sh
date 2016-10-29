#!/usr/bin/env bash

read -p "Do you want me to install zcash-core and all its sub modules? (yes/no):"

if [ "$REPLY" != "yes" ]; then
    echo "Exiting!!!"
else
    echo "Installing/updating transport-https"
    sudo apt-get install -y apt-transport-https

    echo "Adding zcash master signing key to apt's truted keyring"
    wget -qO - https://apt.z.cash/zcash.asc | sudo apt-key add -

    echo "Adding the repository to your sources"
    echo "deb https://apt.z.cash/ jessie main" | sudo tee /etc/apt/sources.list.d/zcash.list

    echo "Running apt-update"
    sudo apt-get update -y

    echo "Installing zcash"
    sudo apt-get install zcash -y

    echo "Running post-install updates and setting up configurations"
    zcash-fetch-params

    echo "Generating configuration in  ~/.zcash/zcash.conf"
    mkdir -p ~/.zcash

    read -p "Username for ZCash RPC:" $zcashUsername

    echo "addnode=mainnet.z.cash" >~/.zcash/zcash.conf
    echo "rpcuser=$zcashUsername" >>~/.zcash/zcash.conf
    echo "rpcpassword=`head -c 32 /dev/urandom | base64`" >>~/.zcash/zcash.conf
    echo 'gen=1' >> ~/.zcash/zcash.conf
    echo "genproclimit=$(nproc)" >> ~/.zcash/zcash.conf

    echo "Zcash is now installed!"
    echo " "
fi