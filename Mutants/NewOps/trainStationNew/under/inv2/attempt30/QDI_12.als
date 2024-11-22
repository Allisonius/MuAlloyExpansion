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
pred inv2[] {
(all x,y: (one Track),s: (Signal - Semaphore) {
((((x->s) in signals) && ((y->s) in signals)) => (x = y))
})
}





