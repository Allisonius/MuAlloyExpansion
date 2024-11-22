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
(all disj p1,p2: (one Professor),c1,c2: (one Course) {
((((teaches.c1) in (p1 + p2)) && (p1 in (teaches.c2))) => (p2 !in (enrolled.c2)))
})
}





