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
(all pers: (one Person),p1: (one Professor),c: (one Course) {
(((c in (p1.teaches)) && (pers in (teaches.c))) => (pers !in Professor))
})
}





