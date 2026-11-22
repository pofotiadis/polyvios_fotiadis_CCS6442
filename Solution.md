## polyvios_fotiadis_CCS6442 Solution

# Part 1

For step 19, I made a pull request based on `develop`, in which `main_runner.py` was created, since it didn't exist on `develop` or `master` but it did on other branches. The pull request also brought over the code from `feature/step-1`. 

For step 21, a pull request was made based on the `develop` branch called Version 1 release with all the changes that have been made in it so far. After it was reviewed and merged into `master`, a tag for the merge commit was made with GitKraken called `version1.0`.

For step 22, a new branch called `feature/new-requirement` was made that was based on the `develop` branch, which added the requested code. As there were no further instructions about this, the branch was simply merged into `develop` and left as is.

For step 23, there was brief dissaray upon the realisation that `self.username = usrname` was somehow lost on develop, and after checking previous commits, a new commit was made that brought it back and then merged it to `master`. With that out of the way, a new branch named `hotfix/username` was made, that replaced the usrname typo with username. 

In step 6, there happened to be a conflict between the local and upstream versions of `develop`, since they had different changes in the same place. The conflict was resolved with GitKraken, by comparing the two conflicting files and ultimately picking the upstream one. Sadly, this would erase `self.username = usrname`, which would be readded later.

# Part 2

For the initial files I was asked to create, like `docker-compose.yml` and `.env.example` I copied and pasted the files of the same name from `fastapi-realworld-example-app`, and edited them appropriately. I also did the same for `.gitignore`.
There wasn't a `checkstatus.sh` file in it though, so I downloaded an .sh sample file online, renamed it and edited it appropriately.
I run docker compose up locally to ensure the changes I did worked properly, and at first I found out I had to install Docker Desktop for it to work. Then when I run it again, I was warned that the attribute `version`, which was in the first line in `version: '3'` that was in `docker-compose.yml` is obsolete and will be ignored, so I removed it. I also had to properly reference `.env.example` in `docker-compose.yml` as it was only called `env.`.
I also had to make a `Dockerfile` since it was necessary for the command to work, along with the `.dockerignore` as it was recommended to have(currently its a copy of the one in `fastapi-realworld-example-app`).