module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((some (Node.adj)) || (no var123456 : Node { (some (var123456.(~adj)))}))
}





