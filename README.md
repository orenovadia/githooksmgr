# githooksmgr
Git hooks managed in the code base

# Sources
- https://stackoverflow.com/questions/3462955/putting-git-hooks-into-repository (especially, the security issues raised)
- https://stackoverflow.com/questions/4592838/symbolic-link-to-a-hook-in-git

# Installation
- Run `./scm/operations/install_git_hooks.sh` in the repository root
- Symlinks are created for `post-checkout` and `post-merge`, these will run the above installation script every time the codebase is changed, and this keeping the hooks updated.

# Adding hooks
- Add a hook script to `./scm/githooks`
- Make sure it is runnable (`chmod +x <path to hook>`)
- It will be installed for whoever checks out your changes

