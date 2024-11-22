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
((inv1[]) && (inv2[]) && (all x: (one Influencer) {
((x.sees) in (((x.follows).posts) - Ad))
}))
}
pred inv2[] {
(all x: (one User) {
(x !in (x.follows))
})
}
pred inv1[] {
(all x: (one Photo) {
(one (posts.x))
})
}





