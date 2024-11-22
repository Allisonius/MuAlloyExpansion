module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some f1,f2: (one File) {
((f1 !in Trash) && (f2 !in Trash))
})
}