module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(all var123456 : Trash { ((File in (Protected & var123456)) => (after (File !in Protected)))})
}





