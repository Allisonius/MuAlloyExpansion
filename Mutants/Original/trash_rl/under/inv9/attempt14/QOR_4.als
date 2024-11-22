module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(one d: (one File) {
((d !in (d.link)) || (d !in (d.(*link))))
})
}





