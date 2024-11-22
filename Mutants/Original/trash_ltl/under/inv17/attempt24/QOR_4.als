module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv17[] {
(one f: (one File) {
((always (f in Trash)) => ((always ((f') !in File)) && ((f') !in Trash)))
})
}





