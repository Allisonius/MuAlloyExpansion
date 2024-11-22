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
(all x,y: (one Student) {
(all z,w: (one Project) {
(((z in (x.projects)) && (z != (y.projects)) && (w in (x.projects)) && (x != y) && (z != w)) => (w !in (y.projects)))
})
})
}





