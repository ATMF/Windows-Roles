### welcome to MS SQL  R2 Standard Enterprise Evaluation unattended Installation
### Installation happens with a configfile in the location "c:\configurationfile.ini"
##
##
### **************************credentials used*********************************
##
##
### SQL Server agent - hostname\SQLUSER
### SQL Server DB engine - hostname\SQLUSER
### SQL server Analysis services - hostname\SQLUSER
### SQL server reporting services - hostname\SQLUSER
### SQL server integration services - "NT AUTHORITY\NetworkService"
### SQL server full text filter daemon - "NT AUTHORITY\ LOCAL SERVICE"
### SQl server browser - "NT AUTHORITY\ LOCAL SERVICE"
### script automatically creates a new user SQLUSER and makes it a local administrator
### script also parses the hostname and puts it wherever required
##
##
### *************************Things to make sure before running this script***********
##  use ansible to install .NET-Framework-3.5
##  use ansible to extract SQL2008r2.Zip to C:
##  Final dependencies should reside in C:\SQL2008r2
##  ansible would be downloading the dependencies from ATMF-repo 52.187.62.107
## developed by R.sohail | T-systems | ATMF 
#
net user /add SQLUSER 123456aA
net localgroup administrators SQLUSER /add
### creating user and adding it to the local
$hostname=hostname
$rsvc=$hostname+"\SQLUSER"
$RSSVCaccount="RSSVCACCOUNT="+$rsvc
cd C:\temp\SQL2008R2
.\setup.exe /configurationfile="C:\temp\configurationfile.ini" /iacceptsqlserverlicenseterms /sapwd="123456aA" /SQLSVCPASSWORD="123456aA" /AGTSVCPASSWORD="123456aA" /ASSVCPASSWORD="123456aA" /ISSVCPASSWORD="123456aA" /$RSSVCaccount /RSSVCPASSWORD="123456aA"


