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
pred inv12[] {
(one c: (one Course),x: (one Student) {
(some g,y: (one Grade) {
((((c->(x->g)) in grades) && ((c->(x->y)) in grades)) => (g = y))
})
})
}





