module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(lone link: (one (File.link)) {
((all l: (one link) {
(l in Trash)
}) => (link in Trash))
})
}