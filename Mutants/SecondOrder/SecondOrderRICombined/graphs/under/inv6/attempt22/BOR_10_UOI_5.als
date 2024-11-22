module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(eventually ((one Node) || (Node !in ((Node.(^adj)) + (Node.(^(~adj)))))))
}