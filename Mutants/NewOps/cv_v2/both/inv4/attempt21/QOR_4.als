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
(one u: (one User) {
(all disj w1,w2: (one (u.visible)) {
((no id: (one (w1.ids)) {
(id in (w2.ids))
}) && (no id: (one (w2.ids)) {
(id in (w1.ids))
}))
})
})
}





