module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f1,f2,f3: (one File) {
((eventually ((link in (f1->f2)) && ((f2->f3) in link))) => (f1 = f2))
})
}