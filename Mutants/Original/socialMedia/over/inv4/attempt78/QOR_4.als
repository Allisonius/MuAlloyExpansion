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
(one u: (one User) {
(all p1,p2: (one Photo) {
(((p1 != p2) && (p1 in Ad)) => (p2 in Ad))
})
})
}





