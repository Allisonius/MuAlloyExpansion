module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all t: (one File) {
((no (t.link)) && (no (link.t)))
})
}





