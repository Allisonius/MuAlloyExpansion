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
(all u1: (User - Influencer) {
(all ph: (one Photo) {
((ph in (u1.sees)) => (some u2: (one User) {
((ph in (u2.posts)) && (u2 in (u1.follows)))
}))
})
})
}





