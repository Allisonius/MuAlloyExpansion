module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv18[] {
(always (all f: (one File) {
((once (f !in Protected)) releases (historically (f in Trash)))
}))
}





