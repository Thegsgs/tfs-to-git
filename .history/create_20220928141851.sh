alias tf="~/Downloads/TEE-CLC-14.137.0/tf"
export TF_AUTO_SAVE_CREDENTIALS=1
tf eula -accept

WS_NAME=MyWorkspace
PROJECT_NAME=Templates
USER_NAME=shachar.ovadia@codewizard.co.il
API_TOKEN=vkfbi6nm5rliufcq2cptgxf2mx5px5mp7vw4qkmztwauk66ipnnq
SERVER_URL=https://dev.azure.com/nirg0996

tf workspace -new MyWorkspace -collection:https://dev.azure.com/nir0996/

tf workfold -map $/Templates -workspace:MyWorkspace .

tf get