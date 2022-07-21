# Nextar test code
![N|Nextar](https://www.nextar.com.br/images/624538bf94a4cd7408b1d447_nex-nav-logo.svg)

## Descriptions

Este aplicativo implementa um aplicativo que permite gerenciar o estoque de produtos. Para isso é necessário realizar cadastro e login. 

- Estrutura MVC com Modular e Mobx
- Autenticação com Firebase
- Gerenciamento de produtos (CRUD)

![N|Nextar](https://savecoinfiles.nyc3.cdn.digitaloceanspaces.com/misc/nextar/2385.jpg)

## Como rodar o projeto

Garanta que possui o ambiente configurado com o flutter SDK mais atualizado, um emulador IOS ou Android, e um editor conpatível com flutter

- clone o repository
```sh
$ git clone https://github.com/LeoAltissimo/nextar_products
```

- Acesse o proketo
```sh
$ cd /nextar_products
```

- Instale as dependências
```sh
$ flutter pub get
```

- Execute no ambiente de ecolha


## Processo de desenvolvimento

#### Desafio pessoal

Esta foi a primeira vez que desenvolvi utilizando Flutter, então foi um processo interessante fazer uma relação dos conhecimentos adiquiridos com React Native em paralelo com o flutter. Inicialmente comecei lendo a documentação tentando entender como o flutter funcionava por baixo dos panos, logo em sequida realizei algumas poc seguindo como base o projeto getstarted da propria documentação.

Após conseguir alguma preeficiencia em escrever códigos basicos com o flutter, comecei a buscar como a comunicade aplica as praticas de arquitetura para transformar o projeto em algo escalável. Então me deparei com diveros pontos para entender o uso no flutter, como clean architecture, MVVM, MVC, TDD, MobX, Modular, BloC, DartZ... 

Realizei um verdadeiro deepdive em como essas ferramentas eram aplicadas no flutter, e apos vários testes decidi aplicar os conceitos de MVC, com Modular e MobX no projeto, a escolha foi feita pois dado a quantidade de requisitos o MVC era quem proporcionava uma boa modularidade e menos verbosidade em comparação com o clean architecture por exeplo.

#### Documentation C4 model

Para entender melhor e nortear o desenvolvimento, após um estudo sobre os requisitos do projeto, realizaei uma documentação simples aplicando os conceitos do C4 model. 
[Link da documentação](https://miro.com/app/board/uXjVOl75aZA=/?share_link_id=815140712261)

[![N|Soluevo](https://savecoinfiles.nyc3.cdn.digitaloceanspaces.com/misc/nextar/Captura%20de%20tela%202022-07-21%20111703.png)](https://miro.com/app/board/uXjVOl75aZA=/?share_link_id=815140712261)

#### Desenvolviento

O Desenvolvimento ocorreu após as definições de arquitetura acima, Utilizando o MVC para estrutura o projeto. Um grande desafio foi acostumar-se com a forma de estilização do flutter em relação ao React, por tanto visto que já havia utilizando boa parte do tempo do projeto vencendo a barreira da curva de aprendizangem, fiz usso de uma ferramenta WYSIWYG (flutter flow) para apoiar no processo de estrutar o layout e gerar o codigo das views. O app esta utilizando o firebase para cadastro, login, gerenciar autenticação e no CRUD de produtos.

#### Considerações e evolutivas

Visto o curto prazdo de desenvolvimento, infelizmente não foi possível aplicar a pratica de TDD, então acredito que duas grandes evolutivas que devem ser realizadas no projeto seriam, desenvolver os testes automatizados e segmentar melhor o layout gerado pelo flutter flow.