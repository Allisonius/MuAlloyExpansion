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
((all user: (one User),p: (one Photo) {
((p in (user.sees)) => (p in ((user.follows).posts)))
}) && (all ad: (one Day) {
(ad in (User.sees))
}))
}





