module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(no n1,n2,n3: (one Node) {
((once ((some (n1->n2)) && (some (n2->n3)))) => (some (n1->n3)))
})
}