type t = bool =
  | false
  | true

let not t =
  if t = true then false else true

let (&&) e0 e1 =
  if e0 then e1 else false

let (||) e0 e1 =
  if e0 then true else e1

let equal b0 b1 =
  if b0 = b1 then true else false

let compare b0 b1 =
  (to_int b0) - (to_int b1)

let to_int b =
  if b then 1 else 0

let to_float b =
  if b then 1. else 0.

let to_string b =
  if b then "true" else "false"
