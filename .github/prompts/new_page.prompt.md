# "Create a New Page" Prompt

## Objective

Create a new page for the website based on the provided specifications.

## Variables For This Prompt

BaseName = "Error"

FtlhDirectory = "web\WEB-INF\templates"

ServletDirectory = "src\mypackage\servlet"

PageModelDirectory = "src\mypackage\model"

## Instructions

- Create a new FTLH file for the page, name it `${BaseName}.ftlh`, and put it in the `${FtlhDirectory}` directory. If this directory does not exist, create it.
- Create a new servlet class for the page, name the file `${BaseName}Servlet.java`, and put it in the `${ServletDirectory}` directory. If this directory does not exist, create it.
- Create a new page model class for the page, name the file `PM${BaseName}.java`, and put it in the `${PageModelDirectory}` directory. If this directory does not exist, create it.