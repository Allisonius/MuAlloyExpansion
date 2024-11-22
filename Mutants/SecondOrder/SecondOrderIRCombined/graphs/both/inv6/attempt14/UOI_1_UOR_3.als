module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(before ((some (Node.adj)) && (some (Node.(~adj)))))
}