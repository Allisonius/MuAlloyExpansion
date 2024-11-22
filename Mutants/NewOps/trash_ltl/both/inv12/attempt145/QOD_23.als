module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(always (((once (((Trash)) !in Trash)) && (((Trash)) in Trash)) releases (((Trash)) !in Trash)))
}





