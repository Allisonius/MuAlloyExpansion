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
(one s,s1: (one Signal),t: (one Track) {
((((t->s) in signals) && ((t->s1) in signals)) => (s = s1))
})
}





