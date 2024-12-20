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
(lone s: (one Source),u: (one User) {
(lone disj i1,i2: (one (((u.profile) & (source.s)).ids)) {
(i1 != i2)
})
})
}