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
ids: (one Id),
source: (one Source)
}
pred inv2[] {
(all u: (one User),i: (one Institution) {
((((u.profile).source) !in u) || (((u.profile).source) = i))
})
}