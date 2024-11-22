module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(after ((some Node) || (Node = (Node.(^adj)))))
}