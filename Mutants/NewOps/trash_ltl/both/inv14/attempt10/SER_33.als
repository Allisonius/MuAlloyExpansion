module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
((File in (Trash & Trash)) => (after (File !in Protected)))
}





