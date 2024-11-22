module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(historically ((((~adj).adj) in iden) && (iden in (adj.(~adj)))))
}