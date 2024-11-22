module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(all Trash: (one File) {
(historically ((File != Trash) && (File !in Protected)))
})
}