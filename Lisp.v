(** * VLisp: a verified Lisp

This is a Coq source file, documented and annotated using
<<coqdoc>>. It aims to document the semantics and syntax of a
formally-verified Lisp, built from McCarthy's Equations of
Software. 

*)

Inductive Truth : Set :=
  | Nil : Truth
  | T : Truth.

(* Extraction "Lisp.ml" *)