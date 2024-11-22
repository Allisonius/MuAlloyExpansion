module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv13[] {
(all f: (File & Protected) {
((f !in Trash) until (f in Trash))
})
}





