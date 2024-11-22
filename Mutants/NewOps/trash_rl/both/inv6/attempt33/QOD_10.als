module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
((((((File))->((univ))) in link) && ((((File))->((univ))) in link)) => (((File)) = ((File))))
}





