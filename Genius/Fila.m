//
//  Fila.m
//  Fila
//
//  Created by FRAV GROUP on 06/02/15.
//  Copyright (c) 2015 FRAV GROUP. All rights reserved.
//

#import "Fila.h"

#import "Fila.h"

@implementation Fila
-(id)init {
    self = [super init];
    elementos = [[NSMutableArray alloc]init];
    return self;
}

@synthesize elementos;

-(void) enfileirar:(NSObject *)elem {
    [elementos addObject: elem];
}

-(void) desenfileirar
{
    
    if([self vazio] != true)
        [elementos removeObjectAtIndex:0];
    
}

-(void)desenfileirarTudo
{
    if([self vazio])
        return;
    else
        [elementos removeAllObjects];
}


- (NSObject *) ler
{
    if([self vazio] == false)
        return [elementos firstObject];
    else return nil;
}

- (bool) vazio
{
    if([elementos lastObject ] == nil)
        return true;
    else
        return false;
}

-(void) imprimir
{
    
    Fila *filaAux = [[Fila alloc] init];
    for (int i = 0; [elementos count]; i++)
    {
        NSLog(@"element at index: %d content: %@", i , [self ler]);
        
        [filaAux enfileirar: elementos[0]];
        [elementos removeObjectAtIndex:0];
        
    }
    while(![filaAux vazio])
    {
        [self enfileirar: [filaAux ler]];
        [filaAux desenfileirar];
        
    }
    
}

-(void) imprimirOverride
{
    NSInteger aux;
    Fila *filaAux = [[Fila alloc] init];
    printf("Sequencia: ");
    for (int i = 0; [elementos count]; i++)
    {
        aux =  (NSInteger) [self ler];
        if(aux == 311)
            aux = 1;
        else if(aux == 567)
            aux = 2;
        else if(aux == 823)
            aux = 3;
        else if(aux == 1079)
            aux = 4;
        else
            return;
        printf( "%lu     ", aux);
        
        [filaAux enfileirar: elementos[0]];
        [elementos removeObjectAtIndex:0];
        
    }
    printf("\n");
    while(![filaAux vazio])
    {
        [self enfileirar: [filaAux ler]];
        [filaAux desenfileirar];
        
    }
}

-(void) busca:(NSObject *)elem
{   bool flag = false;
    Fila *filaAux = [[Fila alloc] init];
    for (int i = 0; [elementos count]; i++)
    {
        if([elementos firstObject] == elem)
            flag = true;
        [filaAux enfileirar: elementos[0]];
        [elementos removeObjectAtIndex:0];
        
    }
    while(![filaAux vazio])
    {
        [self enfileirar: [filaAux ler]];
        [filaAux desenfileirar];
    }
    
    if(flag)
        NSLog(@"Elemento presente!");
    else
        NSLog(@"Elemento não encontrado");
    
}



@end
