@echo off

set args_counter=0
for %%a in ( %* ) do set /a args_counter+=1




if %args_counter% equ 0 (
    goto help
) else if "%1" == "-h" (
    goto help
) else if "%1" == "help" (
    goto help
) else if "%1" == "h" (
    goto help
)





set command=%*

if "%1" == "post" (

    set command=new_post[^"%2^"]
    goto exec

) else if "%1" == "po" (

    set command=new_post[^"%2^"]
    goto exec

) else if "%1" == "page" (

    set command=new_page[^"%2^"]
    goto exec

) else if "%1" == "pa" (

    set command=new_page[^"%2^"]
    goto exec

) else if "%1" == "g" (

    set command=generate
    goto exec

) else if "%1" == "w" (

    set command=watch
    goto exec

) else if "%1" == "p" (

    set command=preview
    goto exec
)









:exec

@echo on

bundle exec rake %command%

goto end









:help

echo.
echo ------------
echo command list
echo ------------
echo new_post[$title], post $title, po $title
echo new_page[$title], page $title, pa $title
echo generate, g
echo watch,    w
echo preview,  p
echo help,     h, -h
echo ------------
echo.










:end