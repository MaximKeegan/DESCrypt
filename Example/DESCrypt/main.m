//
//  main.m
//  DESCrypt
//
//  Created by Maxim Keegan on 08.09.15.
//  Copyright (c) 2015 East Media. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DESCrypt.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSString *table = @"abcdefghijklmnopqrstuvwzyx0123456789";

        NSLog(@"Crypted %@", [DESCrypt crypt:@"79902062978" withCode:@"1298" baseTable:table]);
        NSLog(@"Decrypted %@", [DESCrypt decrypt:@"ingafjiconkdmeneokhjoo" withCode:@"1298" baseTable:table]);

        NSLog(@"Crypted %@", [DESCrypt crypt:@"88c5d860-620c-4b5a-a044-7fb882e9b0b9" withCode:@"1298" baseTable:table]);
        NSLog(@"Decrypted %@", [DESCrypt decrypt:@"icdbbemngmcbagbdkkejldidhkejimjppadhnbnmhchpojlobhdkfeeojdjpbncnmkgifefn" withCode:@"1298" baseTable:table]);

        NSLog(@"Crypted %@", [DESCrypt crypt:@"79902062978" withCode:@"3791" baseTable:table]);
        NSLog(@"Decrypted %@", [DESCrypt decrypt:@"fgkdbkfbekfefhihknpohb" withCode:@"3791" baseTable:table]);

        NSLog(@"Crypted %@", [DESCrypt crypt:@"65ad-b6120-cd8ef-56fbc" withCode:@"3791" baseTable:table]);
        NSLog(@"Decrypted %@", [DESCrypt decrypt:@"fhindkhldakgpilhpkioeondabacaplhkpecjjmmfagl" withCode:@"3791" baseTable:table]);

        
//        if (![[DESCrypt cryptWithCode:@"3791" source:@"65ad-b6120-cd8ef-56fbc"] isEqualToString:@"hjmmjocconiiaeohmfhgjcnaloldmfkpboalfgbnfblm"]) {
//            return 0;
//        }
//        NSLog(@"Tests passed!");
    }
    return 0;
}
