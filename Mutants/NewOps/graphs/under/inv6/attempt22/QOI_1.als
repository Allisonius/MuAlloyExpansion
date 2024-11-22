module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((all var123456 : Node { (one var123456)}) || (Node = ((Node.(^adj)) + (Node.(^(~adj))))))
}





