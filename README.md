# hAmazon
#### A playground for DevOps tasks

This is a repo I've created to learn to use AWS with python, it's likely of no use to anyone but me, but feel free to use if it helps you.

really useful resource https://gist.github.com/iMilnb/0ff71b44026cfd7894f8

There's some prerequisites which are roughly as follows.

- You have installed aws cli and run aws configure (and its worked)
- optionally, you've set up your credentials as ENVs
- you've got python installed and configured

Note: on a mac, you need to leave the default version of python, you can use other versions as long as you have the virtualenv and virtualenvwrapper (which makes it easier)

briefly:

  - python (the version you want to use)
  - pip
  - virtualenv
  - virtualenvwrapper
  - boto3 (aws sdk for python)

remember to set up your profile configuration file for your chosen shell.
for me its zsh (.zshrc)
if you're using the default shell, it'll be .bash_profile
