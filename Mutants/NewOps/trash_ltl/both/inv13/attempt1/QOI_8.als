module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv13[] {
(all var123456 : Trash { ((File in var123456) => (once (File !in var123456)))})
}





