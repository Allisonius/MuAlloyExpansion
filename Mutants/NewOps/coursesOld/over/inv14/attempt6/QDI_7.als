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
pred inv14[] {
(all u1: (Person & Professor),u2: (one Person),proj1: (one Project),proj2: (one Project) {
((((u1->proj1) in projects) && ((u2->proj1) in projects) && ((u1->proj2) in projects) && ((u2->proj2) in projects)) => (proj1 = proj2))
})
}





