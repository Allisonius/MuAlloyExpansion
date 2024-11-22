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
pred inv13[] {
(((((Student)).(((Course)).grades)) = (ordering/max[((Student - Professor).(((Course)).grades))])) => (some x: (one (((Student)).projects)) {
(x in (((Course)).projects))
}))
}





