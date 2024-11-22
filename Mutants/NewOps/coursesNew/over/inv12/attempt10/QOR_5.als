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
(some x: (one Person),c: (one Course) {
(one g: (one Grade) {
((((x->c) in enrolled) && (x in Student)) => ((c->(x->g)) in grades))
})
})
}





