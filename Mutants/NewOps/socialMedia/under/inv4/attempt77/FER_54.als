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
pred inv4[] {
(all u: (one User) {
((one a: (one Ad) {
((u->a) in posts)
}) => (all p1: (one Photo) {
(((u->p1) in sees) => (p1 in Ad))
}))
})
}





