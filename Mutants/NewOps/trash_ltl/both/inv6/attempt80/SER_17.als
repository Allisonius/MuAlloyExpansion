module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv6[] {
(all f: (one Trash) {
(always ((f in (Trash - Protected)) => (always (f in (Trash - Protected)))))
})
}





