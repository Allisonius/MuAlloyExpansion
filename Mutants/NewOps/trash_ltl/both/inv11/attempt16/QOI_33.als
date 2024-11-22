module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv11[] {
(some var123456 : File { (after (((var123456 - Protected) + Trash) in Protected))})
}





