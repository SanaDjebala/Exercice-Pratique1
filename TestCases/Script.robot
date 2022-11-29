*** Settings ***
Library    SeleniumLibrary
Resource    ../Ressources/Keywords.robot

*** Variables ***
${url}    https://practicetestautomation.com/practice-test-login/
${browser}    gc
${username}     student 
${pssword}    Password123 
${newUrl}    https://practicetestautomation.com/logged-in-successfully/
${MessagErreur1}    Your username is invalid!
${usernameNonValid}    incorrectUser 
${psswordNonValid}    incorrectPassword
${MessagErreur2}    Your password is invalid!

${MessagSucces1}    Congratulations
${MessagSucces2}    successfully logged in
${TextLogOut}    Log out

*** Test Cases ***

Positive LogIn test
    LoginKeyword
    Verif Positive LogIn 

Negative username test
    Login Invalid username
    Verif Negative username
    
Negative password test
    Login Invalid password
    Verif Negative password
    