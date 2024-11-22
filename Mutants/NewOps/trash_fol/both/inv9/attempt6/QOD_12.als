module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(some l2: (one (File.link)) {
((File.link) !in l2)
})
}





