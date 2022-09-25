
## Working with TFVC on macos using "Team explorer everywhere command line client" (TEE-CLC) (No longer supported but recommended by Microsoft):

### Installation:
- [Download](https://www.oracle.com/java/technologies/downloads/#jdk19-mac) and install Java 6/7/8 on your system, TEE-CLC will not work with later versions of java according to online sources.
- Navigate to the official TEE-CLC github [project releases page](https://github.com/microsoft/team-explorer-everywhere/releases) and download the latest version.
- Extract the zip anywhere on your system.
- In the terminal navigate to where you've extracted your files and run the tf executable to check if it's working.

### Connecting to remote repository and cloning it to your system:
- In your azure Devops project, navigate to your personal authentication tokens page and generate a token for the TEE-CLC client to use for connecting to your repository.



   