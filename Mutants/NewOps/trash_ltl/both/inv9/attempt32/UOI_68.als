module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv9[] {
(all f: (one File) {
((eventually (after (f in Protected))) => (always (once (f !in Trash))))
})
}





