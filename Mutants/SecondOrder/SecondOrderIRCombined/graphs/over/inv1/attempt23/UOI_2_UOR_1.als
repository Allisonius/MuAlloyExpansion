module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(historically ((((~adj).adj) in iden) && (iden in (adj.(~adj)))))
}