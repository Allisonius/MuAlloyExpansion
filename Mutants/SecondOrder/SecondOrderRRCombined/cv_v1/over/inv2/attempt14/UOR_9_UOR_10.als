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
source: (set Source)
}
pred inv2[] {
(all u: (one User),s: (one Source) {
(s in (((u.profile) & User) & Institution))
})
}