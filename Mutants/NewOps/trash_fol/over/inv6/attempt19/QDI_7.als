module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f1,f2: (File & Trash) {
((f1 != f2) => ((no ((f1.link) & (f2.link))) && (lone link)))
})
}





