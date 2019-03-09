# munge
## ProjectTemplate directory
Project processing scripts in the munge directory are automatically executed 
by `load.project(munging = T)`.

Scripts in the munge directory are excecuted sequentially; if order is important 
then the files should be numbered, for example:

    01_script1.R
    02_script2.R
    03_script3.R

At the end of the script, use `cache("varaible_name")` to store the result in 
the *cache* directory.
