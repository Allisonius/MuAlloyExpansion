module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv10[] {
(all p: (one Protected) {
(eventually ((p in Protected) => (always (p in Protected))))
})
}





