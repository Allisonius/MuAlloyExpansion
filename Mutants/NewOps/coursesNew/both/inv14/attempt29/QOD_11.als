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
pred inv14[] {
(some c1,c2: (one Project) {
(((c1 in (((Person)).projects)) && (c1 in (((Person)).projects))) => ((c2 in (((Person)).projects)) => (c2 !in (((Person)).projects))))
})
}





