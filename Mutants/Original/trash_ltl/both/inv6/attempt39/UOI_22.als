module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv6[] {
(some f: (one File) {
((before (f in Trash)) => (after (f in Trash)))
})
}





