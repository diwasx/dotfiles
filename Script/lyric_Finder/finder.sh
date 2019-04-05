#!/bin/sh
#Get artist and songs title running in mpv(mpsyt)

#This print out whole song title like 'Billie Eilish - lovely (with Khalid)'
title=`ps aux | grep "[m]pv --title"| sed 's/.*title \(.*\)--no.*/\1/'`
# [m] for searching regix, because ps display echo process itself
# \1 is a 'Remember pattern' that remembers everything that is within \(.*\) 
# .*xyz --> represent starting of string

#Artist name
#Remove everything after '-' including itself
artish=`echo $title | sed 's/-.*//'`
echo "$artish"

#Song title
#first sed remove artist name (before '-'), send sed remove after '(' ,third sed remove word 'ft' and forth sed remove first white space 
song=`echo $title | sed 's/.*-//; s/(.*//; s/ft.*//; s/ //'`
echo "$song"
