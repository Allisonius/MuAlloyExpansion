module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(all Trash: (one File) {
(historically ((File in Trash) && (File !in Protected)))
})
}