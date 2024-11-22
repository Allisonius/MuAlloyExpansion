module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(always ((no (Node.adj)) || (some (Node.(~adj)))))
}