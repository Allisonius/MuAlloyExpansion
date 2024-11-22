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
(all u1: (one User),u2: (one Photo) {
(((u1->((u2.posts) - Ad)) in sees) => ((u2->((u1.follows).posts)) in sees))
})
}





