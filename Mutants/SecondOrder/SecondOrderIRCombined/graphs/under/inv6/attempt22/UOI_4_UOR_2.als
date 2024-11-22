module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(always ((one Node) || (Node = ((Node.(^adj)) + (Node.(^(~adj)))))))
}