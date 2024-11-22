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
(all p,p1: (one Project) {
(((p in (((Student)).projects)) && (p in (((Student)).projects)) && (p1 in (((Student)).projects)) && (p1 in (((Student)).projects)) && (p != p1) && (((Student)) != ((Student)))) => (p = p1))
})
}





