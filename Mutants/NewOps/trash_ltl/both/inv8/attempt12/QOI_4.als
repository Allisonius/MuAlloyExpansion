module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(all var123456 : Trash { (always (eventually (some ((link.File) & var123456))))})
}





