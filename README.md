# Tópicos Avançados em Gerenciamento de Dados e Informações

Projeto do semestre da cadeira de Tópicos Avançados em Gerenciamento de Dados e Informações.

Este projeto tem por finalidade analisar as notas do Enem 2021 dos vestibulandos oriundos do estado de Pernambuco. Para efeitos adequação, foi utilizada uma amostra de 5% da base de dados para fazer as análises estatísticas e aplicação dos testes de hipóteses.

A primeira parte do projeto visa fazer toda a parte de pré-processamento, tratamento, limpeza e organização dos dados afim de facilitar o processo de análise exploratória de dados. Nessa etapa de Data Processing, nós importamos as bibliotecas que utilizamos:
- Pandas: para a manipulação dos dados;
- Numpy: para o processamento de grandes, multi-dimensionais arranjos e matrizes, juntamente com uma grande coleção de funções matemáticas de alto nível para operar sobre estas matrizes;
- Matplotlib: para a criação de gráficos;
- KNN (fancyimpute): para a imputação dos dados com valores ausentes. Foi utilizado o KNN, utilizando o $k = 3$, ou seja, calculou-se a média dos 3 vizinhos mais próximos e imputou no valor ausente.

Logo após o carregamento das bibliotecas, fizemos a importação da base de dados. Essa, por sua vez, pode ser encontrada no site no Inep de forma gratuita e respeitando os termos da LGPD (Lei Geral de Proteção de Dados Pessoais). Nessa importação foi utilizado o método do .csv para poder ler e abrir a base de dados sem maiores problemas. Depois dessa parte de importação foi feita a visualização dos dados para entender as informações que são relevantes.
