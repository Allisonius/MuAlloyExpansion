module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all t: (File + Protected) {
((no (t.link)) && (no (t.(~link))))
})
}





