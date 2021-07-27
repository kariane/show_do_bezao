require_relative 'ascii'

def nivel_facil
    a = "Qual a montanha mais alta do mundo?\n "
    b = "Que país tem o formato de uma bota? \n"
    c = "O que é mais pesado: 1 quilo de algodão ou 1 quilo de ferro? \n"
    d = "Quanto tempo a Terra demora para dar uma volta completa em torno dela mesma? \n"
    e = "Quais são as fases da Lua? \n"
    f = "Qual o maior planeta do sistema solar? \n"
    g = "Um anel tem 3 pedras preciosas. Quantas pedras preciosas têm 11 anéis? \n"
    h = "Qual a personagem mais famosa de Maurício de Sousa? \n"
    i = "Qual o nome popular do cloreto de sódio? \n"
    j = "Quem pintou Mona Lisa? \n"


    #Opcao 1
    a1 = "1 - Pico da Neblina \n"
    b1 = "1 - Itália \n"
    c1 = "1 - Ferro \n"
    d1 = "1 - 365 dias \n"
    e1 = "1 - Nova, crescente, cheia e minguante \n"
    f1 = "1 - Saturno \n"
    g1 = "1 - 33 \n"
    h1 = "1- Smurfette \n"
    i1 = "1 - Sal de cozinha"
    j1 = "1 - Leonardo da Vinci \n"


    # Opcao 2
    a2 = "2 - Monte Everest \n"
    b2 = "2 - Mexico \n"
    c2 = "2 - Nenhum \n"
    d2 = "2 - Aproximadamente 24 horas \n"
    e2 = "2 - Nova, cheia e superlua \n"
    f2 = "2 - Júpiter \n"
    g2 = "2 - 333 \n"
    h2 = "2 - Mônica \n"
    i2 = "2 - Fermento\n"
    j2 = "2 - Pablo Picasso \n"


    # Arrays
    perguntas = [a, b, c, d, e, f, g, h, i, j]
    opcao1 = [a1, b1, c1, d1, e1, f1, g1, h1, i1, j1]
    opcao2 = [a2, b2, c2, d2, e2, f2, g2, h2, i2, j2]
    gabarito = [2, 1, 2, 2, 1, 2, 1, 2, 1, 1]

    contador = 0
    vida = 3
    # ************************** Main ******************************
    x = 0
    sair = 0
    print "******* VAMOS COMEÇAR??? *******  \n\n"

    while x < 10 && vida > 0  
        #print "Caso queira sair, digite 0 \n" 
        print "******* #{x+1}ª PERGUNTA *******  \n\n"
        puts perguntas[x]
        puts opcao1[x]
        puts opcao2[x]

        puts "Resposta: "
        resp = gets.chomp.to_i

        if resp == 2 or resp == 1
            if resp == gabarito[x]
                acertou_ascii
                print "******* PARABÉNS! VC ACERTOU!!! ******* \n"
                contador += 1
            else
                errou_ascii
                print "******* EEEEEEROUUUUUU!!!! ******* \n"
                vida = vida - 1
            end
    
            print "Você está com #{contador} ponto(s) \n"
            print "Você ainda possui #{vida} vida(s) \n"
            print "\n"
            print "**************************************** \n"
            
            x += 1    
        
        elsif resp == 0
            sair_ascii
            vida = 0
            sair = 1    
        else
            print "*******  Opção Inválida. Tente novamente ******* \n"
            print "**************************************** \n"
            x = x
        end     
    end
    #end
    
    if vida == 0 && sair == 1
        print "******* VOCÊ SAIU DO JOGO! ATÉ LOGO! ******* \n"
    
    elsif vida == 0     
        perdeu_ascii
                print "*******  VOCE PERDEU. VIDA: #{vida} ******* \n"

    elsif contador >= 7
        ganhou_ascii
        print "*******  PARABÉNS! VOCÊ GANHOU! ******* \n"            
    end
end