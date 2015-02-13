//
//  Jogador.h
//  Genius
//
//  Created by Rafael  Hieda on 13/02/15.
//  Copyright (c) 2015 Rafael Hieda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Jogador : NSObject
{
    NSString *login;
    int pontuacao;
    int contador;
}

@property NSString *login;

@property int pontuacao;
@property int contador;

-(instancetype) init;
-(instancetype) initWithLogin:(NSString *) login;
-(void)incremento;
-(void) maiorPontuacao:(int) novaPontuacao;

@end
