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
((all x: (one (Photo - Ad)) {
(one u: (one User) {
((x in (u.sees)) => (some p: (one User) {
((p in (u.follows)) && (x in (p.posts)))
}))
})
}) && (all a: (one Ad) {
(all u: (User & Influencer) {
(a in (u.sees))
})
}))
}





