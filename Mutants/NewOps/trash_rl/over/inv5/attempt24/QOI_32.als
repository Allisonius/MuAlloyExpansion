module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
((no (Protected & Trash)) && (all var123456 : Trash { (((File.link) + File) in var123456)}))
}





