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
(all disj w1,w2: (one (((User)).visible)) {
((all id: (one (w1.ids)) {
(id !in (w2.ids))
}) && (all id: (one (w2.ids)) {
(id !in (w1.ids))
}))
})
}





