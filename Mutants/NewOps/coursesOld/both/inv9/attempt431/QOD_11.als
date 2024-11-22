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
(lone c: (one Course) {
(((c in (((Person)).enrolled)) && (c in (((Person)).enrolled))) => ((((Person)).teaches) !in (((Person)).enrolled)))
})
}





