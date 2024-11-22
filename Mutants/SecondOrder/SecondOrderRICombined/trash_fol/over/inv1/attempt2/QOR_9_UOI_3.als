module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(once ((no Trash) && (lone f: (one File) {
(f in Trash)
})))
}