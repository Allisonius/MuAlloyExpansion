module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
((some Trash) && (no f: (one File) {
(f in Trash)
}))
}