module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(eventually ((some (Node.adj)) && (one (Node.(~adj)))))
}