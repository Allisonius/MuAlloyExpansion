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
(all u1: (one User) {
(no p: (one Photo) {
((((u1->p) in posts) && (p in Ad)) => (p !in Ad))
})
})
}





