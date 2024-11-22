module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv11[] {
(one a: (one File) {
((a !in Protected) => (after (a in Protected)))
})
}





