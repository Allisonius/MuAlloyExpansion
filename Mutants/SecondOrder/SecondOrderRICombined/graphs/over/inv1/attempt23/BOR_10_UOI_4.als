module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(always ((((~adj).adj) in iden) && (iden !in (adj.(~adj)))))
}