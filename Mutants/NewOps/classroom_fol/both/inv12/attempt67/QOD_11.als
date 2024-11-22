module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv12[] {
(some g: (one Group),c: (one Class) {
(((((Teacher))->c) in Teaches) => ((c->(((Teacher))->g)) in Groups))
})
}





