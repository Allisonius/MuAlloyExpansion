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
source: (some Source)
}
pred inv2[] {
(all u: (one User) {
((((u.profile).source) in Institution) || (((u.profile).source) in u))
})
}