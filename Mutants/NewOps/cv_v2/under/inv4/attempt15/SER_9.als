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
(always (all u: (one Id) {
(all disj v1,v2: (one (u.profile)) {
((some ((v1.ids) & (v2.ids))) => ((v1 + v2) !in (u.visible)))
})
}))
}





