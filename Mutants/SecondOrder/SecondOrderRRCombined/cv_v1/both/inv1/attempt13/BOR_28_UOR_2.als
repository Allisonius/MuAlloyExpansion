module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (one Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv1[] {
(some w: (one Work) {
(all u: (one User) {
((w = (u.visible)) => (w in (u.profile)))
})
})
}