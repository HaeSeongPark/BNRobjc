//
//  main.c
//  41CommandLineAffirmation
//
//  Created by rhino Q on 28/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    
    if (argc != 3) {
        fprintf(stderr, "Usage: Affirmation <adjective> <number>\n");
        return 1;
    }
    
    int count = atoi(argv[2]);
    printf("count : %d\n", count);
    for (int j = 0; j < count; j++) {
        printf("You are %s!\n", argv[1]);
    }
}
