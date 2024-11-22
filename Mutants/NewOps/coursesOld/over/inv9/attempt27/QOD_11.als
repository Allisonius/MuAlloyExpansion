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
(all course1,course2: (one Course) {
(((course1 in (((Person)).teaches)) && (course2 in (((Person)).teaches))) => ((course2 !in (((Person)).enrolled)) && (course1 !in (((Person)).enrolled))))
})
}





