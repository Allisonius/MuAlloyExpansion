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
(always (all disj v1,v2: (one (((User)).visible)) {
((some ((v1.ids) + (v2.ids))) => (((v1.ids) + (v2.ids)) !in ((((User)).visible).ids)))
}))
}





