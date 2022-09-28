# alias tf="~/Downloads/TEE-CLC-14.137.0/tf"
# export TF_AUTO_SAVE_CREDENTIALS=1


tf workspace -new MyWorkspace -collection:https://dev.azure.com/nir0996

tf workfold -map $/{remote-repo-name} -workspace:{workspace-name} ~/{local-directory}