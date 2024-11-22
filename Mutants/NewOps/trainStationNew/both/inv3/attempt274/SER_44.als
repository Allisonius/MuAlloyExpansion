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
pred inv3[] {
(all t: (one Exit) {
(all ts: (one Track),s: (one Signal),ss: (one Junction),sss: (one Speed) {
((t != ts) && ((t->ts) !in succs) && ((t->s) !in signals) && ((t->ss) !in signals) && ((t->sss) !in signals))
})
})
}





