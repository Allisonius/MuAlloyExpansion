module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv4[] {
(one f: (one File) {
((eventually (always (f in Trash))) && (eventually (always ((f.link) in Trash))))
})
}





