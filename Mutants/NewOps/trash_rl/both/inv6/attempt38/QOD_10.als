module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
((((((univ))->((File))) in link) && ((((univ))->((File))) in link)) => ((((univ)) = ((univ))) && (lone (link.((File))))))
}





