module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(after ((some (Node.adj)) || (some (Node.(~adj)))))
}