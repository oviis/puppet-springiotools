#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with springiotools](#setup)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

The module will install on Debian derivates springiotools 

## Module Description

This module install springiotools with eclipse, but you need for this to work a machine who have an Xserver inside, with GUI 

## Setup

### What springiotools affects

* the springiotools binary is in Sixt environment stored, without beeing into this environment, 
you should need to change the variable  $default_url_location from manifests/params.pp to download it directly from the spring download page  

### Setup Requirements **OPTIONAL**

you should need to change the variable  $default_url_location from manifests/params.pp to download it directly from the spring download page  

### Beginning with springiotools

## Usage

STS should be started from location `/opt/sts-bundle/sts-home/STS`

## Reference

for this to run, you need a JDK installed

## Limitations

at the moment it is only limited on Debian derivates, like Linux Ubuntu, Mint 

## Development

you can fork or copy and distribute the module 

