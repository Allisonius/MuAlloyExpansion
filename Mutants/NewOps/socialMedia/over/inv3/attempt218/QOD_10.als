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
((((User)) in (sees.((Photo)))) => (some y: (one User) {
((y in (((User)).follows)) && (y in (posts.((Photo)))))
}))
}





