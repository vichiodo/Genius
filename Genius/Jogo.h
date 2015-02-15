//
//  Jogo.h
//  Genius
//
//  Created by FRAV GROUP on 13/02/15.
//  Copyright (c) 2015 FRAV GROUP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fila.h"
#import "Jogador.h"


@interface Jogo : NSObject
{
    Fila *jogadores;
    Fila *jogo;
    Jogador *j;
}

//Filas para o jogo
@property Fila *jogadores;
@property Fila *jogo;
//Jogador da rodada
@property Jogador *j;


-(instancetype) init;
-(void)clearScreen;
-(void)menu;
-(void)paginaInicial;
-(void)comecarJogo;
-(void)lancarSequencia;
-(NSInteger)gerarCor;
-(void)run;
-(void)prepareRound;
-(BOOL)check:(Fila *) jogadores;

@end
