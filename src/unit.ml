type t = unit = ()

let equal t t =
    true

let compare t t =
    0

let to_string t =
    "()"

let () = print_endline (to_string ());
print_endline (Int.to_string (compare () ()));
print_endline (Bool.to_string (equal () ()))
