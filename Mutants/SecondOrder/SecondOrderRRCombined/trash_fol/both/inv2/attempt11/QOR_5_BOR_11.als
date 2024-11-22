module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(lone Trash: (one File) {
((File = Trash) && (File !in Protected))
})
}