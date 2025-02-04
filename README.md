[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/CizYSU2T)
# LAP 2023-2024 -- Terceiro Trabalho

## Instruções de submissão

O terceiro trabalho está dividio em dois patamares:

1. Para 16 valores, desenvolvimento de um algoritmo de inferência para uma
   linguagem Datalog que suporta apenas regras de produção sem parâmetros.

2. Para 20 valores, desenvolvimento e implementação de um motor de inferência
   para a linguagem Datalog que suporta regras de produção para predicados com
   parâmetros.

Cada um destes patamares corresponde a um sub-projecto dentro deste repositório:

1. Datalog sem parâmetros: pasta `/lap2324P3_simple`

2. Datalog com parâmetros: pasta `/lap2324P3_complete`

Dentro de cada uma destas pastas encontrará um projecto OCaml com a estrutura
habitual, isto é:

* pasta `/bin`

* pasta `/lib`

* pasta `/test`

* ficheiro `dune-project`

* ficheiro `.opam`

Dentro de cada uma das pastas `/lib` encontrará o seguinte ficheiro:
  - `solver.ml`

Cada um dos ficheiro `solver.ml` deverá conter a sua solução, para cada um dos
patamares do terceiro trabalho de LAP. **NOTA IMPORTANTE**: se pretende realizar
o patamar da linguagem Datalog completa, não é necessário realizar previamente o
patamar sem parâmetros. Por outras palavras, não precisa de realizar primeiro o
trabalho para 16 valores para poder realizar a versão para 20 valores.

Realizar um *commit* significa realizar uma nova entrega do trabalho. Assim,
apenas o último *commit* será considerado como a entrega de versão final do seu
trabalho.

### Implementação

Em cada um dos ficheiros `solver.ml` encontrará a declaração da função `solve`. O
corpo desta função apresenta apenas a expressão

```ocaml
  assert false (* COMPLETAR AQUI *)
```

Deverá apagar esta expressão e substituir pela sua resolução. Mais uma vez
alertamos que poderá utilizar *todas* as funções auxiliares que achar
conveniente.

## Testes

Para executar a bateria de testes definida pela equipa docente deverá primeiro
colocar-se na raiz de cada sub-projecto:

```console
  cd lap2324P3_simple
```

ou

```console
  cd lap2324P3_compete
```

Dentro de cada uma destas pastas deverá executar o seguinte comando:

```console
  dune runtest
```

Para o sub-projecto `lap2324P3_simple`, se todos os testes forem bem sucedidos,
deverá obter a seguinte mensagem:

```console
..........
Ran: 10 tests in: XXX seconds.
OK
```

indicando o número de testes executados, assim como o tempo total de execução.

Para o sub-projecto `lap2324P3_complete`, se todos os testes forem bem sucedidos,
deverá obter a seguinte mensagem:

```console
..................
Ran: 18 tests in: 0.10 seconds.
OK
```

indicando o número de testes executados, assim como o tempo total de execução.

## Erros

Se existir pelo menos um teste que não é bem sucedido, então a execução do
comando `dune runtest` irá abortar a sua execução. Os erros que farão este
comando falhar poderão ser tão diversos como:

- erros puros de OCaml (*e.g.*, erros de sintaxe, argumentos de função não
  utilizados, erros de tipificação, etc.);
- erro num teste OUnit, em que alguma das funções não devolve o resultado esperado.


Project PDF:

[lap_handout3 (3).pdf](https://github.com/user-attachments/files/18660047/lap_handout3.3.pdf)

