module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
((inv1[]) && (all n: (one Node) {
(Node in (n.(^adj)))
}))
}
pred inv1[] {

}