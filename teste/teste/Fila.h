//
//  Fila.h
//  Fila
//
//  Created by Rafael  Hieda on 06/02/15.
//  Copyright (c) 2015 Rafael  Hieda. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Fila : NSObject
{
    NSMutableArray *elementos;
}

@property NSMutableArray *elementos;

-(void) enfileirar:(NSObject *)elem;
-(void) desenfileirar;
-(void) desenfileirarTudo;
-(NSObject *) ler;
-(bool) vazio;
-(void) imprimir;
-(void) busca: (NSObject *)elem;
-(void) imprimirOverride;
@end
