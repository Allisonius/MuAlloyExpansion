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
(all z,w: (one Course) {
(((z in (((Person)).teaches)) && (z in (((Person)).teaches)) && (((Person)) in Professor) && (w in (((Person)).teaches))) => (w !in (((Person)).enrolled)))
})
}





