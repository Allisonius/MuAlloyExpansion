module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (one Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv3[] {
(all s1,s2: (one Source) {
((s1 = s2) => (((s2.profile).ids) !in ((s1.profile).ids)))
})
}