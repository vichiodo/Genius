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
            break;
        case 2:
            [self clearScreen];
            [self menu];
            break;
        case 3:
            [self clearScreen];
            [self menu];
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
    NSString *nome = [NSString stringWithFormat:@"%c", player];
    
    //Inicializando um jogador e setando o nome que nao esta dando certo
    j = [[Jogador alloc ]initWithLogin: nome];
    
    //Colocando jogador na fila
    [jogadores enfileirar: j];
}

//Após o jogador escrever o nome.
-(void)comecarJogo{
    for (int i = 0; i<3; i++) {
        [NSThread sleepForTimeInterval:1.5f];
        NSLog(@"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
        NSLog(@"%i", i+1);
    }
}

//Método para lançar a sequencia de cores.
-(void)lancarSequencia{
    
}
@end
