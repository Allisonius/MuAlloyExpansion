module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(lone file: (one File) {
((some (file.link)) => (file !in Trash))
})
}





