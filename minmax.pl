%*************************************
% FILE NAME: minmax.pl
% PURPOSE: Program-2 for CS-524 Programming Languages-01.
% AUTHOR: Vani Krishna Raghu Vamsha Kokkula (vk0018).
% DATE: APRIL 24 2017
/* BRIEF DESCRIPTION:This program is to write a program that finds the minimum and maximum of a list of numbers, and returns the min and max in a list.*/
% This Program is entirely my own work.
% *************************************



min([H|T], L):- min(T,H,L).
        min([], L, L).

min([H|T], Y, L):-
   H>= Y, min(T, Y, L).

min([H|T], Y, L):-
   H < Y, min(T, H, L).

max([H|T], S):- max(T,H,S).
   max([], S, S).

max([H|T], Y, S):-
   H>= Y, max(T, H, S).

max([H|T], Y, S):-
   H < Y, max(T, Y, S).


minmax([H|T],(Min, Max)):-
   min([H|T], Min),
   max([H|T], Max).




