VLisp: A Formally Verified Lisp

This contains experiments in building a formally-verified Lisp using
Coq, mostly to serve as a practical project to drive learning Coq
further. My background is in systems engineering and more low-level
Unix systems programming, particularly in Go and C; as I begin to work
through CPDT, I'd like to use this to help focus my learning. Expect
it to be crude and inelegant at first, but I am very open to comments
to improve it.

### Questions

Some of the questions I want to explore are:

* What does a formally-verified Lisp look like (syntax)?
* How does a formally-verified Lisp behave (semantics)?
* What guarantees can we make about the behaviour of a formally
  verified Lisp?
* Assuming Lisp is considered as a sort of "McCarthy's Equations of
  Software", a la Maxwell's equations, if a Lisp can modelled after
  McCarthy's equations, what theorems can we make about it's behaviour
  and properties?
* What are the practical, useful implications of these theorems?
