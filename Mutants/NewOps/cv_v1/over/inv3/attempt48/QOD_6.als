module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv3[] {
(all w2: (one Work) {
(all u: (one User) {
(((((Work)) in (u.profile)) && (w2 in (u.profile)) && ((((Work)).source) = (w2.source))) => (((((Work)).ids) & (w2.ids)) = none))
})
})
}





