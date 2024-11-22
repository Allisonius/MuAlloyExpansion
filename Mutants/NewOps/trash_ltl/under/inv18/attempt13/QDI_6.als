module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv18[] {
(all p: (File - Trash) {
((always (p !in Protected)) => (before (p in Trash)))
})
}





