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
(all p1: (one Project) {
(((((Student)) != ((Student))) && (p1 in (((Student)).projects)) && (p1 in (((Student)).projects))) => (all p2: (one Project) {
(((p1 != p2) && (p2 !in (((Student)).projects))) => (p2 !in (((Student)).projects)))
}))
})
}





