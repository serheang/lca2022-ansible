#!/bin/bash
## This work for ubuntu

## Install git, ansible
apt -y install git ansible

## Remove telnet
apt -y remove telnet

## Update all packages
apt -y update
