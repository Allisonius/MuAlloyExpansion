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
source: (set Source)
}
pred inv2[] {
(lone x: (one User) {
((((x.profile).source) + ((x.visible).source)) in (Institution + x))
})
}