module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f1,f2: (one File) {
((f2 in (f1.link)) && (one (f2.link)))
})
}