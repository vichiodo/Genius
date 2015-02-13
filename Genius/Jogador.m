//
//  Jogador.m
//  Genius
//
//  Created by Rafael  Hieda on 13/02/15.
//  Copyright (c) 2015 Rafael Hieda. All rights reserved.
//

#import "Jogador.h"

@implementation Jogador

@synthesize login, pontuacao, contador;

-(instancetype) init
{
    self = [super init];
    return self;
}

-(instancetype) initWithLogin:(NSString *)meuLogin
{
    self = [super init];
    
    if(self)
    {
        login = meuLogin;
        contador = 0;
        pontuacao = 0;
    }
    
    return self;
}

-(void) incremento
{
    if(contador < 0)
        return ;
    else
        contador = contador++;
}

-(void)maiorPontuacao:(int)novaPontuacao
{
    if(novaPontuacao > pontuacao)
        pontuacao = novaPontuacao;
    else
        return;
}


@end
