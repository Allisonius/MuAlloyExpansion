module unknown
open util/integer [] as integer
sig Track {
succs: (set Track),
signals: (set Signal)
}
sig Junction in Track {}
sig Entry in Track {}
sig Exit in Track {}
sig Signal {}
sig Semaphore extends Signal {}
sig Speed extends Signal {}
pred inv10[] {
(some a: (one Track),b: (one (Track - a)) {
(one s: (one Semaphore) {
(((a->s) in signals) => ((b in Junction) && ((a->b) in succs)))
})
})
}





