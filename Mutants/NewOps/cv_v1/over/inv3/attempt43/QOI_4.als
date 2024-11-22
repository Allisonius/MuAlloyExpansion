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
(some var123456 : Source { (let aux = ({ u,User,w: (one Work),s: (one var123456) {
(((u->w) in profile) && ((w->s) in source))
} }) {
(all s: (one var123456) {
(s in Institution)
})
})})
}





