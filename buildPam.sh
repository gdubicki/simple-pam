#!/bin/bash

gcc -fPIC -fno-stack-protector -c src/mypam.c

sudo ld -x --shared -o /lib/security64/mypam.so mypam.o

rm mypam.o
