module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(some var123456 : Trash { (always ((some link) => (eventually (some ((link.File) & var123456)))))})
}





