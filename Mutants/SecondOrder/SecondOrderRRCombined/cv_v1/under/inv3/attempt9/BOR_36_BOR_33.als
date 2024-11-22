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
(all u: (one User) {
(all disj w1,w2: (one (u.profile)) {
(((w1.source) = (w2.source)) => (((w1.ids) in (w2.ids)) && ((w2.ids) != (w1.ids))))
})
})
}