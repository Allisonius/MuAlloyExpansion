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
(all u: (User - Influencer),p: (one Photo) {
((p in (u.sees)) => (some z: (one User) {
((p in (z.posts)) && (z in (u.follows)))
}))
})
}





