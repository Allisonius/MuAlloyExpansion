module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(some f: (one File) {
((always (eventually (f in Trash))) => (always (once (eventually (f !in Trash)))))
})
}





