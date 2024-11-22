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
(all p: (one Photo),u: (one Influencer) {
((p in (u.sees)) => (some z: (one User) {
((z in (u.follows)) && (p in (z.posts)))
}))
})
}





