module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(historically ((some (Node.adj)) || (some (Node.(~adj)))))
}