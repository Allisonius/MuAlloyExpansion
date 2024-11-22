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
(all x: (one Person),y: (one Person),z,u: (one Project) {
((((x->y) in enrolled) && (x in Student) && ((x->z) in projects) && ((x->u) in projects)) => (z = u))
})
}





