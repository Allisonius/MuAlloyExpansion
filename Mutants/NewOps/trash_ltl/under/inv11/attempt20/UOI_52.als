module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv11[] {
(all a: (one (File - (File & Protected))) {
((a !in Protected) => (after (historically (a in Protected))))
})
}





