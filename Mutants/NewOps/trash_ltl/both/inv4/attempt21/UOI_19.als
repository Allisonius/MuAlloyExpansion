module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv4[] {
(some f: (one File) {
(before ((once (f !in Protected)) => ((eventually (always (f in Trash))) && (eventually (always ((f.link) in Trash))))))
})
}





