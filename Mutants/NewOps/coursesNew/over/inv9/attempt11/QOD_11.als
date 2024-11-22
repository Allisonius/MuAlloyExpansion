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
(all z1,z2: (one Course) {
(((z1 in (((Person)).teaches)) && (z1 in (((Person)).teaches))) => (((z2 in (((Person)).enrolled)) => (z2 !in (((Person)).teaches))) && ((z2 in (((Person)).enrolled)) => (z2 !in (((Person)).teaches)))))
})
}





