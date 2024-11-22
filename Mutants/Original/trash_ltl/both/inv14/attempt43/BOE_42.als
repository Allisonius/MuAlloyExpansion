module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(all f: (one File) {
(((f in Trash) && (Protected in f)) => ((f in (Trash')) && (f !in (Protected'))))
})
}





