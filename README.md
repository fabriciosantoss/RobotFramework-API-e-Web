# Desafio Do Zé
Fala Galera,  este é o meu projeto ai do desafio do zé delivery, estarei deixando alguns tópicos aqui embaixo descrevrendo oque foi feito e porquê escolhi assim, espero que gostem e até mais :D
<h1 align="center"> 1. Preparação do ambiente e execução </h1>

<h3>Instalação do robot</h3>
O robot é um framework baseado em python, sendo assim será necessário baixar e instalar o python, vocês podem fazer isso baixando o instalador <a href="https://www.python.org/downloads/">aqui</a>, Haa e não se esqueça de habilitar o checkbox para adicionar o python path ;D. Após ter baixado e instalado o python vamos estar instalado o robot, para isso vamos abrir o cmd e executar o comando "pip install robotframework" e após finalizar a instalação, vamos verificar se ficou tudo certo, sendo assim executamos o comando "robot --version"

<h3>Configuração do webdriver</h3>
Nesse desafio eu usei o chromedriver, então vamos precisar baixar ele <a href="https://chromedriver.chromium.org/downloads">aqui</a>, mas cuidado!! baiaxe a versão correta para o seu navegador. Após baixar, faça a extração do arquivo zip,vá até a pasta do python que vc instalou anteriormente, pegue o chromedriver e cole ele dentro da pasta "script", e num passe de mágica o chromedriver já deve estar funcionando.

<h3>Instalando a lib do selenium</h3>
Para que a nossa automação funcione, e possamos usar os comandos do selenium, será necessáiros a instalação da lib do selenium, que será necessário apenas um comando, você irá abrir o seu cmd e executar a seguinte palavra mágica "pip install robotframework-selenium2library". Com isso ai a lib será instalada :D

<h3>Instalando a lib HTTP Requests</h3>
Para os nossos testes backend também será necessário uma lib, então temos que abrir o cmd também e executar mais um comando "pip install robotframework-requests", após isso, já poderemos fazer as requisições.

<h3>Execução dos testes</h3>
Caso você esteja usando o VSCode a maneira mais simples de fazer essa execução, será clicando no botão de play, ou no "run" logo acima de cada teste. Mas se você não quiser executar desta forma, podemos usar o terminal,  mas para isso será necessário entrar na pasta de cada projeto utilizando o comando "cd API_robot" para os testes de API ou "cd web" para os testes web.

Dado que você esteja na pasta dos testes de api, vc vai executar o seguinte comando para a execução: robot -d ./log testsAPI.robot.
Já na pasta dos testes web vc vai executar o comando: robot -d ./log teste_do_ze.robot.

Executando assim, os testes serão executados e será criada uma pasta chamada "log" com evidencia de falha e registros de execução, no caso do web ou apenas os registros de execução quando for os testes de API

<h1 align="center"> 2. Identificando os fluxos </h1>

<h3>Endereço</h3>
Sem o endeço correto adicionado no Zé, a nossa principal atividade que é a entrega dos nossos produtos não será entregue, sendo assim é um dos pontos que considero crítico e não pode deixar de funcionar.
<h3>Carrinho de compras</h3>
Tão importante quanto o nosso endereço, é o carrinho de compras, pois é nele onde o cliente vai adicionar os produtos e finalizar os pagamento, e sem pagamento não entra money pro zé, e isso não é legal =/
<h3>Produtos</h3>
E por último mas não menos importante, a nossa página de produtos, onde os nossos clientes irão selecionar os produtos para consumo, sem ela não tem carrinho cheio, e não tem entrega, sendo assim nossos clientes não vão conseguir fazer o churrasco planejado, e vai ser uma baita dor de cabeça pra eles, mas não é isso que queremos não é mesmo? :D

<h1 align="center"> 3. Escolhendo a tecnologia e padrão de projeto </h1>
Para automatizar escolhi o Robot Framework que é uma ferramenta baseada em python, e possui uma curva de aprendizado super curta, e também por já ter uma certa afinidade com ele, na automação web. Em relação a estruturação, escolhi usar o Page Objects, pois com o PO podemos melhorar a manutenibilidade e reuso do código, gerando menos trabalho pra gente na hora da manutenção.

Em relação a automação de API, como não tenho experiencia proffisional, fiz com o robot tbm por ser uma ferramenta que já conhecia e automatizei alguns testes que eu faria manual, caso fosse testar essa api, a estrutura, não segui nenhum padrão de projeto, apenas tentei deixar organizado e com o máximo de reuso de código.
