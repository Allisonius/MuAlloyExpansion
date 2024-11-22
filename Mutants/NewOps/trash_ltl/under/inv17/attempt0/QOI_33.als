module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv17[] {
(some var123456 : Trash { (always (no (var123456 & (var123456'))))})
}





