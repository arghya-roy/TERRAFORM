Provider types-
             there are mainly two types of provider. one is developed by hasicorp
and another one is by 3rd party (community).

in case of hasicorp developed, that provider plugin automatically downloaded after 
use teraform init. 
but in case of 3rd party, we need to download the specific plugin manually and copy the
plugin in a specific path. then we use terraform init to install that.

Path for windows- ` %APPDATA%\terraform.d\plugin`
         linux  -  `~/.terraform.d/plugin`
