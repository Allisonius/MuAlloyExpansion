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
pred inv15[] {
(all p: (one Project) {
(all c: (one Course) {
(((((Student)) != ((Student))) && (p in (((Student)).projects)) && (p in (((Student)).projects)) && (p in (c.projects))) => (all g1,g2: (one Grade) {
(((g1 in (((Student)).(c.grades))) && (g2 in (((Student)).(c.grades)))) => (ordering/gte[g1,g2]))
}))
})
})
}





