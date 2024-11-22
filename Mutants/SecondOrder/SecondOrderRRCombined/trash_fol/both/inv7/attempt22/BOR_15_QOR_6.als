module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f1,f2: (one File) {
((f1 in (f2.link)) => (f2 = Trash))
})
}