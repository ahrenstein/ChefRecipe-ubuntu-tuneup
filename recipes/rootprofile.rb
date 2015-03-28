#
# Cookbook Name:: ubuntu-tuneup
# Recipe:: rootprofile
#
# Copyright (c) 2015 Ahrenstein, All Rights Reserved.

#This recipe will customize the root user's .profile with some very nice aliases and a few other good settings

#Add the l alias
replace_or_add 'l alias' do
  path '/root/.profile'
  pattern '^alias ll=.*$'
  line 'alias l=\'ls -lh\''
end

#Add the ll alias
replace_or_add 'll alias' do
  path '/root/.profile'
  pattern '^alias ll=.*$'
  line 'alias ll=\'ls -lhtr\''
end

#Make rm safer
replace_or_add 'rm alias' do
  path '/root/.profile'
  pattern '^alias rm=.*$'
  line 'alias rm=\'rm -i\''
end

#Configure my favorite bash prompt
replace_or_add 'bash prompt' do
  path '/root/.profile'
  pattern '^export PS1.*$'
  line 'export PS1="\[\e[00;31m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;34m\]\H\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[00;32m\]\w\[\e[0m\]\[\e[00;37m\] \t \\$ \[\e[0m\]"'
end

#Add a timestamp to history with the format MM/DD/YYYY HH:MM:SS
replace_or_add 'history timestamp' do
  path '/root/.profile'
  pattern '^export HISTTIMEFORMAT=.*$'
  line 'export HISTTIMEFORMAT="%m/%d/%G %H:%M:%S "'
end

#Set the history command to display 5000 lines
replace_or_add 'history display limit' do
  path '/root/.profile'
  pattern '^export HISTSIZE=.*$'
  line 'export HISTSIZE=5000'
end

#Set the history file to save 5000 lines
replace_or_add 'history file limit' do
  path '/root/.profile'
  pattern '^export HISTFILESIZE=.*$'
  line 'export HISTFILESIZE=5000'
end

#Set vim as the default editor
replace_or_add 'history file limit' do
  path '/root/.profile'
  pattern '^export EDITOR=.*$'
  line 'export EDITOR=vim'
end