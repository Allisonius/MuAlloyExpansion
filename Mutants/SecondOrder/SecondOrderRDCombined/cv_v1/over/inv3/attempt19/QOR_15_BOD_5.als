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
(one s1,s2: (one Source) {
((s1 = s2) => ((s1.ids) != ((s2.profile).ids)))
})
}