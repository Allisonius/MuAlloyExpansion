module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all l: (one (File.link)) {
((l in Trash) => (lone li: (one l) {
(li in Trash)
}))
})
}