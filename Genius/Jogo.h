//
//  Jogo.h
//  Genius
//
//  Created by Grupinho lindo on 13/02/15.
//  Copyright (c) 2015 Grupinho lindo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fila.h"
#import "Jogador.h"

@interface Jogo : NSObject
{
Fila  *filaJogo;
Fila  *filaPlayer;
Jogador *jogador;
}

@property Fila* filaJogo;
@property Fila *filaPlayer;
@property Jogador *jogador;

-(instancetype) init;

-(void)clearScreen;
-(NSUInteger)gerarCor;
-(void)run;
-(bool)check:(Fila *) filaPlayer;
-(void)prepareRound;
-(NSInteger) choice;

//Implementação extra
-(void)menu;
-(void)paginaInicial;
-(void)terminarJogo:(int)minhaPontuacao;

@end
