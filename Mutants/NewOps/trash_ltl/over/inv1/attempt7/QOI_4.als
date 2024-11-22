module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv1[] {
(no var123456 : Protected { (before ((no Trash) && (no var123456)))})
}





