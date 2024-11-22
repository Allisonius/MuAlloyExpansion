module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(some Trash: (one File) {
(historically ((File in Trash) && (File !in Protected)))
})
}