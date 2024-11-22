module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(historically ((no Trash) && (some f: (one File) {
(f in Trash)
})))
}