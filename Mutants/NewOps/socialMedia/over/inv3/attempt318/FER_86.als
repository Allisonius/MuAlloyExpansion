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
((all u,i: (one User),p: (one (Photo - Ad)) {
((p in (u.sees)) => ((p in (i.posts)) && (i in (u.follows))))
}) && (all a: (one Ad) {
(a in (User.posts))
}))
}





