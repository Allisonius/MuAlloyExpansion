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
((((Professor)) in (teaches.(((Professor)).teaches))) => (all c2: (one Course) {
((((Professor)) in (teaches.c2)) => (((Professor)) !in (enrolled.c2)))
}))
}





