module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(no l: (one (File.link)) {
((all l1: (one l) {
(l1 in Trash)
}) => (l in Trash))
})
}