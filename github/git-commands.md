# Git Commands

## Clone
- Clone Any Git Repository:
```
git clone <repo-url>
```

- Clone `Specific Git Branch`:
```
git clone --single-branch --branch <branchname> <remote-repo>
```

## Create/Change/Set-Up/Rename
- Change/Set `New Git URL` of Any Project/Repository:
```
git remote set-url origin <repo-url>
```
- Create New Branch:
```
git checkout -b <branch-name>
```

- Push to New Branch:
```
git push -u origin branch-name
```

- Change/Checkout to Another Branch:
```
git checkout <branch-name>
```

- Rename Local Branch:
```
git branch -m <new-name>
```

- Rename Local Branch From Another Local Branch:
```
git branch -m <old-name> <new-name>
```

- Rename Remote Branch:
```
git push origin -m <old-name> <new-name>
```

## `Repository/Branch` Detail

- Git Remote Repository URL:
```
git config --get remote.origin.url 
```

- Git Remote Repository URL (with details):
```
git remote show origin 
```

- Show List of Local and Remote Branch:
```
git branch -a
```
## Delete
- Delete branch locally:
```
git branch -d <branch-name>
```
- Delete branch remotely
```
git push origin --delete <branch-name>
```
## Remove Creadential and Ask for It
```
git config --global credential.github.com.useHttpPath true
```

## Setup Github profile from cmd
```
git config --global user.email "you@example.com"

git config --global user.name "Your Name"
```
