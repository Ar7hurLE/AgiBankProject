# Automação de Testes - AgiBlog

**Site:** [https://blog.agibank.com.br/](https://blog.agibank.com.br/)

---

## Cenários testados

| Cenário | Descrição |
|---------|-----------|
| Pesquisa sobre CDB | Valida a função de pesquisa do blog |
| Visualização de stories da Simone Mendes | Testa a exibição correta dos stories no navegador |

---

## 📋 Pré-requisitos

Para executar os testes localmente, é necessário ter instalado:

- Python 3.10+
- Robot Framework
- Google Chrome

## ⚙️ Instalação

```bash
pip install robotframework robotframework-seleniumlibrary robotframework-requests webdriver-manager
```
## Execução Local

Para rodar os testes:

```bash
git clone https://github.com/Ar7hurLE/AgiBankProject.git
cd AgiBankProject
robot -d relatorio tests/web
```
## É possivel visualizar também os resultados de execucões anteriores na aba Actions do GitHub! :)
