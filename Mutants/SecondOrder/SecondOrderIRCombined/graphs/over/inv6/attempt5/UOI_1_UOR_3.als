module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
((~((Node->Node) - iden)) in (^adj))
}