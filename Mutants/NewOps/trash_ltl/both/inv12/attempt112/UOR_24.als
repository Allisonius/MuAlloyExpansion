module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(all f: (one File) {
((always (some (f & Trash))) since (historically (f in Trash)))
})
}





