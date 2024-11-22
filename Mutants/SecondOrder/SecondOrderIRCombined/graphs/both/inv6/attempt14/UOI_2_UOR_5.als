module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(historically ((one (Node.adj)) && (some (Node.(~adj)))))
}