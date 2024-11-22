module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv16[] {
(all f: (one File) {
((historically (f in Protected)) => (after (always (f in Protected))))
})
}





