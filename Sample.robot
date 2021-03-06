*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          agw.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username  ********
    Input Password    *******
    Submit Credentials
    Input Name   lollol
    Input Credentials  lololololol
    Submit 3
    Submit 3
    Input BaseUrl    http://management.blupoint.io/api
    Input Username2   ********
    Input Password2  ********
    Input URL  healthcheck
