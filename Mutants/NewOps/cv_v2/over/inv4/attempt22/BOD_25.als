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
(always (all u: (one User),vis: (one (u.visible)),v: (one ((u.profile) - vis)) {
(no (vis.ids))
}))
}





