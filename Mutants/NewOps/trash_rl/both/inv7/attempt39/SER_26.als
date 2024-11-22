module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
((no (Trash.link)) && (no ((Protected.link) - Trash)))
}





