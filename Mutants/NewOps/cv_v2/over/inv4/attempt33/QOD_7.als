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
(always ((no (((((User)).visible).ids) & ((((User)).visible).ids))) && (all v: (one ((Work - (((User)).visible)) - (((User)).visible))) {
((no (((((User)).visible).ids) & (v.ids))) && (no (((((User)).visible).ids) & (v.ids))))
})))
}





