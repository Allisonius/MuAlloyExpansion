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
(all c: (one Course),s: (Person & Professor),g1,g2: (one Grade) {
(((g1 in (s.(c.grades))) && (g2 in (s.(c.grades)))) => (g1 = g2))
})
}





