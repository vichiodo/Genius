//
//  Fila.h
//  Fila
//
//  Created by Grupinho lindo on 06/02/15.
//  Copyright (c) 2015 Grupinho lindo. All rights reserved.
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
