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
(all c: (one Course) {
(((((Person)) in Professor) && (((Person)) in Professor) && (c in (((Person)).teaches))) => (c !in (((Person)).enrolled)))
})
}





