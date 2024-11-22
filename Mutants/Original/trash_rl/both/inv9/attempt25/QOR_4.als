module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(one file: (one File) {
((file.(^link)) = (file.(*link)))
})
}





