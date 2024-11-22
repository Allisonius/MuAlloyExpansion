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
(all s1,s2: (one Signal),t: (one Track) {
((s1 = s2) => (((t->s1) in signals) && ((t->s2) in signals)))
})
}





