programa
{
    funcao inicio()
    {
        cadeia planetas[9] = {"Mercúrio", "Vênus", "Terra", "Marte", "Júpiter", "Saturno", "Urano", "Netuno", "Plutão"}
        cadeia nome
        logico encontrado = falso

        escreva("Lista de planetas:\n")
        para (inteiro i = 0; i < 9; i++)
        {
            escreva(planetas[i], "\n")
        }

        escreva("Digite o nome de um planeta como aparece na lista: ")
        leia(nome)

        para (inteiro i = 0; i < 9; i++)
        {
            se (planetas[i] == nome)
            {
                encontrado = verdadeiro
            }
        }

        se (encontrado)
        {
            escreva("O planeta está na lista.\n")
        }
        senao
        {
            escreva("O planeta não está na lista.\n")
        }
    }
}
