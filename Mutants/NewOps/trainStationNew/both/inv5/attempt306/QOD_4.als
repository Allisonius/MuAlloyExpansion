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
pred inv5[] {
((!(some j: (one Junction) {
((j->j) in succs)
})) && (all j: (one Junction) {
((((Track)) != ((Track))) && (((Track)) != j) && (((Track)) != j) && ((((Track))->j) in succs) && ((((Track))->((Track))) in succs))
}))
}





