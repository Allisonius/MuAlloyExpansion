module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(all Trash: (one File) {
(before ((File in Trash) && (File !in Protected)))
})
}