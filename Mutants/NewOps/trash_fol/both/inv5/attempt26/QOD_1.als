module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
((((File)) !in Protected) && ((((File)) in Trash) || (((File)) in File)))
}





