#!/bin/bash

ssh git@github.com > /dev/null 2>&1

if [ $? -ne 1 ]; then
  echo "Your keys have already been set up, exiting."
  exit
fi

[ -f ~/.ssh/id_rsa.pub ] || ssh-keygen

echo "Name: "
read name
echo "Email: "
read email
echo "Username: "
read username
echo "Password: "
stty -echo
read password
echo
stty +echo

git config --global user.name $name
git config --global user.email $email
git config --global branch.autosetuprebase always
git config --global push.default simple

github=https://github.com

csrfurl $github/login \
        $github/session \
        authenticity_token \
        -d username=$username \
        -d password=$password > /dev/null

pubkey="$(<$HOME/.ssh/id_rsa.pub)"

csrfurl $github/settings/ssh \
        $github/account/public_keys \
        authenticity_token \
        -d "$(urlencode public_key[title])=$(urlencode $(hostname))" \
        -d "$(urlencode public_key[key])=$(urlencode "$pubkey")" > /dev/null

csrfurl $github/session/confirm \
        $github/session/confirm \
        authenticity_token \
        -d return_to=/account/public_keys/create \
        -d password=$(urlencode "$password") > /dev/null

ssh git@github.com

true
