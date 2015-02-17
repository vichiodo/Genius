//
//  Jogo.m
//  Genius
//
//  Created by Grupinho lindo on 13/02/15.
//  Copyright (c) 2015 Grupinho lindo. All rights reserved.
//

#import "Jogo.h"



@implementation Jogo

@synthesize filaJogo , filaPlayer, jogador;

-(instancetype) init
{
    self = [super init];
    if(self)
        filaJogo =[[Fila alloc]init];
    return self;
}

-(void)clearScreen{
    NSLog(@"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
}

-(NSUInteger)gerarCor
{
   NSUInteger r = arc4random_uniform(4)+1;
    return r;
}

-(void)run
{
    //aloquei o jogador para testar na verdade, mas sintam-se a vontade de adaptar o metodo.
//    Jogador *player = [[Jogador alloc] initWithLogin:(NSString *) @"Rafael" ];
     int pontuacao = 0;
    
    // instancia a fila que o jogador irá preencher e  servira de
    // parametro a fila criada pela maquina
    filaPlayer = [[Fila alloc] init];
    do
    {
        //inicia a fila desenfileirando tudo, porque ela tem que ser
        //preenchida a cada rodada
        [filaPlayer desenfileirarTudo];
        
        //enfileira a na fila da maquina o numero ja criado
        [filaJogo enfileirar: [NSNumber numberWithUnsignedLong:[self gerarCor]]];
        
        //imprime a fila convertida no metodo convertido
        [filaJogo imprimirOverride];
        
        //metodo que cria um countdown e prepara jogador antes da proxima jogada dele
        [self prepareRound];
        
        //contador da quantidade de elementos a serem preenchidos pelo jogador
        int count = (int) [[filaJogo elementos]count];
        
        for(int i = 0; i < count; i++)
        {
            //enfileira cada escolha do jogador pelo metodo choice
            [filaPlayer enfileirar: [NSNumber numberWithUnsignedLong: [ self choice]]];
        }
        //contador local de jogadas
        pontuacao++;
        
    } while([self check:filaPlayer] == true);
    
    //corrige a pontuacao por conta do laço de repetição
    pontuacao --;
    [jogador maiorPontuacao:pontuacao];

//dados do jogador
//    NSLog (@"Quantidade de acertos: %d", pontuacao);
//    NSLog(@"Maior pontuacao do jogador %@ é : %d", [player login] , [player maiorPontuacao: pontuacao]);
//    NSLog(@"Quantidade de partidas jogadas: %d ", [player incremento]);
//    NSLog(@"Game over!!!!");
//
    [filaJogo desenfileirarTudo];
    [self terminarJogo:pontuacao];
}

-(bool) check:(Fila *) playerFila
{
    if([[filaJogo elementos]isEqualToArray: [playerFila elementos]])
        return true;
    else
        return false;
}

-(void) prepareRound
{
    for(int i = 3; i > 0; i--)
    {
        printf("----------  %d  --------------- \n", i);
        [NSThread sleepForTimeInterval:1.5f];
        
    }
    [self clearScreen];
}

-(NSInteger) choice
{
    NSInteger choice;
    printf("\n Sua escolha: ");
    scanf("%lu", &choice);
    return choice;
}

-(void)menu
{
    int opcao;
    
    NSLog(@"Digite a opção desejada: \n1 - JOGAR \n2 - CADASTRAR OUTRO JOGADOR \n3 - SAIR");
    scanf(" %d",&opcao);
    switch (opcao) {
        case 1:
            [self clearScreen];
            [self run];
            exit(0);
            break;
        case 2:
            [self clearScreen];
            [self paginaInicial];
            exit(0);
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

-(void)paginaInicial
{
    char player[40];
    
    NSLog(@"Escreva seu nome :\n");
    scanf("%s", player);
    
    //Transformando de char para string
    NSString *nome = [NSString stringWithFormat:@"%s", player];
    
    //Inicializando um jogador e setando o nome que nao esta dando certo
    jogador = [[Jogador alloc ]initWithLogin: nome];
    
    //Colocando jogador na fila
    [filaPlayer enfileirar: jogador];
    [self menu];
}



-(void)terminarJogo:(int)minhaPontuacao
{
    char opcao[2];
    NSLog(@"%@ você perdeu!!! \n"
    "Sua pontuação: %d \n"
    "Você jogou %d vez(es). \n"
    "Sua maior pontuação: %d \n"
    "Deseja jogar novamente? \n"
    "Y/N \n",
    [jogador login], minhaPontuacao, [jogador incremento], [jogador maiorPontuacao:(int)minhaPontuacao]);
    scanf(" %s", opcao);
    NSString* opcao1 = [NSString stringWithCString:opcao encoding:NSUTF8StringEncoding];
    if([opcao1 boolValue]){
        [self clearScreen];
        [self run];
    }
    else{
        [self clearScreen];
        [self menu];
    }

}



@end
