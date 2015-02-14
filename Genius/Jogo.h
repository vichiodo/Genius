//
//  Jogo.h
//  Genius
//
//  Created by FRAV GROUP on 13/02/15.
//  Copyright (c) 2015 FRAV GROUP. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Jogo : NSObject


-(instancetype) init;
-(void)clearScreen;
-(void)menu;
-(void)paginaInicial;
-(void)comecarJogo;
-(void)lancarSequencia;

@end
