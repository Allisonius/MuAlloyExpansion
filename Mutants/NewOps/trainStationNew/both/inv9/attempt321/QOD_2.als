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
pred inv9[] {
((((((Track)) in (((Track)).succs)) && (no (Junction & ((Track))))) => (Semaphore !in (((Track)).signals))) && (all t1: (one Track) {
((some (Exit & t1)) => (Semaphore !in (t1.signals)))
}))
}





