module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv2[] {
(all var123456 : File { (eventually (some var123456))})
}





