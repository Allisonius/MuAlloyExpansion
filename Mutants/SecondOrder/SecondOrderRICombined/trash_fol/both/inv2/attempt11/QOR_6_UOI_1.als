module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(one Trash: (one File) {
(before ((File in Trash) && (File !in Protected)))
})
}