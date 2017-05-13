## Git Hooks

### What are git hooks?
Like many other Version Control Systems, Git has a way to fire off custom scripts when certain important actions occur. There are two groups of these hooks: client-side and server-side. Client-side hooks are triggered by operations such as committing and merging, while server-side hooks run on network operations such as receiving pushed commits.

The hooks presented here are exclusively **client-side hooks and are triggered on commit.**

The hooks presented here will run 3 different services:

- *Lint* ( checks the code for syntax errors )
- *phpcs* ( Checks the code for the correct use of coding standards )
- *phpmd* ( Checks the code for bugs, suboptimal code, overcomplicated expressions and unused parameters, methods or properties )

### Installing the hooks

There are two ways of installing the hooks. Manually or through script, for both of them it is important that you have composer installed.

( you can get composer here: <http://getcomposer.org> )

First of all run the following command:

```sh
$composer install
```

This will install all the dependencies needed by the hooks.

Then you have two ways of installing the hooks.

- Manually, by copying the content of the /hooks inside the .git/hooks folder of your project.
- By running the *install-hooks* script. Don't forget to `chmod +x` the file so it will be executable.

This hooks will run everytime you try to commit your code to your local repository, detected errors will not let you commit the code.

Also, be aware that errors reported by the *Lint* hook will be stored in a log file inside the /log folder.
