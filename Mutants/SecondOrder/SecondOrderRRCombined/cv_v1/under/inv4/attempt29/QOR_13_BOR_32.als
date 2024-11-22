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
pred inv4[] {
(no u: (one User),id: (one ((u.profile).ids)),w1,w2: (one Work) {
((((w1->id) + (w2->id)) in (visible.ids)) => (w1 in w2))
})
}