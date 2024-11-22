module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (lone Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv3[] {
(all s1,s2: (one Source) {
((s1 in s2) => (((s1.profile).ids) !in ((s2.profile).ids)))
})
}