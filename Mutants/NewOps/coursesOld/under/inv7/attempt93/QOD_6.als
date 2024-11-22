module unknown
open util/integer [] as integer
open util/ordering [Grade] as ordering
sig Person {
teaches: (set Course),
enrolled: (set Course),
projects: (set Project)
}
sig Professor in Person {}
sig Student in Person {}
sig Course {
projects: (set Project),
grades: (Person->Grade)
}
sig Project {}
sig Grade {}
pred inv7[] {
(all c: (one Course) {
((((c->((Project))) in projects) && ((c->((Project))) in projects)) => (all s1: (one Student) {
((((s1->((Project))) in projects) && ((s1->((Project))) in projects)) => (((Project)) = ((Project))))
}))
})
}





