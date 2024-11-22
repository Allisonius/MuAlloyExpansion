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
((all p: (one Photo) {
(p in (User.posts))
}) && (all u1,u2: (one User) {
(all p: (one (Photo - Ad)) {
(((p in (u2.posts)) && (p in (u1.sees))) => (u2 in (u1.suggested)))
})
}))
}





