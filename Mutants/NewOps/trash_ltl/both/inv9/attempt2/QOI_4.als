module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv9[] {
(all var123456 : Trash { (always (Protected !in (var123456')))})
}





