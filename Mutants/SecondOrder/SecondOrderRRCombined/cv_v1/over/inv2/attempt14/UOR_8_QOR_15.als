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
ids: (lone Id),
source: (one Source)
}
pred inv2[] {
(one u: (one User),s: (one Source) {
(s in (((u.profile) & User) & Institution))
})
}