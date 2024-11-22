module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(lone t,u: (one File) {
((before ((t in Trash) && (u in Trash))) => ((t->u) !in link))
})
}