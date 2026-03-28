*** Settings ***
Documentation  Aqui ficam as configs de start do teste 
Resource  ../../variables/libraries_variables.robot

*** Keywords ***
Abrir agibank
    ${options}=    Evaluate    selenium.webdriver.ChromeOptions()    modules=selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --window-size\=1920,1080
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Open Browser    ${url}    ${browser}    options=${options}

Fechar Browser
    Close Browser

Dado que estou no site do AgiBlog
    Title Should Be    Agi Blog | Tudo sobre empréstimo e educação financeira
E clico no campo de pesquisa
    Wait Until Element Is Visible    ${CAMPO_DE_PESQUISA}    15s
    Click Element                    ${CAMPO_DE_PESQUISA}
    Execute JavaScript    document.querySelector('.ast-search-menu-icon.slide-search').classList.add('ast-dropdown-active');

E digito CDB
    Wait Until Page Contains Element    ${INSIDE_SF}    10s
    Wait Until Element Is Visible    ${INSIDE_SF}    10s
    Input Text                       ${INSIDE_SF}    ${TEXTO_PESQUISA}
Quando executo a pesquisa
    Press Keys    ${INSIDE_SF}    RETURN
    Wait Until Page Contains         Resultados encontrados para:    timeout=15s

Então me é retornado o link para materia "CDB: o que é, como funciona e quanto rende"
    Click Link    ${LINK_CDB}
    Location Should Be    ${MATERIA_CDB}
E procuro pela aba de stories
    Scroll Element Into View    ${STORIES_FOOTER}
    Click Link       ${LINK_STORIES}
E seleciono o da nova embaixadora do AgiBank
    Click Link    ${LINK_SIMONE}
    Location Should Be      ${ENDERECO_SIMONE}

Quando clico na seta até o ultimo storie
    Execute Javascript    document.querySelector('button[aria-label="Next page"]').click()
    Execute Javascript    document.querySelector('button[aria-label="Next page"]').click()
    Execute Javascript    document.querySelector('button[aria-label="Next page"]').click()

Então visualizo o botao de replay
    Page Should Contain Element    ${BOTAO_REPLAY}
