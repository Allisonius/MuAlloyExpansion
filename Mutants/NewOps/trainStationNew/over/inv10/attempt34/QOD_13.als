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
(((((Track)) in (((Track)).succs)) && (one (Junction & ((Track))))) => (one s: (one Semaphore) {
(s in (((Track)).signals))
}))
}





