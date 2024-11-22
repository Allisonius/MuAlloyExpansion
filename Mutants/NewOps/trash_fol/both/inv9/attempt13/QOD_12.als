module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
((some f1: (one (File - ((File)))) {
((((File)).link) !in (f1.link))
}) && (all l1: (one (File.link)) {
(some l2: (one (File.link)) {
(l1 !in l2)
})
}))
}





