module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
((some (Node.adj)) || (no (Node.(~adj))))
}