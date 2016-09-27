# Script to install CollabNet Subversion Windows Server 2012 R2
# Sohail R | systems engineer | T-Systems | Sept 2016

# What exactly is this?

# 1. We start with a clean environment to install SVN.
# 2. The package made by CollabNet doesnot give a direct download link
# 3. It requires you to sign in with your CollabNet credentials to access the download.
# 4. So I had to make a MIRROR download URL, I used BOX app free service for download sharing. The exe file is about 140MBs FYI
# 5. The exe used here is a x86 based exe which after some R&D i was able to call, in silent mode.
# 6. the script doesnot really do anything great.
# 7. It downloads the file from the cloud, renames it to a friendly name.
# 8. Opens it and starts the installation. 
# 9. This scrptlet will only install a fully functional SVN. For commit and update you might require further scripting. 



# Developed By Sohail R | If the mirror fails to work due to some copyright issues, feel free to make a new one and update the code. :) 
# It is expected that your PS has a friendly execution policy so that it doesnot block the script. 
# If you have made it till here, you are on your own now ;)

# start
cd 'c:\temp'
wget http://52.187.62.107/downloads/32-svn.exe -outfile svn.exe
start-sleep -s 10
.\svn.exe  /passive
