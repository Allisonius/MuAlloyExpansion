module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv17[] {
(all var123456 : File { (always ((var123456 & Trash) !in ((var123456') & (Trash'))))})
}





