module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv18[] {
(all var123456 : Trash { (always ((Protected & (Protected')) !in (var123456 + (var123456'))))})
}





