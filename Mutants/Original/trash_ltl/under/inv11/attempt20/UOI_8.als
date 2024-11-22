module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv11[] {
(eventually (all a: (one (File - (File & Protected))) {
((a !in Protected) => (after (a in Protected)))
}))
}





