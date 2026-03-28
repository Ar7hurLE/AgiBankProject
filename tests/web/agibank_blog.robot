*** Settings ***
Resource    ../variables/libraries_variables.robot

Test Setup  Abrir agibank

*** Test Cases ***

Fazer pesquisa sobre CDB
    Dado que estou no site do AgiBlog
    E clico no campo de pesquisa
    E digito CDB
    Quando executo a pesquisa
    Então me é retornado o link para materia "CDB: o que é, como funciona e quanto rende"

Visualizar exibicao de storie da Simone Mendes
    Dado que estou no site do AgiBlog
    E procuro pela aba de stories
    E seleciono o da nova embaixadora do AgiBank
    Quando clico na seta até o ultimo storie
    Então visualizo o botao de replay