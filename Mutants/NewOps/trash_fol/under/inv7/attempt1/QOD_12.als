module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(((((Trash))->((Trash))) in link) => (((Trash)) !in Trash))
}





