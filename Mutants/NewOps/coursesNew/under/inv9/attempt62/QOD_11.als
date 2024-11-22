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
(((z in (((Professor)).teaches)) && (z in (((Professor)).teaches)) && (w in (((Professor)).teaches)) && (z != w) && (((Professor)) != ((Professor)))) => (w !in (((Professor)).enrolled)))
})
}





