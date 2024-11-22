module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all file: (File & Protected) {
((some (file.link)) => (file !in Trash))
})
}





