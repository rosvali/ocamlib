open Ocamlib

let test_not () =
  Alcotest.(check bool) false (not true)
  Alcotest.(check bool) true (not false)