module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv20[] {
(always (all f: (one File) {
((historically (f !in Protected)) triggered (f in Trash))
}))
}





