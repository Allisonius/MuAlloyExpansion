module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
((((((File))->((File))) in link) && ((((File))->((File))) in link) && (((File)) in Trash)) => (((File)) in Trash))
}





