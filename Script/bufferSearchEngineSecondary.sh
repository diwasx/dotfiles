#!/bin/sh

# keyword=$(xsel -p)  #if you want to search primary clipboard
keyword=$(xsel -b) #if you want to search secondary clipboard
chromium "? $keyword"



