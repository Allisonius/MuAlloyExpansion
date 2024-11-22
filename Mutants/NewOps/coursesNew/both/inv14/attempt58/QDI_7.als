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
(all s1: (Person & Professor),s2: (one Student),c1: (one Project),c2: (one Project) {
(((c1 in (s1.projects)) && (c1 in (s2.projects))) => (((c2 in (s1.projects)) && (c2 !in (s2.projects))) || ((c2 !in (s1.projects)) && (c2 in (s2.projects)))))
})
}





