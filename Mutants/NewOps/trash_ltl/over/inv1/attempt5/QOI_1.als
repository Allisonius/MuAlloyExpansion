module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv1[] {
(all var123456 : Trash { (always ((no var123456) && (no Protected)))})
}





