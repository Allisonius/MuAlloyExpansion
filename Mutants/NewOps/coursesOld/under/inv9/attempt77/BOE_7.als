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
(all t1,t2,c1: (one Course) {
((all c2: (one Course) {
((t1 in (teaches.c2)) => (t2 !in (enrolled.c2)))
}) => ((t1 != t2) && (t1 in (teaches.c1)) && (t2 in (teaches.c1))))
})
}





