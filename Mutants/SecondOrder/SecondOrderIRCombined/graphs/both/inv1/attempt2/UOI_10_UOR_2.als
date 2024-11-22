module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(adj = (adj.(~adj)))
}