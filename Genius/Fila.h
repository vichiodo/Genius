//
//  Fila.h
//  Fila
//
//  Created by FRAV GROUP on 06/02/15.
//  Copyright (c) 2015 FRAV GROUP. All rights reserved.
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
-(BOOL) vazio;
-(void) imprimir;
-(void) busca: (NSObject *)elem;
-(void) imprimirOverride;
@end
