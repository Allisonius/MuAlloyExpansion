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
((((((Photo)) != Ad) && (((Photo)) in (((User)).sees))) => ((((Photo)) in (((User)).posts)) && (((User)) in (((User)).follows)))) && (all ad: (one Ad),u1,u2: (one User) {
((ad in (u1.sees)) => ((ad in (u2.posts)) && (u2 in (u1.follows))))
}))
}





