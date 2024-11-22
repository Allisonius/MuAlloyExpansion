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
(((((Professor)) != ((Professor))) && (((Course)) in (((Professor)).teaches)) && (((Course)) in (((Professor)).teaches))) => (all c2: (one Course) {
((c2 in (((Professor)).teaches)) => (c2 !in (((Professor)).enrolled)))
}))
}





