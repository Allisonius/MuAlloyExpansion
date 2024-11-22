module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv4[] {
(all f: (one File) {
((once (f !in Protected)) && (eventually (always (f in Trash))))
})
}





