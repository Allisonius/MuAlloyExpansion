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
(lone c2: (one Course) {
(((((Person)) != ((Person))) && (c2 in (((Person)).enrolled)) && (c2 in (((Person)).enrolled))) || (((c2 in (((Person)).teaches)) && (c2 in (((Person)).teaches))) => ((((Course)) in (((Person)).teaches)) && (((Course)) !in (((Person)).enrolled)))))
})
}





