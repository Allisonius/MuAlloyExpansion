module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(adj != adj)
}