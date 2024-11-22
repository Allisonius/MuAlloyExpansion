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
pred inv7[] {
(all x: (one Student) {
(all z,w: (one Project) {
(((z in (x.projects)) && (w in (x.projects)) && (z in (((Course)).projects)) && (w in (((Course)).projects)) && (z != w)) => (((Course)) != ((Course))))
})
})
}





