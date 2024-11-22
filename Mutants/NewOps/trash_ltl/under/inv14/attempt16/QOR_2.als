module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(no f: (one Protected) {
((always (some (f & Trash))) => (no ((Protected') & f)))
})
}





