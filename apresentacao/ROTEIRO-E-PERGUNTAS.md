# Roteiro de Apresentação e Preparação para a Banca

**Defesa de TCC · Lucas Henrique Lopes Costa · UFLA, Sistemas de Informação, 2026**
Deck: `apresentacao/index.html` (43 slides)

---

## 1. Como usar este documento

O roteiro abaixo não é para ser decorado palavra por palavra. Decore as **frases de abertura** de cada bloco (marcadas com ▶) e as **frases-âncora** da seção 5. O resto você conta com suas palavras, porque você viveu o projeto e sabe do que está falando.

Ensaie duas vezes cronometrado. Na primeira você vai estourar o tempo, é normal. Na segunda, corte as frases que você percebeu que não fazem falta.

---

## 2. Distribuição de tempo

| Bloco | Slides | Tempo alvo | Acumulado |
|---|---|---|---|
| Abertura e roteiro | 1 a 2 | 1 min | 1 min |
| 01 Introdução | 3 a 8 | 3 min 30 s | 4 min 30 s |
| 02 Fundamentação Teórica | 9 a 12 | 3 min | 7 min 30 s |
| 03 Metodologia e Processo | 13 a 18 | 4 min | 11 min 30 s |
| **04 Atividades Realizadas** | **19 a 37** | **11 min** | **22 min 30 s** |
| 05 Considerações Finais | 38 a 42 | 3 min | 25 min 30 s |
| Encerramento | 43 | 30 s | 26 min |

**Se estiver atrasado**, corte nesta ordem: slide 6 (o que é um protocolo), slide 10 (Agricultura 4.0), slide 17 (estrutura de diretórios), slide 31 (reuso em orçamentos). Nenhum deles é essencial para a linha de raciocínio.

**Se estiver adiantado**, expanda os slides 23, 29 e 30 (os de código), explicando linha a linha. Eles têm material de sobra.

**Navegação:** setas, espaço ou roda do mouse. `Home` volta ao início, `End` vai ao último slide. O número do slide e o bloco atual aparecem no rodapé.

---

## 3. Roteiro slide a slide

### Abertura

**Slide 1 · Capa**

▶ "Bom dia. Meu nome é Lucas Henrique Lopes Costa e vou apresentar o relatório do meu estágio supervisionado na Zeeway, uma empresa de tecnologia de Lavras. O trabalho foi a construção do front-end de uma plataforma web de protocolos para uma empresa de pesquisa agrícola. Meu orientador é o professor Paulo Afonso Parreira Júnior."

*Não leia o slide. Olhe para a banca.*

**Slide 2 · Roteiro**

"A apresentação segue os mesmos blocos do relatório escrito. Vou passar rápido pela introdução, pela fundamentação e pela metodologia, porque onde eu quero gastar mais tempo é no bloco quatro, as atividades que efetivamente realizei. É lá que estão as decisões técnicas e os desafios do estágio."

---

### Bloco 01 · Introdução (slides 3 a 8)

**Slide 3 · Divisor**

Apenas transição. Pode falar por cima: "Começando pelo contexto."

**Slide 4 · O problema**

▶ "A pesquisa agrícola de solos e sementes gera um volume grande de dados: composição do solo, tratamentos aplicados, condições de safra, produtividade. Tradicionalmente isso é registrado em planilhas eletrônicas. E a planilha cobra um preço em três frentes."

Depois percorra os três cartões, um por vez, sem ler:
- Rastreabilidade: "sem um registro único, ninguém sabe quem alterou o quê."
- Regras: "a planilha aceita qualquer valor, então as regras do domínio ficam na cabeça das pessoas."
- Análise: "e todo gráfico entregue ao cliente final precisava ser montado à mão."

*Encerre com:* "Foi para resolver essas três coisas que a plataforma foi contratada."

**Slide 5 · A empresa e o cliente**

"O estágio foi na Zeeway, empresa lavrense fundada dentro do ecossistema de inovação da UFLA. Ela tem entre quinze e trinta colaboradores diretos, cerca de quarenta clientes diretos e quinhentos indiretos. O projeto em que eu trabalhei foi encomendado por uma empresa de pesquisa agrícola, também de Lavras, especializada em análises de solos e sementes. Ela queria abandonar o uso descentralizado de planilhas e ter uma plataforma própria."

*Se perguntarem o nome do cliente, veja a pergunta 26 na seção 6.*

**Slide 6 · O que é um protocolo** *(cortável se estiver atrasado)*

"Vale definir o termo central, porque tudo na plataforma gira em torno dele. Um protocolo é o registro completo de um experimento agrícola: identificação, delineamento experimental, dados de campo e os resultados das avaliações ao longo da safra."

**Slide 7 · Objetivos**

"O objetivo do estágio era aplicar em ambiente corporativo real o que eu aprendi na graduação. O objetivo deste relatório é documentar de forma estruturada o que foi construído: a arquitetura, as tecnologias, a metodologia e os desafios técnicos."

**Slide 8 · Delimitação**

▶ "Aqui é importante eu ser explícito sobre o recorte. Minha responsabilidade foi a camada de front-end. O back-end da plataforma, incluindo a API REST, o banco de dados e as regras de negócio do lado do servidor, ficou a cargo de outra equipe da Zeeway. Tudo que eu apresento daqui em diante é trabalho da camada de interface."

*Este slide é importante. Ele evita mal-entendido e mostra honestidade acadêmica. Não passe correndo.*

---

### Bloco 02 · Fundamentação Teórica (slides 9 a 12)

**Slide 9 · Divisor**

"Passando para a fundamentação."

**Slide 10 · Agricultura 4.0** *(cortável)*

"O contexto teórico é o da Agricultura 4.0, que é a adoção de tecnologias digitais, sensores, IoT, nuvem e análise de dados, para otimizar a decisão no campo. Nesse cenário, uma plataforma web que centraliza registro e análise é a evolução natural em relação à planilha, nos três pontos que eu mostrei no começo."

**Slide 11 · Scrum**

"O desenvolvimento seguiu Scrum, que é um framework ágil iterativo e incremental. Cada ciclo é uma Sprint de duração fixa e, ao final dela, uma nova versão do sistema é entregue. Os papéis são Product Owner, que prioriza o backlog, Scrum Master, que garante a aplicação do framework e remove impedimentos, e o time de desenvolvimento. As cerimônias são planning, daily, review e retrospective."

*Fale rápido. A banca conhece Scrum. O que interessa é o slide 14, onde eu mostro como isso foi aplicado de fato.*

**Slide 12 · A stack**

"As tecnologias foram escolhidas por camada de responsabilidade. Na apresentação, React com TypeScript, Material UI com tema personalizado do cliente, TanStack Table e ApexCharts. No estado, Zustand com Immer para o estado global e Formik com Yup para os formulários. No acesso a dados, Axios e React Query. E o build com Vite. Embaixo estão as bibliotecas de apoio, cada uma resolvendo um problema pontual que vai aparecer nos próximos slides."

---

### Bloco 03 · Metodologia e Processo (slides 13 a 18)

**Slide 13 · Divisor**

"Como o time trabalhou."

**Slide 14 · Scrum na prática**

"Na prática, as Sprints eram de duas semanas. Na planning, as tarefas priorizadas do Product Backlog eram detalhadas no Sprint Backlog. O gerenciamento era feito no Azure DevOps Boards, onde cada item tinha identificador, estado, título, área de produto e marcadores. O quadro tinha quatro colunas: a fazer, em andamento, em revisão e concluído. Nas dailies cada um relatava progresso e impedimentos, e ao final da Sprint o incremento era apresentado ao cliente na review."

**Slide 15 · Requisitos**

▶ "Este foi um aprendizado que eu não esperava. Como o cliente atua em pesquisa agrícola, boa parte das regras de negócio era específica do domínio e não estava documentada em lugar nenhum. Não havia um documento de requisitos para consultar, as regras estavam na prática de trabalho das pessoas."

"O que concentrou a maior complexidade foram as regras de preenchimento dos protocolos. A obrigatoriedade e o formato de cada campo dependiam da combinação de três coisas: o tipo do protocolo, se Ret ou Comercial, a cultura selecionada e a classe do experimento. Como nenhuma dessas combinações estava descrita em documento, cada variação precisava ser esclarecida diretamente com a equipe do cliente antes de virar esquema de validação no formulário."

**Slide 16 · Arquitetura**

"O front-end foi organizado em três camadas. A de apresentação, com os componentes React. A de estado, que mantém os dados em memória durante a navegação. E a de acesso a dados, que fala com a API. Cada camada tem um motivo único para mudar, o que foi importante para acomodar o volume de telas do sistema."

**Slide 17 · Estrutura de diretórios** *(cortável)*

"A estrutura de diretórios reflete essa separação. Os diretórios visuais de um lado, os de estado, serviços e rotas de outro."

**Slide 18 · Contrato de API**

▶ "Como havia duas equipes trabalhando em paralelo, a coordenação foi feita a partir de um contrato acordado antes do código. No início de cada funcionalidade, definíamos juntos o caminho do endpoint, o método HTTP e a estrutura dos dados de entrada e de saída. A partir daí as duas equipes trabalhavam ao mesmo tempo: o back-end implementava o endpoint e eu construía a tela consumindo uma versão mascarada dos dados, um mock, que respeitava o contrato. Quando o endpoint ficava pronto, eu trocava a fonte dos dados pela API real. Ajustes pontuais eram negociados na daily ou na planning seguinte."

---

### Bloco 04 · Atividades Realizadas (slides 19 a 37) — o coração da apresentação

**Slide 19 · Divisor**

▶ "Agora entramos na parte principal: o que eu efetivamente construí."

**Slide 20 · Os três módulos**

"O relatório está organizado em três módulos, selecionados por relevância no escopo do projeto e por complexidade técnica: autenticação e controle de acesso, registros agrícolas e análise com dashboards."

#### Módulo 01 · Autenticação

**Slide 21 · Tela de login**

"O primeiro módulo foi o de autenticação, que é o ponto de entrada de todos os usuários. A tela seguiu a identidade visual da empresa cliente. Depois do login, a API devolve um par de tokens JWT, um de acesso e um de renovação, e a sessão fica persistida no armazenamento local."

**Slide 22 · Store de autenticação**

"O estado da sessão é gerenciado com Zustand, usando o middleware de persistência, que salva o conteúdo localmente sob o nome UserData. A função central é o setLoginInfo. Ela roda depois do login e usa o produce, do Immer, que expõe um rascunho mutável do estado e permite escrever as alterações de forma direta, mantendo a imutabilidade por baixo. Dentro dela o usuário é marcado como autenticado, os tokens são gravados, o access token é decodificado com jwt-decode e nome, identificador, e-mail e perfil são extraídos das claims."

*Aponte a linha do `jwtDecode` com o cursor ou o dedo.* "Esse `roleId` que sai daqui é o que governa todo o controle de acesso da aplicação."

**Slide 23 · Refresh token**

▶ "Este trecho resolve um problema de experiência de uso. O token de acesso expira. Sem tratamento, o usuário seria deslogado no meio do preenchimento de um protocolo, que é um formulário longo, e perderia o trabalho."

"Configurei um interceptador de resposta do Axios. A primeira função devolve as respostas bem-sucedidas sem alteração. A segunda trata os erros: ela só age quando o código é 401 e quando a requisição ainda não foi reexecutada, controle feito pela marcação `_retry`, que evita laço infinito. Nesse caso, o refresh token é usado para pedir um token novo, o cabeçalho de autorização da requisição original é atualizado e ela é reenviada. Para o usuário, nada acontece."

**Slide 24 · Controle de acesso**

"A plataforma tem dois perfis: Administrador, com acesso completo incluindo gestão de usuários, e Técnico, restrito ao registro e à consulta de protocolos. O controle foi implementado no nível das rotas, com um componente guardião que envolve as rotas e decide antes de renderizar. Ele faz duas verificações: se não está autenticado, redireciona para o login. Se a rota é marcada como restrita ao administrador e o perfil não é esse, redireciona para a raiz."

*Se você tiver tempo, já emende a ressalva da pergunta 11, antes que perguntem:* "Vale dizer que essa é a restrição de interface. A garantia de segurança de fato está no back-end, que valida o token e o perfil em cada requisição."

**Slide 25 · Gestão de usuários**

"A gestão de usuários é acessível só pelo Administrador. Permite visualizar, adicionar, editar e excluir colaboradores, com busca textual e filtro por perfil. As operações de criação e exclusão são feitas em modais, para o usuário agir sem perder o contexto da página. Todos os formulários usam Formik para o estado dos campos e Yup para a validação antes do envio."

#### Módulo 02 · Registros Agrícolas

**Slide 26 · Listagem de protocolos**

"O segundo módulo é o núcleo do sistema. A listagem foi construída com TanStack React Table, que dá ordenação, paginação e filtragem. Cada protocolo aparece com código, tipo, cliente, classe, cultura e status."

*Destaque o QR Code:* "A funcionalidade que eu acho mais interessante aqui é a geração de QR Code. Cada protocolo gera um código com um identificador único que, escaneado em campo pelo técnico, abre direto a página daquele protocolo na plataforma. Foi uma demanda que veio do uso real, do pessoal que está no campo com o celular."

**Slide 27 · O formulário e suas abas**

▶ "O formulário de cadastro de protocolos foi o maior desafio técnico do projeto, pelo volume de campos e pela complexidade das regras."

"Um protocolo reúne dezenas de campos. Para não virar um formulário infinito, ele foi organizado em oito abas. Alguns campos são obrigatórios, o mínimo para o protocolo existir, e o resto é preenchido conforme a pesquisa avança ao longo da safra."

**Slide 28 · Aba de Avaliações**

"A aba de Avaliações é a que muda de forma. O número de colunas da tabela varia de acordo com o número de repetições configurado lá na aba de Informações, e novas linhas podem ser adicionadas. Alguns campos são fórmulas, ou seja, expressões matemáticas calculadas a partir dos valores de outros campos, avaliadas em tempo de execução com a biblioteca mathjs. E cada momento de avaliação aceita fotografias de campo vinculadas ao registro."

**Slide 29 · Fotos em .zip**

"Daí veio um problema prático: baixar dezenas de fotografias uma a uma inviabilizava o trabalho posterior do pesquisador. A solução foi agrupar tudo em um arquivo compactado. As imagens são buscadas na API por uma mutation do React Query, cada uma é convertida em blob pelo fetch nativo do navegador, e todas as promessas são aguardadas em paralelo com Promise.all. O JSZip monta o arquivo em memória e entrega para download."

**Slide 30 · Validação com Yup**

▶ "Aqui está o ponto onde a regra do agrônomo vira código."

"O esquema é declarado com Yup.object().shape, e cada chave corresponde a um campo do formulário, com sua cadeia de validações. Repare em dois detalhes. Os campos numéricos combinam required com nullable: eles podem ficar nulos durante o preenchimento parcial, o que é essencial em um formulário que a pessoa preenche ao longo de meses, mas são exigidos no envio. E o campo de classes usa array com mínimo de um, garantindo ao menos uma classe selecionada."

"A maior dificuldade do módulo não foi escrever isso, foi descobrir qual era a regra. Isso exigiu validação contínua com o cliente a cada Sprint."

**Slide 31 · Reuso do padrão** *(cortável)*

"O mesmo padrão de organização foi reaproveitado em outros módulos, como o de orçamentos. Os componentes de seleção, campos de data e modais foram reutilizados em contextos diferentes, e um hook customizado, o useForm, padronizou o controle de valores e a orquestração das validações em todas as telas."

#### Módulo 03 · Análise e Dashboards

**Slide 32 · Declaração**

▶ *Pause aqui. Deixe o slide respirar um segundo antes de falar.*

"Este módulo é o principal diferencial da plataforma em relação à planilha. É onde o dado bruto vira gráfico sem ninguém precisar montar nada."

**Slide 33 · Pipeline**

"O fluxo tem cinco etapas. Os dados chegam já consolidados pelo back-end. O front-end mapeia esses dados para dois vetores, os rótulos do eixo horizontal e os valores. Com eles, monta as séries e as opções do ApexCharts. O componente renderiza. E, se o usuário quiser, exporta como imagem."

"No código embaixo, `series` tem uma única série com o rótulo e os valores. O objeto `options` concentra a configuração visual: o tipo barra, cores distribuídas por categoria, os valores numéricos exibidos sobre as colunas, as categorias do eixo horizontal e o máximo do eixo vertical calculado a partir dos próprios dados."

**Slide 34 · Gráficos gerados**

"Este é o resultado. Os componentes recebem os dados consolidados e montam sozinhos as séries e as opções, sem nenhum ajuste manual do usuário. Cada gráfico ocupa um card próprio, com opção de download individual, e as colunas são coloridas por tratamento com os valores exibidos em cima, para o pesquisador comparar os tratamentos de imediato."

**Slide 35 · Exportação em PNG**

"E aqui está uma funcionalidade que veio direto de uma necessidade de negócio. A empresa cliente entrega relatórios aos clientes dela, e esses relatórios precisam sair com a identidade visual da empresa. Então mantive um elemento oculto na tela contendo o gráfico junto com o logotipo e o título dos dados. A captura desse elemento é feita com use-react-screenshot, que devolve a imagem em base64, e um link é criado dinamicamente para forçar o download. O resultado é um PNG pronto para ir para o relatório."

**Slide 36 · Dashboard geral**

"Além dos gráficos por protocolo, há um dashboard geral com a visão consolidada: distribuição por classe, por cultura, por cliente e por status. Esses números vêm de um endpoint específico do back-end, buscados com React Query, que gerencia o cache e garante que as visualizações fiquem atualizadas sem recarregamento manual da página."

**Slide 37 · Desafio de performance**

▶ "Fecho o bloco com o desafio técnico deste módulo."

"Renderizar vários gráficos com grandes conjuntos de dados ao mesmo tempo causava lentidão perceptível na interface. A causa era que gráficos fora da área visível estavam sendo montados junto com os que o usuário estava efetivamente olhando. A solução foi carregamento sob demanda: os gráficos passaram a ser renderizados só quando o usuário navega até a seção correspondente."

---

### Bloco 05 · Considerações Finais (slides 38 a 42)

**Slide 38 · Divisor**

"Para encerrar, a avaliação do que foi feito."

**Slide 39 · Objetivo atendido**

"O objetivo central era substituir o registro descentralizado em planilhas por uma plataforma própria, com acesso controlado e análise automatizada. Diante das funcionalidades entregues, considero que ele foi atendido no plano técnico, nas três frentes que eu apresentei lá no início."

*Note o cuidado da frase "no plano técnico". Ela prepara o slide seguinte.*

**Slide 40 · Dificuldades, limitação e futuro**

▶ "E aqui eu preciso ser honesto sobre uma limitação."

"As dificuldades superadas foram duas: traduzir o domínio agronômico para a lógica dos formulários, o que só se resolveu com validação contínua junto ao cliente, e a performance dos gráficos, mitigada com carregamento sob demanda."

"A limitação é que a adoção da plataforma pelo cliente foi inicialmente reduzida. Eu atribuo isso à mudança de cultura exigida pela transição da planilha para um sistema estruturado, e não a uma deficiência técnica da solução. Mas é uma limitação real e ela aponta para os trabalhos futuros: acompanhar essa adoção ao longo do tempo, fazer testes de usabilidade com os colaboradores e evoluir os dashboards com novos tipos de análise."

**Slide 41 · Impacto na formação**

"Foi minha primeira experiência com desenvolvimento de software em produto real, com equipe estruturada e cliente externo. No plano técnico, consolidou competências em React, TypeScript, gerenciamento de estado, formulários e integração com API. E, sobretudo, em visualização de dados, que é a área que passou a orientar meu interesse profissional. No plano interpessoal, desenvolveu comunicação e trabalho em equipe, principalmente no levantamento de requisitos e na tradução de necessidade de negócio em solução técnica."

**Slide 42 · O caminho inverso**

"Também vale registrar o caminho inverso, o que a graduação deu para o estágio. Engenharia de Software me deu a base do ciclo de desenvolvimento e dos métodos ágeis. Programação Orientada a Objetos, os conceitos de modularidade e responsabilidade única, que se traduzem naturalmente na componentização do React. Banco de Dados ajudou a entender as estruturas devolvidas pela API. E Interação Humano-Computador orientou as decisões de usabilidade."

"Do outro lado, percebi três lacunas: pouco contato com frameworks modernos de front-end nas disciplinas obrigatórias, pouca prática de testes automatizados de interface e pouca exposição a integração contínua, versionamento em equipe com pull requests e deploy em nuvem. Cobrir essas lacunas teria reduzido bastante minha curva de aprendizado nos primeiros dias."

**Slide 43 · Encerramento**

▶ "Era isso. Obrigado pela atenção e fico à disposição da banca."

*Não fale mais nada. Espere as perguntas.*

---

## 4. Postura e ritmo

- Fale mais devagar do que você acha que precisa. A tendência no nervosismo é acelerar.
- Beba água nos slides divisores (3, 9, 13, 19, 38). São as suas pausas naturais.
- Nos slides de código, use o cursor para apontar a linha que você está explicando. Isso ancora a atenção da banca.
- Nas capturas de tela, diga primeiro o que a pessoa está vendo, depois o que ela deve reparar.
- Se travar, volte para a estrutura: "resumindo, esse módulo resolve X".

---

## 5. Frases-âncora para decorar

Se você decorar só cinco frases, decore estas:

1. "A planilha cobra um preço em três frentes: rastreabilidade, aplicação de regras e velocidade de análise."
2. "Minha responsabilidade foi a camada de front-end. O back-end ficou com outra equipe da Zeeway."
3. "Boa parte das regras de negócio era específica do domínio e não estava documentada em lugar nenhum."
4. "O contrato da API era acordado antes do código, e isso permitiu as duas equipes trabalharem na mesma Sprint."
5. "O objetivo foi atendido no plano técnico. A limitação é de adoção, e ela é de cultura, não de solução."

---

## 6. Perguntas prováveis da banca, com respostas sugeridas

> As perguntas abaixo estão agrupadas por tema. Onde aparece **[preencher]**, é um dado que só você tem. Levante esses números antes da defesa.

### A. Escopo, autoria e contexto

**1. O que exatamente foi você e o que foi a outra equipe?**
"Eu fiz toda a camada de front-end: as telas, os formulários, as tabelas, o gerenciamento de estado da aplicação, o consumo da API, a autenticação do lado do cliente, o controle de acesso por rota e toda a geração e exportação de gráficos. A outra equipe fez a API REST, a modelagem do banco, a emissão dos tokens JWT e a consolidação dos dados que alimentam os dashboards."

**2. Você participou do levantamento de requisitos ou recebia as tarefas prontas?**
"Participei. O levantamento foi conduzido de forma iterativa junto com a equipe do cliente, e como as regras não estavam documentadas, as reuniões eram frequentes. A cada Sprint eu apresentava as telas e o cliente validava ou corrigia o comportamento esperado. Boa parte do que eu aprendi de engenharia de requisitos veio dessa ida e volta."

**3. O design das telas era seu ou veio de um designer?**
*Responda com o que foi verdade no projeto.* Se houve designer: "As telas vinham de um protótipo feito por [preencher], e eu implementava a partir dele, propondo ajustes quando o comportamento em código exigia. As decisões de estrutura de informação, como a divisão do formulário em oito abas, foram discutidas em conjunto." Se foi você: "A estrutura de interface foi decisão minha, orientada pelo que eu vi em Interação Humano-Computador, e a identidade visual seguiu a marca do cliente, aplicada por meio de um tema personalizado do Material UI."

**4. Quanto tempo durou o estágio e quantas Sprints foram?**
"[preencher] meses, o que dá em torno de [preencher] Sprints de duas semanas."

**5. Quantas pessoas havia no time?**
"[preencher]. A equipe de front-end tinha [preencher] pessoas e a de back-end [preencher]."

**6. Você era o único no front-end?**
*Responda com sinceridade.* Se sim, isso valoriza o trabalho. Se não, diga com quem dividiu e o que era especificamente sua parte.

### B. Decisões técnicas (as mais prováveis)

**7. Por que Zustand e não Redux ou a Context API do React?**
"Zustand resolve o mesmo problema de estado global com muito menos código de estrutura do que o Redux, que exigiria actions, reducers e mais camadas para o tamanho de estado que a gente tinha. E ele evita um problema da Context API, que é fazer todos os componentes assinantes rerrenderizarem quando qualquer parte do contexto muda. Com Zustand o componente assina só a fatia do estado que usa. Além disso, o middleware de persistência já resolvia de fábrica a necessidade de manter a sessão entre acessos."

**8. Por que Formik e Yup e não React Hook Form?**
"Formik e Yup já eram o padrão adotado nos projetos da Zeeway, então a escolha veio da consistência com o resto da empresa e da curva de aprendizado do time. O Yup em particular foi essencial porque permite descrever a regra de forma declarativa, o que facilitou muito conversar sobre a regra com o cliente: o esquema é quase legível como texto. Se eu fosse escolher hoje do zero, o React Hook Form teria vantagem de performance em formulários muito grandes, porque ele reduz rerrenderizações usando componentes não controlados, e o nosso formulário era grande. É uma coisa que eu avaliaria."

**9. Por que ApexCharts e não Chart.js, Recharts ou D3?**
"ApexCharts entrega gráficos interativos com pouca configuração e já traz de fábrica o que a gente precisava: rótulos de dados sobre as colunas, cores distribuídas por categoria e integração pronta com React pelo pacote react-apexcharts. D3 seria o mais poderoso, mas é uma biblioteca de baixo nível, em que você constrói o gráfico primitiva por primitiva, e a gente não precisava desse nível de customização. O requisito era gerar dezenas de gráficos padronizados automaticamente, não desenhar visualizações únicas."

**10. Por que TanStack Table?**
"Porque ela é headless, ou seja, entrega a lógica de ordenação, paginação e filtragem sem impor visual. Isso permitia manter a tabela dentro do tema do Material UI, com a identidade visual do cliente, sem lutar contra o estilo padrão de uma biblioteca de tabela pronta."

### C. Segurança (prepare-se, é a pergunta clássica)

**11. O controle de acesso está no front-end. Isso não é inseguro?**
▶ *Esta é a pergunta mais provável de toda a defesa. Tenha a resposta na ponta da língua.*
"É uma observação correta e importante. O guardião de rotas que eu mostrei é um controle de interface: ele impede que o usuário navegue até uma tela que não é dele e melhora a experiência de uso. Ele não é, e não poderia ser, a garantia de segurança, porque qualquer coisa que roda no navegador está sob controle do usuário. A garantia real está no back-end, que valida o token e o perfil em toda requisição. Se alguém forçasse a rota no front-end, a tela até poderia abrir, mas as chamadas à API voltariam negadas."

**12. Guardar o token no localStorage não é um risco?**
"É um trade-off conhecido. O localStorage é vulnerável a XSS, porque qualquer script injetado na página consegue ler o conteúdo. A alternativa mais segura seria um cookie httpOnly, que o JavaScript não consegue acessar, mas isso exigiria que o back-end controlasse a emissão e a leitura do cookie e traria a necessidade de tratar CSRF. No projeto, a decisão veio junto com a arquitetura da API, que era baseada em Bearer token no cabeçalho de autorização, e o requisito de manter a sessão entre acessos. É um ponto que eu levantaria numa evolução do sistema."

**13. E se duas requisições receberem 401 ao mesmo tempo? Não dispararia dois refresh?**
▶ *Pergunta de banca mais técnica. Se acontecer, responda com honestidade.*
"Na implementação que eu mostrei, a marcação `_retry` evita que a mesma requisição entre em laço infinito, mas ela não coordena requisições concorrentes. Se duas falhassem ao mesmo tempo, as duas tentariam renovar. O tratamento correto para isso é uma fila: a primeira falha dispara a renovação e as demais ficam aguardando a mesma promessa, sendo reenviadas depois. É uma melhoria que eu reconheço como pendente."

**14. O mathjs avalia expressões em tempo de execução. Isso não é perigoso, como um eval?**
"A função `evaluate` do mathjs é mais restrita que o `eval` do JavaScript: ela interpreta um subconjunto matemático, não código arbitrário do navegador. Ainda assim, as fórmulas eram cadastradas por usuários autenticados da própria empresa, não por qualquer visitante, então a superfície de exposição era interna. Em um cenário aberto, a recomendação seria restringir explicitamente o escopo de funções permitidas."

### D. Processo e qualidade

**15. Havia testes automatizados?**
▶ *Responda com sinceridade. Fingir aqui é pior do que admitir.*
"Não. A validação era manual e pela review de Sprint com o cliente. Essa é justamente uma das lacunas que eu aponto no capítulo final: testes automatizados de interface foram pouco trabalhados na graduação e eu senti falta disso no dia a dia. Se eu voltasse ao projeto, começaria por testes dos esquemas de validação do Yup e dos hooks customizados, que são a parte com mais regra de negócio e a mais fácil de testar isoladamente."

**16. Havia revisão de código e pull requests?**
"[preencher com o que era verdade]. O quadro tinha uma coluna de 'em revisão', então havia uma etapa formal antes de concluir a tarefa."

**17. O que acontecia quando o contrato da API mudava depois de acordado?**
"Ajustes pontuais eram negociados na daily, quando eram pequenos, ou na planning da Sprint seguinte, quando mexiam no escopo. Como o contrato era acordado por funcionalidade e não para o sistema todo de uma vez, o impacto de uma mudança ficava contido."

**18. O que era exatamente esse mock?**
"Era um objeto no próprio front-end com a mesma estrutura que o endpoint iria devolver, respeitando o contrato acordado. A tela consumia esse objeto como se fosse a resposta da API. Quando o endpoint ficava pronto, eu trocava só a fonte dos dados, porque tudo em volta já esperava aquele formato."

### E. Resultados e limitações

**19. Você tem métricas do impacto? Quanto tempo o sistema economizou?**
"Não coletei métricas quantitativas de uso, e reconheço isso como uma limitação do trabalho. O que eu posso afirmar é qualitativo: a geração dos gráficos, que antes era manual a cada relatório, passou a ser automática a partir do dado já registrado. Medir esse ganho é justamente um dos trabalhos futuros que eu aponto."

**20. Como você sabe que a baixa adoção não é um problema de usabilidade do sistema?**
▶ *Cuidado. Não seja defensivo. Reconheça o limite da sua afirmação.*
"Com rigor, eu não sei, e é por isso que a frase no relatório é uma atribuição e não uma conclusão. O que eu observei é que a transição da planilha para um sistema estruturado exige uma mudança de rotina de trabalho, e isso tem custo mesmo quando o sistema está correto. Mas para afirmar com segurança seria preciso justamente o que eu proponho como trabalho futuro: testes de usabilidade com os colaboradores. Sem isso, é uma hipótese, não um resultado."

**21. O sistema está em produção hoje?**
"[preencher]."

**22. Por que lazy loading e não memoização ou virtualização da lista?**
"Lazy loading atacava a causa que a gente tinha identificado, que era montar gráfico que ninguém estava olhando. Memoização evitaria rerrenderizações desnecessárias de gráficos já montados, que era um problema secundário, e virtualização faria sentido se o gargalo fosse uma lista muito longa de itens simples. Como cada gráfico é um componente pesado por si só, o ganho maior estava em não montá-lo antes da hora. Numa evolução, as três técnicas seriam complementares."

**23. Quantos protocolos ou usuários o sistema comporta?**
"[preencher, se souber]. Se não souber: 'Não tenho o número em produção. O que eu sei é que o volume de dados por protocolo é alto, porque cada um tem múltiplos tratamentos, cada tratamento com repetições e cada repetição com avaliações ao longo da safra, e foi essa profundidade de aninhamento que motivou a padronização do gerenciamento de formulários.'"

**24. O que você faria diferente hoje?**
*Tenha três respostas prontas, nesta ordem de prioridade:*
"Primeiro, escreveria testes automatizados desde o início, pelo menos dos esquemas de validação. Segundo, trataria a concorrência na renovação do token com uma fila, como eu comentei. Terceiro, teria proposto um acompanhamento de uso desde a entrega, para ter dado sobre adoção em vez de hipótese."

### F. Formação e curso

**25. Qual disciplina mais contribuiu?**
"Engenharia de Software, sem dúvida, porque ela me deu o vocabulário e a estrutura para entender o que estava acontecendo no time: o que é requisito, o que é backlog, por que iterar. Sem isso eu teria aprendido a ferramenta, mas não o processo. Em segundo lugar, Programação Orientada a Objetos, porque a ideia de responsabilidade única se traduz quase literalmente na componentização do React."

**26. Você aponta lacunas no curso. Que sugestão concreta você daria?**
"Duas coisas práticas. Uma disciplina ou um módulo optativo com um framework moderno de front-end, porque o mercado de desenvolvimento web hoje passa por aí e o contato nas obrigatórias é superficial. E incorporar fluxo de trabalho com Git em equipe, com pull request e revisão de código, dentro dos trabalhos em grupo que já existem, porque isso não custa uma disciplina nova e já resolveria boa parte da defasagem."

### G. Sobre o texto do relatório

**27. Por que o nome da empresa cliente não aparece?**
"Por confidencialidade. O projeto é um sistema interno de uma empresa privada, com dados de pesquisa dos clientes dela, e o trabalho descreve o cliente pelo perfil, que é empresa de pesquisa agrícola de Lavras especializada em análises de solos e sementes, sem identificá-lo. Isso não prejudica a compreensão técnica, que é o objeto do relatório."

**28. As figuras são do sistema em produção ou são protótipos?**
▶ *Repare que as capturas do relatório trazem "LOGO", "Lorem ipsum" e "Nome Sobrenome". A banca pode notar. Tenha a resposta pronta.*
"São as telas com dados fictícios e a marca do cliente omitida, exatamente pela questão de confidencialidade. A estrutura, os componentes e o comportamento são os do sistema, mas o conteúdo real dos protocolos e a identidade do cliente não podem ser divulgados."

**29. Você descreve a listagem de protocolos e a aba de Informações, mas não mostra figura das duas. Por quê?**
"As capturas que eu tinha disponíveis para incluir no relatório não cobriam essas duas telas. Preferi não colocar uma imagem que não correspondesse exatamente ao que o texto descreve. No caso da aba de Informações, o padrão visual é o mesmo da tela de Informações do módulo de orçamentos, que está na Figura 4.5, e por isso eu remeto o leitor para ela."

**30. Este é um relatório técnico, não uma pesquisa. Qual é a contribuição dele?**
"A contribuição é documental e reflexiva, que é o que a modalidade pede. Ela está em três coisas: registrar decisões de projeto com a justificativa técnica de cada uma, explicitar os trade-offs enfrentados, como a escolha das bibliotecas e a estratégia de paralelização entre as equipes, e produzir uma reflexão crítica sobre a relação entre a formação acadêmica e a prática profissional, incluindo as lacunas que eu percebi no curso."

---

## 7. Armadilhas a evitar

- **Não reivindique o back-end.** Se falar "eu fiz o sistema", corrija na hora: "a camada de front-end do sistema".
- **Não invente número.** Se não souber quantas Sprints, quantos usuários ou quanto tempo economizou, diga que não tem o dado. Chutar e ser pego é muito pior.
- **Não seja defensivo sobre a adoção baixa.** Você já a reconhece no texto. Reconhecer de novo, com calma, é sinal de maturidade.
- **Não diga "é só isso" ou "é bem simples" sobre o seu próprio trabalho.** Você resolveu problemas reais.
- **Se não souber uma resposta**, diga: "Não sei com certeza. O que eu posso dizer é [o que você sabe de fato], mas não tenho como afirmar além disso." Isso vale mais que uma resposta inventada.
- **Anote as perguntas** enquanto a banca fala. Se forem três de uma vez, responda na ordem e confirme: "respondi as três?".

---

## 8. Checklist do dia

- [ ] Abrir `apresentacao/index.html` no navegador e testar em tela cheia (F11) no projetor da sala
- [ ] Conferir que as imagens em `apresentacao/imgs/` estão junto do arquivo
- [ ] Levar o deck também em PDF, como plano B, caso o navegador falhe
- [ ] Preencher os **[preencher]** deste documento
- [ ] Ensaiar duas vezes com cronômetro
- [ ] Levar água
