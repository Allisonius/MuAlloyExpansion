module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((inv1[]) && (all n: (one Node) {
((Node in (n.(^adj))) || (lone Node))
}))
}
pred inv1[] {

}