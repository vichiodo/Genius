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
    NSString *nome = [NSString stringWithFormat:@"%s", player];
    
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


//Eu separei gerar uma cor só de lancar a sequencia inteira, pode inverter se achar que é melhor - Andre
//Método para lançar uma só cor.
-(void)gerarCor{
    //Só to colocando o metodo para número randomico por enquanto, falta colocar o que fazer com ele - Andre
    //Gera 0, 1, 2 ou 3
    NSUInteger random = arc4random_uniform(4);
    
    //Switch case incompleto
    switch (random) {
        case 0:
            <#statements#>
            break;
        case 1:
            <#statements#>
            break;
        case 2:
            <#statements#>
            break;
        case 3:
            <#statements#>
            break;
            
        default:
            break;
    }
    
}

//Metodo para lançar a sequencia inteira
-(void)lancarSequencia{
    [self gerarCor];
}

@end
