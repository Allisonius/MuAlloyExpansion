module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv15[] {
(all var123456 : Trash { (always ((no (File & var123456)) && (eventually (some (File & var123456)))))})
}





