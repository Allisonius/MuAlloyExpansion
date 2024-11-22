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
((((((Track)).succs) in Junction) && ((((Track)).succs) !in Exit)) => (Semaphore in (((Track)).signals)))
}





