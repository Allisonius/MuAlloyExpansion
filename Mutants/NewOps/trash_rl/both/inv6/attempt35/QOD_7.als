module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(((((univ)) in File) && ((((univ))->((univ))) in link) && ((((univ))->((univ))) in link)) => (((univ)) = ((univ))))
}





