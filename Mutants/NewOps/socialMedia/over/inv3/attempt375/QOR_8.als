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
((some u: (one User) {
(((u.sees) !in Ad) => ((u.sees) in ((u.follows).posts)))
}) && (all p: (one (Photo - Ad)) {
(all u: (one User) {
((p in (u.sees)) => ((posts.p) in (u.follows)))
})
}))
}





