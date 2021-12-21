#!/bin/bash
## This work for centos7
## Setup EPEL repo
yum -y install epel-release

## Install git, ansible
yum -y install git ansible

## Remove telnet
yum -y remove telnet

## Update all packages
yum -y update