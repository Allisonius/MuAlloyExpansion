module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv15[] {
(some f: (one Protected) {
(eventually (f in Trash))
})
}





