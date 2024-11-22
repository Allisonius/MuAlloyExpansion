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
(all p1,p2: (one Person),p: (one Project) {
(((p in (p1.projects)) && (p = (p2.projects))) => (!(some p3: (one Project) {
((p3 != p) && (p3 in (p1.projects)) && (p3 in (p2.projects)))
})))
})
}





