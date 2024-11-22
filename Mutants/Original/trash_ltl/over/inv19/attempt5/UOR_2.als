module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv19[] {
(before (all f: (one File) {
((f in Protected) until (f in (Trash - Protected)))
}))
}





