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
(all p,p2: (one Photo) {
(lone u,u2: (one User) {
(((u.posts) !in (u.sees)) && (p in (u.sees)) && ((u.follows) in u2) && (p in (u2.posts)))
})
})
}





