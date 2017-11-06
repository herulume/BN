ORG 100h
MENU:; MENU
 
    MOV AH, 00h
    MOV AL, 03H
    INT 10h
                        ;APRESENTAR O MENU
                        
    MOV AH, 9 
    LEA DX, W1
    INT 21h 
    MOV AH, 9 
    LEA DX, W2
    INT 21h
    MOV AH, 9 
    LEA DX, W3
    INT 21h
    MOV AH, 9 
    LEA DX, W4
    INT 21h
    MOV AH, 9 
    LEA DX, W5
    INT 21h
    MOV AH, 9 
    LEA DX, W6
    INT 21h
    
    
    MOV AH, 9
    LEA DX, LINHA
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL;= Mudar De Linha
    INT 21H
   
    MOV AH, 9
    LEA DX, TEXTO1;= Seja bem vindo
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
                        ; Apresentacao das opcoes    
    MOV AH, 9
    LEA DX, JOGAR
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, INSTRUCOES
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, SAIR
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
                        ;ESCOLHER A OPCÇO    
    MOV AH, 1
    INT 21H
                        ;COINCIDIR NUMERO INTRODUZIDO COM A OPCÇO    
    CMP AL, '1'    
    JL MENU
    JE COM
   
    CMP AL, '2'    
    JE IST
   
    CMP AL, '3'    
    JE FIM
    JG MENU
 
IST:            ;= FUNCAO CASO A OPCAO DO MENU SEJA "2" = INSTRUCOES
                        ;; LIMPAR O ECRA
 
    MOV AH, 00h
    MOV AL, 03H
    INT 10h
       
                        ;; ESCREVER AS INSTRUCOES      
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, IST1
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, IST2
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, IST3
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, IST4
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, CPC;= Clique Para Continuar
    INT 21H
   
    MOV AH, 1
    INT 21H
   
    JMP INST2
 
INST2:            ;APRESENTACAO DA 2A PARTE DAS INSTRUCOES
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, IST5
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, IST6
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, IST7
    INT 21H    
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    JMP MENU2
   
MENU2:; UM NOVO MENU PARA JOGAR OU SAIR    
   
    MOV AH, 9
    LEA DX, OQDF;=O Que Deseja Fazer?
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
                            ;Apresentacao das opcoes    
    MOV AH, 9
    LEA DX, JOGAR
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, SAIRI
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
                            ;introducao da opcao    
    MOV AH, 1
    INT 21H
                            ;coincidir numero introduzido com a opcao    
    CMP AL, '1'    
    JL MENU2
    JE COM
   
    CMP AL, '2'
    JE FIM
    JG MENU2
 
COM:
;LIMPAR O ECRA PARA INTRODUZIR NOME/IDADE
    MOV AH, 00h
    MOV AL, 03H
    INT 10h
                        ;TEXTO PARA INFORMAR O UTILIZADOR    
    MOV AH, 9           ; PARA PODER INTRODUZIR O NOME
    LEA DX, NOME
    INT 21H
   
    MOV CX, 30
    MOV DI, 0
 
NOME1:                  ; INTRODUCAO DOS CARACTERES DO NOME
    MOV AH, 1
    INT 21H
   
   
    CMP AL, 13          ; COMPARACAO DO CARACTER A TECLA ENTER PARA
    JE NOMET             ; PASSAR A PROXIMA FASE(IDADE)
   
    CMP AL, 65
    JL NOMI            
   
    CMP AL, 91
    JL NOME2
    JE NOMI
   
    CMP AL, 97
    JL NOMI
   
    CMP AL, 123
    JL NOME2
    JE NOMI
    JG NOMI  
 
NOME2:
   
    MOV NOMEI[DI], AL
    INC DI
   
    LOOP NOME1
   
NOMET:
   
    MOV NOMEI[DI], 36
    JMP IDAD    
   
NOMI:
 
    MOV AH, 00H
    MOV AL, 03H
    INT 10H
   
    MOV AH, 9
    LEA DX, NOMEI2
    INT 21H
   
    MOV AH, 9
    LEA DX, CPC
    INT 21H
   
    MOV AH, 1
    INT 21H
   
    JMP COM    
 
IDADI:
                            ;; LIMPAR O ECRA PARA DIZER QUE A IDADE
    MOV AH, 00H             ;; INTRODUZIDA E INVALIDA
    MOV AL, 03H
    INT 10H
   
    MOV AH, 9
    LEA DX, IDADEI2
    INT 21H
   
IDAD:
 
 
    MOV CX, 2
    MOV DI, 0
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, IDADE
    INT 21H 
    
MOV CX, 4
IDADC:
                  ;; INTRODUCAO DA IDADE
    MOV AH, 1
    INT 21H
   
    CMP AL, 13          ;; COMPARACAO COM A TECLA ENTER PARA VERIFICAR SE TERMINOU
    JE INICIO           ;; DE INTRODUZIR A IDADE E SALTAR PARA O INICIO
   
    CMP AL, 48          ;; COMPARACAO COM TECLAS DIFERENTES DE NUMEROS
    JL IDADI            ;; PORQUE A IDADE SO PODE TER NUMEROS
   
    CMP AL, 57          ;; SE FALHAR, SALTA A IDADI, FUNCAO INDICADA PARA
    JG IDADI            ;; QUANDO A IDADE INTRODUZIDA FOR INVALIDA
   
    MOV IDADEI[DI], AL  ;; O NUMERO INTRODUZIDO PASSA PARA A IDADE
    INC DI              
   
    LOOP IDADC
 
INICIO: 

    XOR SI, SI
    MOV CX, 25  
    RESET:
    MOV DISPLAY[SI], '~'
    INC SI     
    LOOP RESET
                        ;LIMPAR O ECRA PARA INICIAR O JOGO
    MOV AH, 00h
    MOV AL, 03H
    INT 10h
   
    XOR SI, SI
   
    JMP BARCOS
     
;calcula os barcos a partir do relogio do pc 
BARCOS:
                        ;vai buscar o tempo
    XOR DX, DX
    MOV AH, 2CH
    INT 21H
                        ;operacoes para obter a posicao
    XOR DH, DH
    MOV AX, DX
    MOV DL, 4
    DIV DL
                        ;mover para a posicao
    XOR AH, AH    
    MOV BX, AX    
    MOV TABULEIRO[BX], '1'
   
    INC SI
    CMP SI, 5
    JL BARCOS
       
LIMPA:  
     
    MOV AH, 00h
    MOV AL, 03H
    INT 10h 
    
    MOV AH, 9 
    LEA DX, COLUNASS  ;colunas
    INT 21H 
    
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    XOR DI, DI
    XOR SI, SI 
           
MOV BL, '1' ;base para as linhas                                             
MOSTRA:
    
    MOV AH, 2
    MOV DL, BL
    INT 21H     ;output do numero linha
                                 
    MOV CX, 5
       
MOSTRA2: 

    MOV AH, 2
    MOV DL, DISPLAY[SI]
    INT 21H
    INC SI
    LOOP MOSTRA2     ;output da linha de ~
   
    
    MOV AH, 9
    LEA DX, MDL
    INT 21H
    
    INC BL     ;aumenta o numero de linha
    INC DI
    CMP DI, 5
    JL MOSTRA
   
    CMP [CONTADOR], '0'
    JE TERMJOGO
   
    JMP JOGADA
       
JOGADA:  
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
    
    MOV AH, 9
    LEA DX, AJUDA
    INT 21H
    
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, TENTATIVAS  ;texto das tentativas
    INT 21H
   
    MOV AH, 2
    MOV DL, [CONTADOR]  ;numero de tentativas
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, JOGADAF
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
;;;;;;;;;;;;;;;;;;;;;;;;;;; LER O "X"    
    MOV AH, 9
    LEA DX, X
    INT 21H
   
    XOR AX, AX
   
    MOV AH, 1
    INT 21H
   
    CMP AL, 'A'
    JL JOGADAI
   
    CMP AL, 'E'
    JG JOGADAI
    
    XOR SI, SI
    MOV CX, 5
VERNUMERO: 
    CMP AL, LETRAS[SI]
    JE X1
    INC SI
    LOOP VERNUMERO
X1: 
    XOR AX, AX
    MOV AX, SI
    MOV [PosX], AL     
;;;;;;;;;;;;;;;;;;;;;;;;; LER O "Y"
   
    MOV AH, 9
    LEA DX, Y
    INT 21H
   
    XOR AX, AX
    MOV AH, 1
    INT 21H
   
    CMP AL, '1'
    JL JOGADAI
   
    CMP AL, '5'
    JG JOGADAI    
   
    SUB AL, 30H
    MOV [PosY], AL
;;;;;;;;;;;;;;;;;;;;;; calcula a posicao no array
    SUB [PosY], 1
   
    MOV AL, 5
    MUL [PosY]
    MOV [PosY], AL
   
    XOR AX, AX
    MOV AL, [PosY]
    ADD AL, [PosX]
    MOV BX, AX 
;;;;;;;;;;;;;;;;;;;;;; verifica se a jogada ja foi feita antes
    XOR SI, SI
    MOV CX, 7
JOGADAA: 
    CMP BL, JF[SI]
    JE JOGADAI
    INC SI
    LOOP JOGADAA
    
    MOV SI, [AUX]
    MOV JF[SI], BL
    
    INC [AUX]                
    DEC [CONTADOR]
   
    CMP TABULEIRO[BX], '1'
    JE ACERTOU
   
    CMP TABULEIRO[BX], '0'
    JE FALHOU
   
       
 
JOGADAI:
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, INVALIDA    ;mostrar jogada invalida 
    INT 21H
   
    MOV CX, 7
    JMP JOGADA
 
ACERTOU:
   
    MOV DISPLAY[BX], 'X'   ;muda o display para X
   
    INC [ACERTADO] ;aumento o numero de barcos acertados
    CMP [ACERTADO], '5'      ;compara com a condicao de vitoria
    JE GANHAR
   
    JMP LIMPA  ;volta ao jogo
   
 
FALHOU:
   
    MOV DISPLAY[BX], '0'   ;muda o display para 0
 
    JMP LIMPA ;volta ao jogo
 
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
TERMJOGO:
 
    MOV AH, 9
    LEA DX, GO1
    INT 21H
   
    MOV AH, 9
    LEA DX, ACERTADO  ;mostra o numero de barcos acertados
    INT 21H
   
    MOV AH, 9
    LEA DX, GO2
    INT 21H
   
    JMP MENU3
   
MENU3:  
;;;;;;;;;;;;;;;;;;;;;;;;reset as vars auxiliares 
    MOV [CONTADOR], '8'
    MOV [ACERTADO}], '0'
    MOV [AUX], 0
    XOR SI, SI
    MOV CX, 7
RJOGADAA: 
    MOV JF[SI], 50
    INC SI
    LOOP RJOGADAA
    
                       ;; MENU (DESEJA TENTAR DE NOVO?)
    MOV AH, 9
    LEA DX, DTN
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, DTN1
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, DTN2
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL    
                        ;; INTRODUZIR A OPCAO
 
    MOV AH, 1
    INT 21H
                        ;; COINCIDIR NUMERO INTRODUZIDO COM A OPCAO    
    CMP AL, '1'
    JL MENU3
    JE INICIO
   
    CMP AL, '2'
 
    JE MENU
    JG MENU3
       
GANHAR:
                            ;;LIMPAR ECRA PARA APRESENTAR O ECRA DE VENCEDOR    
    MOV AH, 00H
    MOV AL, 03H
    INT 10H
                            ;;TEXTO A PREMIAR O VENCEDOR    
    MOV AH, 9
    LEA DX, WTG
    INT 21H
   
    MOV AH, 9
    LEA DX, NOMEI
    INT 21H
   
    MOV AH, 9
    LEA DX, WTG2
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, WTG3
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    MOV AH, 9
    LEA DX, MDL
    INT 21H
   
    JMP MENU3               ;; SALTAR PARA O MENU PARA TENTAR DE NOVO OU NAO
 
FIM:
                            ;; texto de saida
    MOV AH, 9
    LEA DX, SAIRD
    INT 21H
                            ;; codigo de saida    
    MOV AH, 4CH
    INT 21H 
    
;TEXTO  VARS 
LETRAS DB 'A', 'B', 'C', 'D', 'E'
JF DB 50, 50, 50, 50, 50, 50, 50
W1 DB 15 dup (32),'  ____                  __      __            _',13,10,'$'       
W2 DB 15 dup (32),' |  _ \                 \ \    / /           | |',13,10,'$'      
W3 DB 15 dup (32),' | |_) | ___ _ __ ___    \ \  / / _ _ __   __| | ___    ',13,10,'$'   
W4 DB 15 dup (32),' |  _ < / _ \ '_ ` _ \    \ \/ / | | '_ \ / _` |/ _ \ ',13,10,'$'
W5 DB 15 dup (32),' | |_) |  __/ | | | | |    \  /  | | | | | (_| | (_) |',13,10,'$'
W6 DB 15 dup (32),' |____/ \___|_| |_| |_|     \/   |_|_| |_|\__,_|\___/ ',13,10,'$'  
LINHA DB '--------------------------------------------------------------------------------','$'
MDL DB 10,13,'$'
TEXTO1 DB '----------------------------------  Batalha naval!  ----------------------------','$'
JOGAR DB '1 - Jogar','$'
INSTRUCOES DB '2 - Sobre','$'
SAIR DB '3 - Sair', '$'
SAIRI DB '2 - Sair', '$'
SAIRD DB 10,13,'---------------------  Obrigado por ter jogado, bem haja!  ---------------------','$'
NOME DB 10,13,'Introduza o seu nome (Pressione a tecla "enter" para continuar):','$'
NOMEI DB '                              ','$'
NOMEI2 DB '-------------------------------  Nome inv',160,'lido!  -------------------------------','$'
IDADE DB 'Introduza a sua idade (Pressione a tecla "enter" para continuar):','$'
IDADEI DB '  ','$'
IDADEI2 DB '-------------------------------  Idade invalida!  ------------------------------','$'
IST1 DB '------------------  As instruc',228,'es do jogo s',198,'o as seguintes:  ------------------','$'
IST2 DB 'Batalha naval ',130,' um jogo de tabuleiro de dois jogadores,',10,13,'no qual os jogadores tem de adivinhar em que quadrados est',198,'o',10,13,'os navios do advers',160,'rio.','$'
IST3 DB 'O objectivo ',130,' derrubar os barcos do advers',160,'rio.',10,13,'Ganha quem derrubar todos os navios advers',160,'rios primeiro.','$'
IST4 DB 'O jogo original ',130,' jogado em duas grelhas para cada jogador.',10,13,'Uma que representa a disposi',135,198,'o dos barcos do jogador',10,13,'e outra que representa a do advers',160,'rio. As grelhas s',198,'o tipicamente quadradas,',10,13,'estando identificadas na horizontal por n',163,'meros e na vertical por letras.',10,13,'Em cada grelha o jogador colocaos seus navios e regista os tiros do advers',160,'rio.','$'
CPC DB '(Clique em qualquer tecla para continuar)','$'
IST5 DB 'Antes do in',161,'cio do jogo, cada jogador coloca os seus navios nos quadros,',10,13,'alinhados horizontalmente ou verticalmente.',10,13,'O n',163,'mero de navios permitidos ',130,' igual para ambos os jogadores',10,13,'e os navios n',198,'o se podem sobrepor.','$'
IST6 DB 'Ap',162,'s os navios terem sido posicionados o jogo continua numa s',130,'rie de turnos.',10,13,'Em cada turno, um jogador diz um quadrado na grelha do advers',160,'rio.',10,13,'Se houver um navio nesse quadrado, ',130,' colocada uma marca vermelha.',10,13,'Se n',198,'o houver ',130,' colocada uma marca branca.','$'
IST7 DB 'Os tipos de navios s',198,'o: porta-avi',228,'es (5 quadrados adjacentes em fila),',10,13,'barcos de dois, tr',136,'s e quatro canos.',10,13,'Numa das varia',135,'',198,'es deste jogo, as grelhas s',198,'o de dimensao 10x10,',10,13,'e o n',163,'mero de navios s',198,'o: 1, 4, 3, 2, 1, respetivamente.','$'
OQDF DB 'O que deseja fazer agora?','$'
BC1 DB 'Indique as coordenadas do seu barco (Por exemplo: 14, 23):','$'
JA1 DB 'Indique as coordenadas onde acha que est',198,'o os navios do advers',160,'rio(Por exemplo: 14, 23):','$'
CA1 DB ' ','$'
GO1 DB 'Conseguiu acertar em ','$'
GO2 DB ' navio(s)...','$'
DTN DB 'Deseja tentar de novo?','$'
DTN1 DB '1 - Sim!','$'
DTN2 DB '2 - N',198,'o!','$'
WTG  DB ' Parab',130,'ns ','$'
WTG2 DB ', conseguiu acertar em todos os barcos do advers',160,'rio.$'
WTG3 DB 'Ganhou o jogo!! ','$'
COLUNASS DB '\ABCDE', '$'
TABULEIRO DB 25 DUP('0') ;gera o tabuleiro
DISPLAY DB 25 DUP('~')   ;gera o tabuleiro de display
PosX DB 0  
PosY DB 0
CONTADOR DB '8','$'
ACERTADO DB '0','$'
JOGADAF DB 'Altura de jogar', '$'  
X DB 'Coluna [A-E]: ', '$'
Y DB 13, 10, 'Linha [1-5]: ', '$'    
INVALIDA DB 'Jogada invalida!', '$'
TENTATIVAS DB 'Tentativas restantes: ', '$'
AJUDA DB 'X = Acertou | 0 = Falhou', '$'
AUX DW 0
