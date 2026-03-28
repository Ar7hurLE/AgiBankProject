*** Variables ***
${URL}            https://blog.agibank.com.br/
${BROWSER}        chrome
${BOTAO_LUPA}     css:a.astra-search-icon
${INPUT_BUSCA}    id:search-field
${TEXTO_PESQUISA}    CDB

${CAMPO_DE_PESQUISA}    xpath:(//a[contains(@class, 'astra-search-icon')])[1]
${INSIDE_SF}    id:search-field
${LINK_CDB}    CDB: o que é, como funciona e quanto rende
${MATERIA_CDB}    https://blog.agibank.com.br/cdb-o-que-e-como-funciona/
${STORIES_FOOTER}    xpath=//*[@id="astra-footer-menu"]/li[7]/a
${LINK_STORIES}    Stories

${LINK_SIMONE}    Simone Mendes é a nova embaixadora do Agibank
${ENDERECO_SIMONE}    https://blog.agibank.com.br/web-stories/simone-mendes-e-a-nova-embaixadora-do-agibank/
${BOTAO_REPLAY}    css=button[aria-label="Replay"]