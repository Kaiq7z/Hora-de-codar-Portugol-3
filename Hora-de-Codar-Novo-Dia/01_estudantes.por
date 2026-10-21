programa
{
    funcao inicio()
    {
        cadeia estudantes[1000]
        cadeia nome
        inteiro quantidade = 0

        enquanto (quantidade < 1000)
        {
            escreva("Digite o nome do estudante ou PARE: ")
            leia(nome)

            se (nome == "PARE")
            {
                pare
            }

            estudantes[quantidade] = nome
            quantidade++
        }

        se (quantidade == 1000)
        {
            escreva("Capacidade de 1000 estudantes atingida.\n")
        }

        escreva("Quantidade de estudantes cadastrados: ", quantidade, "\n")
        para (inteiro i = 0; i < quantidade; i++)
        {
            escreva(estudantes[i], "\n")
        }
    }
}
