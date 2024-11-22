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
pred inv9[] {
(no x: (one Person),z: (one (Person - x)),y: (one Course) {
((((x->y) in teaches) && ((z->y) in teaches)) => (((z->y) !in enrolled) && ((x->y) !in enrolled)))
})
}





