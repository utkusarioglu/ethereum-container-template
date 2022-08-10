# Ethereum Container Template

Template to use for setting up containers for Ethereum related projects and templates. Such as [utkusarioglu/hardhat-repo-template](https://www.github.com/utkusarioglu/hardhat-repo-template).

## Features

- Vi editing for cli with a cmd mode indicator
- Built-in static and dynamic analysis tools such as Mythril and Slither.
  Check `src/requirements.*.txt files for the complete list
- Runs as `hardhat` user by default
- Built-in python, node, jq, curl, vim, wget and other tools that could
  be relevant for your project. See `src/Dockerfile.dev` for the complete list.
