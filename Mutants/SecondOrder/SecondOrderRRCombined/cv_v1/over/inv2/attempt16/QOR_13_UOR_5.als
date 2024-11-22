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
pred inv2[] {
(no u: (one User) {
(Work = (((profile.u).source) + ((profile.Institution).source)))
})
}