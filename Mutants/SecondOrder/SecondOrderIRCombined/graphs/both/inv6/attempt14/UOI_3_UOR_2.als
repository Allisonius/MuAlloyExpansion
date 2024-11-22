module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(once ((some (Node.adj)) && (some (Node.(~adj)))))
}