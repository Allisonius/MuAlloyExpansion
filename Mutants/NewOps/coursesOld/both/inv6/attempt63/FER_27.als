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
(all p: (one Person) {
(all p2: (one Project) {
(((p->p2) in enrolled) => ((p.enrolled) in p2))
})
})
}





