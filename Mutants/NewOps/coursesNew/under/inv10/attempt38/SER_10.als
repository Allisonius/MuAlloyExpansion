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
pred inv10[] {
(all x: (one Professor),g: (one Grade),c: (one Course) {
((((x->c) in enrolled) && ((c->(x->g)) in grades)) => (x in Student))
})
}





