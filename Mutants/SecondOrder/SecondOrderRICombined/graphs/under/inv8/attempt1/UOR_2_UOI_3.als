module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(((Node.adj).adj) in (one (Node.adj)))
}