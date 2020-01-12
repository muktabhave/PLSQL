{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red53\green53\blue53;}
{\*\expandedcolortbl;;\cssrgb\c27059\c27059\c27059;}
\margl1440\margr1440\vieww25400\viewh16000\viewkind0
\deftab560
\pard\pardeftab560\slleading20\partightenfactor0

\f0\fs24 \cf2 create or replace function Factorial (n number)\
is\
f number;\
\
Begin\
\
F:=1;\
\
For i in 1..n\
\
Loop\
\
f=f*i;\
\
End loop;\
\
End;\
}
