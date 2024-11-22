module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all var123456 : File { (link in (var123456 lone->lone var123456))})
}





