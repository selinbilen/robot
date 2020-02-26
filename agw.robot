*** Settings ***
Library    Selenium2Library


*** Variables ***
${BROWSER}     Chrome
${DELAY}      1
${LOGIN URL}    http://develop-agw.blupoint.io/auth/login
${LOGIN PAGE TITLE}   BLUPOINT

*** Keywords ***
Open Browser To Login Page
    Open Browser   ${LOGIN URL}   ${BROWSER}
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    BluPoint Api Gateway

Input username
      [Arguments]     ${username}
      Input Text    xpath=//*[@id="__layout"]/div/form/div[1]/div/div[1]/input   ${username}

Input Password
      [Arguments]      ${password}
      Selenium2Library.Input Password    xpath=//*[@id="__layout"]/div/form/div[2]/div/div[1]/input    ${password}

Submit Credentials
      Click Button   Login
      Sleep  3
      Click Button   Add New

Input Name
      Sleep  1
      [Arguments]     ${Name}
      Input Text      xpath=//*[@id="__layout"]/div/div/div/form/div[1]/div[1]/div/div/div/input  ${Name}
      Click Element   xpath=//*[@id="__layout"]/div/div/div/form/div[3]/div[1]/div/div/div/label[2]/span

Input Credentials
      [Arguments]    ${Description}
      Input Text     xpath=//*[@id="__layout"]/div/div/div/form/div[2]/div/div/textarea   ${Description}

Submit 3
    Click Element   xpath=//*[@id="__layout"]/div/div/div/form/div[3]/div[2]/div/div/div/span[2]/i

Input BaseUrl
    [Arguments]     ${BaseUrl}
    Input Text  xpath=//*[@id="__layout"]/div/div/div/form/div[4]/div/div/input  ${BaseUrl}
    Click Button   Add Authentication
    Click Element   xpath=//*[@id="__layout"]/div/div/div/form/div[5]/div/div/div/div/div/div/div/div/input
    Wait Until Element Is Visible   css=[x-placement] .el-select-dropdown__list li:nth-of-type(1)
    Click Element   css=[x-placement] .el-select-dropdown__list li:nth-of-type(2)

Input Username2
    [Arguments]     ${Username}
    Input Text   xpath=//*[@id="__layout"]/div/div/div/form/div[5]/div/div/div/div[2]/div/div[1]/div/div/input  ${Username}

Input Password2
    [Arguments]    ${Password}
    Input Text   xpath=//*[@id="__layout"]/div/div/div/form/div[5]/div/div/div/div[2]/div/div[2]/div/div/input  ${Password}
    Click Element    xpath=//*[@id="__layout"]/div/div/div/form/div[6]/div/div/div[2]/div/div/input
    Wait Until Element Is Visible    css=[x-placement] .el-select-dropdown__list li:nth-of-type(1)
    Click Element   css=[x-placement] .el-select-dropdown__list li:nth-of-type(1)

Input URl
    [Arguments]   ${URL}
    Input Text   xpath=//*[@id="__layout"]/div/div/div/form/div[6]/div/div/div[3]/div/input  ${URL}
    Click Button  Test
    Click Button  Save
    Click Button  xpath=//*[@id="__layout"]/div/div/div/div/div[1]/button\
    Sleep  5
    Click Element  xpath=//*[@id="__layout"]/div/div/div/div[2]/div[1]/div[3]/table/tbody/tr[1]/td[1]/div/a
    Click Button   Delete
  #Click Button  xpath=//*[@id="__layout"]/div/div/div/div/div[1]/button\
