open Ocamlib

let test_not () =
  Alcotest.(check bool) false (not true)
  Alcotest.(check bool) true (not false)

let test_(&&) () =
  Alcotest.(check bool) false ((&&) false false)
  Alcotest.(check bool) false ((&&) false true)
  Alcotest.(check bool) false ((&&) true false)
  Alcotest.(check bool) true ((&&) true true)

let test_(||) () =
  Alcotest.(check bool) false ((||) false false)
  Alcotest.(check bool) true ((||) false true)
  Alcotest.(check bool) true ((||) true false)
  Alcotest.(check bool) true ((||) true true)

let test_equal () =
  Alcotest.(check bool) true (equal false false)
  Alcotest.(check bool) true (equal true true)
  Alcotest.(check bool) false (equal true false)
  Alcotest.(check bool) false (equal false true)

let test_to_int () =
  Alcotest.(check int) 0 (to_int false)
  Alcotest.(check int) 1 (to_int true)

let test_to_float () =
  Alcotest.(check float) 0. (to_float false)
  Alcotest.(check float) 1. (to_float true)

let test_to_string () =
  Alcotest.(check string) "false" (to_string false)
  Alcotest.(check string) "true" (to_string true)

