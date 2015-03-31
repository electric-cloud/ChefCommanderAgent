#
# Cookbook Name:: commanderAgent
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#package 'commanderAgent'
include_recipe 'commanderAgent::addusers'
include_recipe 'commanderAgent::sudousers'
include_recipe 'sudo'
include_recipe 'commanderAgent::getinstaller'
include_recipe 'commanderAgent::install32bitlibs'
include_recipe 'commanderAgent::install'
include_recipe 'commanderAgent::turnOffFirewall'
