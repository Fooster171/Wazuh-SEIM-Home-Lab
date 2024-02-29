# Introduction

This github repository was created to track homelab exercises using Wazuh I've done for my own personal educational efforts but made public for any one who might find it useful. In the Wiki section of this repository I detail all the steps taken to install the Wazuh Server, several agents and a few example exercises for different usecases of the Wazuh solution.

https://github.com/Fooster171/Wazuh-SEIM-WIP/wiki

# Pre-Requisites

Here are a few items I've used for the creation of this lab.

1. Raspberry Pi 4 - Wazuh Server (Ubuntu Server 22.04)
https://www.amazon.com/gp/product/B089NQBBBK/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1
https://www.amazon.com/gp/product/B07TC2BK1X/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&th=1

Raspberry Pi Imager - https://www.raspberrypi.com/software/
*You will also need an SD card for the Raspberry Pi imager.

2. Oracle Virtual Box - Windows Environment
https://www.virtualbox.org/

3. Windows 10 ISO
https://www.microsoft.com/en-us/software-download/windows10

4. Windows Server ISO
https://www.microsoft.com/en-us/evalcenter/download-windows-server-2019

5. Powershell 7
https://learn.microsoft.com/en-us/shows/it-ops-talk/how-to-install-powershell-7

6. Payload all the things - External link to an essential collection of commands for pentesting exercises:
https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Reverse%20Shell%20Cheatsheet.md

7. Wazuh
Main site - https://wazuh.com/
Wazuh Installation Guide - https://documentation.wazuh.com/current/installation-guide/index.html

# Active Response

Scripts in use for the Active response functionality of the mentioned exercises are posted here as well. More will be added as additional exercises are created. 

# Configuration and Rules files

For reference, I've included copies of the Ossec.conf file for the Wazuh Server. I've also made sure to include files containing rules and agent configuration files as well. 
