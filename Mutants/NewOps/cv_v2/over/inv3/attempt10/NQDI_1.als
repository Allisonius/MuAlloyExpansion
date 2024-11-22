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
(all w: (one (User.profile)) {
(all disj id1,id2: (one Id) {
((id1 in (w.ids)) => (id2 !in (w.ids)))
})
})
}





