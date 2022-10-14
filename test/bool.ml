open Ocamlib.Bool

let test_not () =
  Alcotest.(check bool) "same bool" false (not true);
  Alcotest.(check bool) "same bool" true (not false)

let (&&) () =
  Alcotest.(check bool) "same bool" false ((&&) false false);
  Alcotest.(check bool) "same bool" false ((&&) false true);
  Alcotest.(check bool) "same bool" false ((&&) true false);
  Alcotest.(check bool) "same bool" true ((&&) true true)

let (||) () =
  Alcotest.(check bool) "same bool" false ((||) false false);
  Alcotest.(check bool) "same bool" true ((||) false true);
  Alcotest.(check bool) "same bool" true ((||) true false);
  Alcotest.(check bool) "same bool" true ((||) true true)

let test_equal () =
  Alcotest.(check bool) "same bool" true (equal false false);
  Alcotest.(check bool) "same bool" true (equal true true);
  Alcotest.(check bool) "same bool" false (equal true false);
  Alcotest.(check bool) "same bool" false (equal false true)

let test_to_int () =
  Alcotest.(check int) "same int" 0 (to_int false);
  Alcotest.(check int) "same int" 1 (to_int true)

let test_to_float () =
  Alcotest.(check (float Float.epsilon)) "same float" 0.0 (to_float false);
  Alcotest.(check (float Float.epsilon)) "same float" 1.0 (to_float true)

let test_to_string () =
  Alcotest.(check string) "same string" "false" (to_string false);
  Alcotest.(check string) "same string" "true" (to_string true)

