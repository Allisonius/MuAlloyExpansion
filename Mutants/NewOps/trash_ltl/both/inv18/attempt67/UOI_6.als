module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv18[] {
(before (all p: (one Protected) {
((always (p in (File - Protected))) <=> (after (p in Trash)))
}))
}





