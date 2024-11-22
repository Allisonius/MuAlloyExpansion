module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(after ((lone (Node.adj)) && (some (Node.(~adj)))))
}