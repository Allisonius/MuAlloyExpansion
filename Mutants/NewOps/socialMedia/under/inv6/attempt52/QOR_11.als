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
pred inv6[] {
(all d: (one Day) {
(no u: (one User) {
(all p: (one Photo) {
((u in Influencer) => (some p: (one Photo) {
((p in (u.posts)) && (d in (p.date)))
}))
})
})
})
}





