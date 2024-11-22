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
pred inv9[] {
(all p1,p2: (one Professor) {
(all c1,c2: (one Course) {
(((p1 != p2) && (c1 != c2) && (c1 in p1) && (c2 in (p2.teaches))) => ((c1 !in (p2.enrolled)) && (c2 !in (p1.enrolled))))
})
})
}





