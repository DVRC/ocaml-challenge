let in_range x a b = x >= a && x < b;;

in_range 3.14 0.0 9.0;;
in_range '0' 'a' 'z';;
in_range 't' 'a' 'z';;
in_range 42 0 99;;
in_range (-3) 0 99;; (* Quirk: negative numbers always want parentheses *)
