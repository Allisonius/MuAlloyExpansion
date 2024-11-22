module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(no Trash: (one File) {
(once ((File in Trash) && (File !in Protected)))
})
}