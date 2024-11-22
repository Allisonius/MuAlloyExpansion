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
pred inv5[] {
(all p: (one Person) {
(all pro: (one Project) {
(((p->pro) in projects) => ((p in Student) && (some p1: (one Professor) {
((p1->pro) in projects)
})))
})
})
}





