module Bool_to_test = struct
  let not = Bool.not
  let (&&) = Bool.(&&)
  let (||) = Bool.(||)
  let equal = Bool.equal
  let to_int = Bool.to_int
  let to_float = Bool.to_float
  let to_string = Bool.to_string
end

let test_not () =
  Alcotest.(check bool) false (Bool_to_test.not true)
  Alcotest.(check bool) true (Bool_to_test.not false)