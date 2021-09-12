
# Selection Sort - Uma implementação em Haskell

Uma implementação out-place do algoritmo de ordenação Selection Sort em Haskell para a aula de Linguagens de Programação.

Este algoritmo é de execução rápida é seu uso pode ajudar tanto um humano quanto um computador a encontrar itens de uma lista rapidamente, a ordenação por seleção consiste em sempre passar o menor valor encontrado para a primeira posição da lista, assim sucessivamente com os n-1 elementos restante, até os últimos dois.

## Começando

Essas instruções fornecerão uma cópia do projeto em funcionamento em sua máquina local para fins de desenvolvimento e teste.

### Pré-requisitos

- ghc, version 8.10.4
```bash
sudo apt-get install ghc
```

### Instalando

Para instalar o programa basta compilá-lo com ghc.

```bash
ghc -o main main.hs
```

## Executando

Apos compilar o código fonte basta iniciar o executável gerado.
```
vscode ➜ /workspaces/haskell $ ./main 
[-100, 30, 04, -3, 1,30]
Selection sort output: [-100,-3,1,4,30,30]
vscode ➜ /workspaces/haskell $ 
```

A saída é o resultado do Selection Sort.

## Built With

* [haskell Language](#https://www.haskell.org/) - Linguagem utilizada.

## Autor

* ** Wilgnne Khawan Barbosa Alencar **  - [wilgnne](https://github.com/wilgnne)

## Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo [LICENSE.md](LICENSE.md) para obter detalhes

