﻿#Author : Ganesh Sekarbabu
#Site - https://techbrainblog.com/
#Purpose: To find the ilo details (bay info , ilo name and its IP ) of the blade running on the HP Enclosure Onboard Administrator.
# Download the HP CMDLTS from the " http://www8.hp.com/us/en/products/server-software/product-detail.html?oid=5440657#!tab=features "
# By using this HP CMDLTS we can  Configure and manege insight Lights Out (iLO), HP BIOS and Onboard Administrator (OA)
# To run this script pls check the avilabilty of Get-HPOAServerList cmdlet
#Reference - https://github.com/Ganeshsekarbabu/HP-OA-Firmware/blob/master/how%20to%20find%20the%20ilo%20destails%20of%20the%20blade%20in%20the%20enclosure.ps1
# Provide the OA Name\IP




$dd = Read-host " Enter the HP OA IP "


$c = Connect-HPOA $dd

Get-HPOAServerList  -Connection $c | Select-Object -ExpandProperty serverlist | ft Bay,iLOName,iLOIPAddress
 
 

