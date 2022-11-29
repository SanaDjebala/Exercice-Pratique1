*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/Locators.py
*** Keywords ***

LoginKeyword
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3
    Input Text    ${txt_loginUserName}     ${username} 
    Input Password    ${txt_loginPassWord}     ${pssword} 
    Sleep    2
    Click Button    ${txt_loginPtn} 
    Sleep    2

Login Invalid username
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3
    Input Text    ${txt_loginUserName}     ${usernameNonValid} 
    Input Password    ${txt_loginPassWord}     ${pssword} 
    Sleep    2
    Click Button    ${txt_loginPtn} 
    Sleep    2

Login Invalid password
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3
    Input Text    ${txt_loginUserName}     ${username} 
    Input Password    ${txt_loginPassWord}     ${psswordNonValid} 
    Sleep    2
    Click Button    ${txt_loginPtn} 
    Sleep    2
   
Verif Positive LogIn 
    ${url2}    Get Locations
    Should Contain    ${url2}    ${newUrl}
    ${text1OnPage}=  Run Keyword And Return Status  Page Should Contain  ${MessagSucces1}
    Run Keyword If  not ${text1OnPage}  Page Should Contain  ${MessagSucces2} 
    Element Text Should Be    ${txt_logoutBtn}    ${TextLogOut}    
    Close Browser

Verif Negative username
    Wait Until Element Is Visible    ${txt_MessagErreur}
    Page Should Contain    ${MessagErreur1}    
    Close Browser

Verif Negative password
    Wait Until Element Is Visible    ${txt_MessagErreur}
    Page Should Contain    ${MessagErreur2}    
    Close Browser



    


