open Ocamlib

let test_equal () =
  Alcotest.(check bool) true (equal () ())

let test_compare () =
  Alcotest.(check int) 0 (compare () ())

let test_to_string () =
  Alcotest.(check string) "()" (to_string ())
