open OUnit2
open Lap2324P3_simple
open Solver

(*
  A :-
  B :- A
  C :- B, A
  D :- C, E
*)

let program0 = [
  ("A", []);
  ("B", ["A"]);
  ("C", ["B"; "A"]);
  ("D", ["C"; "E"])
]

(*
  A :-
  B :-
  C :- A, B
  D :- C
  E :- D
  F :- X
*)

let program1 = [
  ("A", [] );
  ("B", [] );
  ("C", ["A"; "B"]);
  ("D", ["C"]);
  ("E", ["D"]);
  ("F", ["X"]);
]

let tests_solver = "Test suite for solver" >::: [
  "The solver should deduce A in program0." >::
  (fun _ -> assert_bool "The solver failed to deduce A." (solve program0 "A"));
  "The solver should deduce B in program0." >::
  (fun _ -> assert_bool "The solver failed to deduce B." (solve program0 "B"));
  "The solver should deduce C in program0." >::
  (fun _ -> assert_bool "The solver failed to deduce C." (solve program0 "C"));
  "The solver should not deduce D in program0." >::
  (fun _ -> assert_bool "The solver deduced D." (not (solve program0 "D")));
  "The solver should deduce A in program1." >::
  (fun _ -> assert_bool "The solver failed to deduce A." (solve program1 "A"));
  "The solver should deduce B in program1." >::
  (fun _ -> assert_bool "The solver failed to deduce B." (solve program1 "B"));
  "The solver should deduce C in program1." >::
  (fun _ -> assert_bool "The solver failed to deduce C." (solve program1 "C"));
  "The solver should deduce D in program1." >::
  (fun _ -> assert_bool "The solver failed to deduce D." (solve program1 "D"));
  "The solver should deduce E in program1." >::
  (fun _ -> assert_bool "The solver failed to deduce E." (solve program1 "E"));
  "The solver should not deduce F in program1." >::
  (fun _ -> assert_bool "The solver deduced F." (not (solve program1 "F")));
]

let () = run_test_tt_main tests_solver
