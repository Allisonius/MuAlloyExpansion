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
((no (Entry & Junction)) && (no ((Entry & Junction) & Exit)) && (no (Exit & Entry)) && (some var123456 : Junction { (no (Exit & var123456))}) && (all x: (one Track) {
((x in Exit) => (no (x.succs)))
}))
}





