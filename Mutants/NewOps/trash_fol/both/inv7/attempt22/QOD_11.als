module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
((((File)) in (((File)).link)) => (((File)) !in Trash))
}





