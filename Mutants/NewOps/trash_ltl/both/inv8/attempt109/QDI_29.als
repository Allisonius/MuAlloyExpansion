module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(all f: (one File) {
(some z: (File - Protected) {
(eventually ((f in Trash) && (z in Trash)))
})
})
}





