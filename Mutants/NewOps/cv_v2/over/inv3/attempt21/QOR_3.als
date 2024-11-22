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
(lone id1,id2: (one Id) {
(all u: (one User) {
((((id1.ids) in (u.profile)) && ((id2.ids) in (u.profile))) => (id1 != id2))
})
})
}





