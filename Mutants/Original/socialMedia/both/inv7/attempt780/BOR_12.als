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
pred inv7[] {
(all user,suggest: (one univ) {
(((user = User) && (suggest in User) && ((user->suggest) in suggested)) => (some followed: (one univ) {
(((followed->suggest) in follows) && ((user->followed) in follows) && (!((user->suggest) in suggested)))
}))
})
}





