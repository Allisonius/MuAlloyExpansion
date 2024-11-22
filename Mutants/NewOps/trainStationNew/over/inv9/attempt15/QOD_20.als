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
((!((((Track))->((Junction))) in succs)) => (!(some s: (one Semaphore) {
((((Track))->s) in signals)
})))
}


fact fact_1 {
(some Junction)
}


