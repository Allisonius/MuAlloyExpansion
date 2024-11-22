module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv15[] {
(all var123456 : Trash { ((some File) => (eventually (File in var123456)))})
}





