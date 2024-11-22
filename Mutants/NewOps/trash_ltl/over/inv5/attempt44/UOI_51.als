module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv5[] {
(some f: (one Trash) {
((f in File) until (always (before (f !in File))))
})
}





