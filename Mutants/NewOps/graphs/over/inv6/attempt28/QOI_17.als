module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some var123456 : Node { (((var123456->var123456) - iden) in (^(adj & (~adj))))})
}





