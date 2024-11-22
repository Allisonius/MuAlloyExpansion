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
source: (lone Source)
}
pred inv2[] {
(all w: (one Work) {
((w in (User.profile)) => ((w.source) = User))
})
}