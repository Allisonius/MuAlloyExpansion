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
source: (one Source)
}
pred inv4[] {
(all u: (one User) {
(no ((u.visible).(same[])))
})
}

fun same[] : (Work->Work) {
({ disj w1,w2: (one Work) {
(w1 = (w2.ids))
} })
}