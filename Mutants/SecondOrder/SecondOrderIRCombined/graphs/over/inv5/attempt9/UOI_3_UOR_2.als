module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv5[] {
(Node !in (Node.(*(~adj))))
}