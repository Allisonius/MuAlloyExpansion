module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv16[] {
(all f: (one File) {
((before (historically (f in Protected))) => (after (f in Protected)))
})
}





