module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv3[] {
((all x,y: (one User) {
(all a: (one Ad) {
(((x->a) in sees) => (((x->y) in follows) && ((y->a) in posts)))
})
}) && (all x: (one User) {
(all a: (one Ad) {
((x->a) in sees)
})
}) && (all x: (one User) {
(Ad !in ((x.follows).posts))
}) && (all x: (one User) {
((x.sees) in Ad)
}))
}





