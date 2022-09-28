## Working with TFVC on macos using "Team explorer everywhere command line client" (TEE-CLC) (No longer supported but recommended by Microsoft):

### Installation:
- [Download](https://www.oracle.com/java/technologies/downloads/#jdk19-mac) and install Java 6/7/8 on your system, TEE-CLC will not work with later versions of java according to online sources.
- Navigate to the official TEE-CLC github [project releases page](https://github.com/microsoft/team-explorer-everywhere/releases) and download the latest version.
- Extract the zip anywhere on your system.
- In the terminal navigate to where you've extracted your files and run the tf executable to check if it's working.

### Connecting to remote repository and cloning it to your system:
- Follow [this guide](https://learn.microsoft.com/en-us/visualstudio/mac/tf-version-control?view=vsmac-2019) For initial setup

- Create tf executable alias: `alias tf="~/{your-path}/TEE-CLC-14.137.0/tf"`

- Connect to remote repository
    1. Navigate to your local working repository repository
    2. Set your environment to not prompt your tee-clc credentials more than once: `export TF_AUTO_SAVE_CREDENTIALS=1`
    3. Create a new workspace locally and connect it to your remote repository: `tf {workspace-name} -new MyWorkspace -collection:https://dev.azure.com/MyOrganization` 
    4. Map your newly created workspace to your local directory with with workfold command: 
    `tf workfold -map $/{remote-repo-name} -workspace:{workspace-name} ~/{local-directory}`
    5. Get all files from remote repository: `tf get`
    All files should now appear in your local directory

- Checking-in changes
    1. Makes changes in your local directory such as creating a new file or modifying an exsiting one.
    2. Make sure your terminal path is at the topmost level of your working dir and add files to staging: `tf add`
    3. Checkin your changes to the remote repository: `tf checkin -comment:"Initial commit"`
    4. Your changes should now appear in the remote repository.

- Working with branches



   