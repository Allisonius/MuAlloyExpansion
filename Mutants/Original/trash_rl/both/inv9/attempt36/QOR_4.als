module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(one f1,f2: (one univ) {
(((f1->f2) in link) => ((File.link) !in f2))
})
}





