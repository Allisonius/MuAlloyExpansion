module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (lone Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv3[] {
(all s1,s2: (one Source) {
(all u: (one User) {
(((s1 = s2) && (((u.profile).source) = s1)) || ((((u.profile).source) = s2) => (lone ((u.profile).ids))))
})
})
}