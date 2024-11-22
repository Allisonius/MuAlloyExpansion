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
source: (some Source)
}
pred inv3[] {
(all s: (one Source),u: (one User) {
(all disj i1,i2: (one (((u.profile) & (source.s)).ids)) {
(i1 != i2)
})
})
}