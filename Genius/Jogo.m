//
//  Jogo.m
//  Genius
//
//  Created by FRAV GROUP on 13/02/15.
//  Copyright (c) 2015 FRAV GROUP. All rights reserved.
//

#import "Jogo.h"
#import "Fila.h"
#import "Jogador.h"

@implementation Jogo

@synthesize jogadores, jogo, j;

-(instancetype) init{
    self = [super init];
    return self;
}

-(void)clearScreen{
    NSLog(@"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
}



-(void)menu{
    int opcao;
    
    NSLog(@"Digite a opção desejada \n1 - JOGAR \n2 - CADASTRAR OUTRO JOGADOR \n3 - SAIR\n");
    scanf("%d",&opcao);
    switch (opcao) {
        case 1:
            [self clearScreen];
            [self comecarJogo];
            [self lancarSequencia];
            break;
        case 2:
            [self clearScreen];
            [self menu];
            break;
        case 3:
            [self clearScreen];
            exit(0);
            break;
        default:
            NSLog(@"Dado inválido. Digite novamente");
            [self menu];
            break;
    }
}

-(void)paginaInicial{
    char player[40];
    
    NSLog(@"Escreva seu nome :\n");
    scanf("%s",player);
    
    //Transformando de char para string
    NSString *nome = [NSString stringWithFormat:@"%s", player];
    
    //Inicializando um jogador e setando o nome que nao esta dando certo
    j = [[Jogador alloc ]initWithLogin: nome];
    
    //Colocando jogador na fila
    [jogadores enfileirar: j];
}

-(void)run
{
    //aloquei o jogador para testar na verdade, mas sintam-se a vontade de adaptar o metodo.
    Jogador *player = [[Jogador alloc] initWithLogin:(NSString *) @"Rafael" ];
    int pontuacao = 0;
    
    // instancia a fila que o jogador irá preencher e  servira de
    // parametro a fila criada pela maquina
    Fila *jogadores = [[Fila alloc] init];
    do
    {
        //inicia a fila desenfileirando tudo, porque ela tem que ser
        //preenchida a cada rodada
        [jogadores desenfileirarTudo];
        
        //enfileira a na fila da maquina o numero ja criado
        [jogo enfileirar: [NSNumber numberWithUnsignedLong:[self gerarCor]]];
        
        //imprime a fila convertida no metodo convertido
        [jogo imprimirOverride];
        
        //metodo que cria um countdown e prepara jogador antes da proxima jogada dele
        [self prepareRound];
        
        //contador da quantidade de elementos a serem preenchidos pelo jogador
        int count = (int) [[jogo elementos]count];
        
        for(int i = 0; i < count; i++)
        {
            //enfileira cada escolha do jogador pelo metodo choice
            [jogadores enfileirar: [NSNumber numberWithUnsignedLong: [ self choice]]];
        }
        //contador local de jogadas
        pontuacao++;
        
    } while([self check:jogadores] == true);
    
    //corrige a pontuacao por conta do laço de repetição
    pontuacao --;
    //dados do jogador
    NSLog (@"Quantidade de acertos: %d", pontuacao);
    NSLog(@"Maior pontuacao do jogador %@ é : %d", [player login] , [player maiorPontuacao: pontuacao]);
    NSLog(@"Quantidade de partidas jogadas: %d ", [player incremento]);
    NSLog(@"Game over!!!!");
}

//Após o jogador escrever o nome.
-(void)comecarJogo{
    for (int i = 0; i<3; i++) {
        [NSThread sleepForTimeInterval:1.5f];
        NSLog(@"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
        NSLog(@"%i", i+1);
    }
}

-(void)prepareRound
{
    for(int i = 3; i > 0; i--)
    {
        printf("----------  %d  --------------- \n", i);
        [NSThread sleepForTimeInterval:2.0f];
        
    }
    [self clearScreen];
}

-(bool)check:(Fila *) jogadores
{
    if([[jogo elementos]isEqualToArray: [jogadores elementos]])
        return true;
    else
        return false;
}


//Eu separei gerar uma cor só de lancar a sequencia inteira, pode inverter se achar que é melhor - Andre
//Método para lançar uma só cor.
-(NSInteger)gerarCor{
    //Só to colocando o metodo para número randomico por enquanto, falta colocar o que fazer com ele - Andre
    //Gera 1, 2, 3 ou 4
    NSInteger random = arc4random_uniform(4)+1;
    return random;
    
}

//Metodo para lançar a sequencia inteira
-(void)lancarSequencia{
    [self gerarCor];
    //Nao sei o que fazer para apresentar as sequencias por rodada - Vivi
    for (int i = 0; i<100; i++) {
        NSLog(@"");
    }
}

@end
