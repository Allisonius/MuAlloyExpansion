module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(after ((some Node) || (Node = ((Node.(^adj)) + (Node.(^(~adj)))))))
}