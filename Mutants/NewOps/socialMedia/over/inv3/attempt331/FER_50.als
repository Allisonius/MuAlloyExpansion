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
((all x: (one User) {
(all p: (one Photo) {
(((x->p) in sees) => (p in ((x.follows).follows)))
})
}) && (all a: (one Ad) {
(all x: (one User) {
((x->a) in sees)
})
}))
}





