programa
{
    inclua biblioteca Objetos --> objetos

    funcao inicio()
    {
        // O vetor guarda os endereços dos objetos da biblioteca Objetos.
        inteiro contatos[1000]
        inteiro quantidade = 0
        inteiro contato
        inteiro posicao
        cadeia comando
        cadeia nome
        cadeia telefone

        enquanto (verdadeiro)
        {
            escreva("\nDigite um comando (ADICIONAR, BUSCAR, REMOVER, LISTAR, SAIR): ")
            leia(comando)

            se (comando == "ADICIONAR")
            {
                se (quantidade < 1000)
                {
                    escreva("Nome: ")
                    leia(nome)
                    escreva("Telefone: ")
                    leia(telefone)

                    contato = objetos.criar_objeto()
                    objetos.atribuir_propriedade(contato, "nome", nome)
                    objetos.atribuir_propriedade(contato, "telefone", telefone)
                    contatos[quantidade] = contato
                    quantidade++
                    escreva("Contato adicionado!\n")
                }
                senao
                {
                    escreva("Capacidade de 1000 contatos atingida.\n")
                }
            }
            senao se (comando == "BUSCAR" ou comando == "REMOVER")
            {
                escreva("Nome: ")
                leia(nome)
                posicao = -1

                para (inteiro i = 0; i < quantidade; i++)
                {
                    se (objetos.obter_propriedade_tipo_cadeia(contatos[i], "nome") == nome)
                    {
                        posicao = i
                        pare
                    }
                }

                se (posicao == -1)
                {
                    escreva("Contato não encontrado\n")
                }
                senao se (comando == "BUSCAR")
                {
                    telefone = objetos.obter_propriedade_tipo_cadeia(contatos[posicao], "telefone")
                    escreva("Telefone: ", telefone, "\n")
                }
                senao
                {
                    objetos.liberar_objeto(contatos[posicao])
                    para (inteiro i = posicao; i < quantidade - 1; i++)
                    {
                        contatos[i] = contatos[i + 1]
                    }
                    quantidade--
                    escreva("Contato removido!\n")
                }
            }
            senao se (comando == "LISTAR")
            {
                se (quantidade == 0)
                {
                    escreva("Nenhum contato cadastrado.\n")
                }
                senao
                {
                    para (inteiro i = 0; i < quantidade; i++)
                    {
                        nome = objetos.obter_propriedade_tipo_cadeia(contatos[i], "nome")
                        telefone = objetos.obter_propriedade_tipo_cadeia(contatos[i], "telefone")
                        escreva("Nome: ", nome, " | Telefone: ", telefone, "\n")
                    }
                }
            }
            senao se (comando == "SAIR")
            {
                escreva("Agenda encerrada. Total de contatos: ", quantidade, "\n")
                objetos.liberar()
                pare
            }
            senao
            {
                escreva("Comando inválido.\n")
            }
        }
    }
}
