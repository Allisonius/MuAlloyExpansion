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
pred inv6[] {
(all s1: (one Student) {
(all p1: (one Project) {
(all c1: (one Course) {
(((s1->p1) != projects) => (((c1->p1) in projects) && ((s1->c1) in enrolled)))
})
})
})
}





