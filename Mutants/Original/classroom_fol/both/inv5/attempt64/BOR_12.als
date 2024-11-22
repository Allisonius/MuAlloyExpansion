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
pred inv5[] {
(all t: (one Teacher) {
(some c: (one Class) {
(teaches_class[t,c])
})
})
}
pred teaches_class[t: Teacher,c: Class] {
((t->c) != Teaches)
}





