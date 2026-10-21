programa
{
    funcao inicio()
    {
        cadeia frutas[5] = {"banana", "maçã", "uva", "laranja", "pera"}
        cadeia nome
        inteiro quantidade = 5
        inteiro posicao

        escreva("Lista de frutas:\n")
        para (inteiro i = 0; i < quantidade; i++)
        {
            escreva(frutas[i], "\n")
        }

        enquanto (quantidade > 0)
        {
            escreva("Digite uma fruta para remover ou PARE: ")
            leia(nome)

            se (nome == "PARE")
            {
                escreva("Frutas restantes:\n")
                para (inteiro i = 0; i < quantidade; i++)
                {
                    escreva(frutas[i], "\n")
                }
                pare
            }

            posicao = -1
            para (inteiro i = 0; i < quantidade; i++)
            {
                se (frutas[i] == nome)
                {
                    posicao = i
                    pare
                }
            }

            se (posicao == -1)
            {
                escreva("Fruta indisponível no nosso mercado\n")
            }
            senao
            {
                para (inteiro i = posicao; i < quantidade - 1; i++)
                {
                    frutas[i] = frutas[i + 1]
                }
                quantidade--
                frutas[quantidade] = ""
                escreva("Fruta foi retirada da lista\n")
            }
        }

        se (quantidade == 0)
        {
            escreva("Lista de compras finalizada\n")
        }
    }
}
