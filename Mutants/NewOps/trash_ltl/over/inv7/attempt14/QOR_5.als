module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv7[] {
(one f: (one File) {
((f in File) && (eventually ((f') in Protected)))
})
}





