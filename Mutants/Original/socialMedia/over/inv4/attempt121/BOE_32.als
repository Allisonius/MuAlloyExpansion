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
(all p1,p2: (one Photo) {
((((p1 in (u.posts)) && (p1 in Ad)) => (((u.posts) in p2) && (p2 in Ad))) || (p1 !in (u.posts)))
})
})
}





