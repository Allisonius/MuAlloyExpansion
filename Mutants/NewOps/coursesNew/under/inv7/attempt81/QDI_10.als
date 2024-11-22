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
(all s: (Person + Student) {
(all c1: (one Course) {
(all z,w: (one Project) {
((((s->z) in projects) && ((s->w) in projects) && ((c1->z) in projects) && ((c1->w) in projects)) => (z = w))
})
})
})
}





