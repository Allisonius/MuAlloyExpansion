module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(no Trash: (one File) {
(always ((File in Trash) && (File !in Protected)))
})
}