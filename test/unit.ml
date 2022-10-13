open Ocamlib

let test_equal () =
  Alcotest.(check bool) true (equal () ())