module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv17[] {
(some f: (one File) {
(eventually ((before (f in Trash)) => (always (f !in File))))
})
}





