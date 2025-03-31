*** Settings ***                                                                                       
Library    Collections                                                                                 
Library    RequestsLibrary
Resource    login.robot                                                                          
                                                                                                       
Suite Setup    Authenticate as Regular
                                                                                                       
*** Test Cases *** 

*** Keywords ***
Authenticate as Regular

    ${body}    Create Dictionary    username=${Username}    password=${Password}
    ${response}    POST    url=http://127.0.0.1:3000/api/auth/login    json=${body}
    #Log To Console   ${response.json()}

    Should Contain    ${response.json()}[message]    login succesful
    Dictionary Should Contain Key    ${response.json()}  user

    ${token}    Set Variable    ${response.json()}[token]
    ${user_id}    Set Variable    ${response.json()}[user][user_id]
    #Log To Console   ${token}
    Set Suite Variable    ${token}
    Set Suite Variable    ${user_id}

*** Test Cases ***
Get User's Measurements

    ${header}    Create Dictionary    Authorization=Bearer ${token}
    ${response}    GET    http://127.0.0.1:3000/api/entries    headers=${header} 
    Status Should Be    200
    #Log To Console    ${response.json()}

Get User's Profile

    ${header}    Create Dictionary    Authorization=Bearer ${token}
    ${response}    GET    http://127.0.0.1:3000/api/users/${user_id}    headers=${header} 
    Status Should Be    200
    Dictionary Should Contain Key    ${response.json()}  username
    Dictionary Should Contain Key    ${response.json()}  email
    Dictionary Should Contain Key    ${response.json()}  fname
    Dictionary Should Contain Key    ${response.json()}  lname
    Dictionary Should Contain Key    ${response.json()}  occupation
    Dictionary Should Contain Key    ${response.json()}  weight
    Dictionary Should Contain Key    ${response.json()}  height
    Dictionary Should Contain Key    ${response.json()}  created_at
    #Log To Console    ${response.json()}

Post A New Measurement result

    ${header}    Create Dictionary    Authorization=Bearer ${token}
    ${body}    Create Dictionary    readiness=25    bpm=98    rmssd=65    sns=0.01    pns=0.02    sleep_hours=12    phy_age=78    mood=Stressed    notes=Assignment9meniläpi.  
    ${response}    POST    http://127.0.0.1:3000/api/entries   headers=${header}   json=${body}
    Status Should Be    201
    Should Contain    ${response.json()}[message]    Entry added.
    #Log To Console    ${response.json()}
                                                                                                       