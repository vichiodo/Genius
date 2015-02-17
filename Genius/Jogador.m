//
//  Jogador.m
//  Genius
//
//  Created by Grupinho lindo on 13/02/15.
//  Copyright (c) 2015 Grupinho lindo. All rights reserved.
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

-(int) incremento
{
        return ++contador;
}

-(int)maiorPontuacao:(int)novaPontuacao
{
    if(novaPontuacao > pontuacao)
        pontuacao = novaPontuacao;
    
        return pontuacao;
}


@end
