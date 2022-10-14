open Ocamlib.Unit

let test_equal () =
  Alcotest.(check bool) "same bool" true (equal () ())

let test_compare () =
  Alcotest.(check int) "same int" 0 (compare () ())

let test_to_string () =
  Alcotest.(check string) "same string" "()" (to_string ())
