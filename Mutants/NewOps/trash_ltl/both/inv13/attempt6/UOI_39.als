module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv13[] {
(some f: (one File) {
((f in Trash) => (once (after (f !in Trash))))
})
}





