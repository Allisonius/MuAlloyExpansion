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
(all u: (one Ad),p: (one (Photo - Ad)) {
((u in (((u.follows).posts).(~sees))) => ((p in ((p.(~posts)).sees)) || (u in (Ad.(~sees)))))
})
}





