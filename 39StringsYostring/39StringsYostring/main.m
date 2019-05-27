//
//  main.m
//  39StringsYostring
//
//  Created by rhino Q on 27/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//


#import <Foundation/Foundation.h>
#include <stdlib.h>
#include <string.h>

int spaceCount(const char * sentence)
{
    int spaceCount = 0;
    for(int i=0; i<(int)strlen(sentence); i++)
    {
        if(sentence[i] == 0x20)
        {
            spaceCount++;
        }
    }
    return spaceCount;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        char x = 0x21; // The character '!'
//        while ( x <= 0x7e) // the character '~'
//        {
//            printf("%x is %c\n", x, x);
//            x++;
//        }
        
        char x = '!'; // The character '!'
        while ( x <= '~') // the character '~'
        {
            printf("%x is %c\n", x, x);
            x++;
        }
        
//        char *start = malloc(5);
        const char *start = "Love";
//        start[2] = 'z';
//        // Put 'L' in the first byte
//        *start = 'L';
//        // Put 'o' in the second byte
//        *(start + 1) = 'o';
//        // Put 'v' in the third byte
//        *(start + 2) = 'v';
//        // Put 'e' in the fourth byte
//        *(start + 3) = 'e';
//        // Put zero in the fifth byte
//        *(start + 4) = '\0';
        
//        start[0] = 'L';
//        start[1] = 'o';
//        start[2] = 'v';
//        start[3] = 'e';
//        start[4] = '\0';
//
        // Print out the string and its length
        printf("%s has %zu characters\n", start, strlen(start));
        
        // Print out the third letter
        printf("The third letter is %c\n", start[2]); //*(start + 2)
        // Free the memory so that it can be reused
//        free(start);
        start = NULL;
        
        
        const char *sentence = "He was not in the cab at the time.";
        printf("\"%s\" has %d spaces\n", sentence, spaceCount(sentence));
    }
    return 0;
}
