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
(teaches_class[t,((Class))])
})
}
pred teaches_class[t: Teacher,c: Class] {
((t->c) in Teaches)
}





