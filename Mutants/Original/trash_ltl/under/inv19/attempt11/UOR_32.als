module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv19[] {
(always (all p: (one Protected) {
((historically (p in Protected)) until (p in Trash))
}))
}





