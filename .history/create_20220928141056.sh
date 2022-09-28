# alias tf="~/Downloads/TEE-CLC-14.137.0/tf"
# export TF_AUTO_SAVE_CREDENTIALS=1

WS_NAME=MyWorkspace
PROJECT_NAME=Templates

tf workspace -new $WS_NAME -collection:https://dev.azure.com/nir0996

tf workfold -map $/$PROJECT_NAME -workspace:$WS_NAME .