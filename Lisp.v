(** * VLisp: a verified Lisp

This is a Coq source file, documented and annotated using
_coqdoc_. It aims to document the semantics and syntax of a
formally-verified Lisp, built from McCarthy's Equations of
Software. 

The Lisp 1.5 manual distinguishes between two types of
expressions. _S-expressions_ are the symbolic expressions that
comprise Lisp programs; _M-expressions_ are the _source language which
specifies in what way the S-expressions are to be processed_. It is
the job of the interpreter to convert S-expressions into
M-expressions; this program will attempt to codify a representation of
M-expressions.

*)

(* begin hide *)
Require Import Bool.
(*end hide *)

(** ** Symbolic Expressions

Atoms are the basic building blocks of Lisp; the Lisp 1.5 manual notes
the distinction between _atomic symbols_:

<<
Definition: an atomic symbol is a string of no more than thirty
numerals and capital letters; the first character must be a letter.
>>

and _atom_, the predicate:

<<
atom[EXTRALONGSTRINGOFLETTERS]=T
atom[(U . V)]=F
atom[car[(U . V)]]=T
>>

*)

Inductive atomic_symbol : Set :=  .

(** A cell (as represented by an S-expression) contains of a first and second element; it is essentially a tuple (x, y) where x and y may be either an atomic symbol or a cell.*)

Inductive cell : Set := NIL.

(** ** Elementary Functions

_cons_ is used to build S-expressions from atomic symbols and other S-expressions.

<<
cons[A;B]=(A . B)
cons[(A . B);C]=((A . B) . C)
cons[cons[A;B];C]=((A . B) . C)
>>
*)

Definition cons (a b : cell) : cell := NIL. 

(** _car_ and _cdr_ do the opposite of _cons_: they extract elements
from an S-expression.

<<
The function car has one argument. Its value is the first part of
its composite argument. car of an atomic symbol is undefined.
>>
*)

Definition car (a : cell) : cell := NIL.

(**
<<
The function cdr has one argument. Its value is the second part of its
composite argument. cdr is also undefined if its argument is atomic.
>>
*)

Definition cdr (a : cell) : cell := NIL.

(**
<<
Given any S-expression, it is possible to produce any subexpression of it by a suitable composition of car's and cdr's. If _x_ and _y_ represent any two S-expressions, the following identities are true:

	car[cons[x;y]]=x
	cdr[cons[x;y]]=y

The following identity is also true for any S-expression x such that x
is composite (non-atomic):

	cons[car[x];cdr[x]]=x

>>
 *)

Theorem car_x_is_x : forall x y : cell, car (cons x y) = x.
Abort.

Theorem cdr_x_is_y : forall x y : cell, cdr (cons x y) = y.
Abort.

(*NOTE: these are candidates for theorems to be proved.*)

(** Variables are used to give names to S-expressions. *)

(** 
<<
A function whose value is either true or false is called a
predicate. In LISP the values true and false are represented by the
atomic symbols T and F, respectively. A LISP predicate is therefore a
function whose value is either T or F.

The predicate eq is a test for equality on atomic symbols. It is
undefined for non-atomic arguments.
>>
*)

Inductive pred : atomic_symbol -> bool -> Set :=. 
Definition eq  (x y : atomic_symbol) : bool := false.