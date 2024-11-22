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
(all u: (one User),v1,v2: (one (u.visible)) {
(((v1.ids) !in (v2.ids)) => ((v1.source) = (v2.source)))
})
}





