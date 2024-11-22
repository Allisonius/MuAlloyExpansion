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
(all x: (Person & Professor),y: (one Course),z,w: (one Project) {
((((x->z) in projects) && ((x->w) in projects) && ((y->z) in projects) && ((y->w) in projects)) => (w = z))
})
}





