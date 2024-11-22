module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all x,y: (one File) {
((isLink[x]) => (x !in Trash))
})
}
pred isLink[f1: File] {
(no f2: (one File) {
(link in (f1->f2))
})
}