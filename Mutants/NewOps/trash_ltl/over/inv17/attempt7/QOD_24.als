module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv17[] {
(always ((eventually (((File)) in Trash)) => (after (((File)) !in File))))
}





