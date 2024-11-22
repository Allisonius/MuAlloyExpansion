module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
((no Trash) && (some f: (set File) {
(f in Trash)
}))
}