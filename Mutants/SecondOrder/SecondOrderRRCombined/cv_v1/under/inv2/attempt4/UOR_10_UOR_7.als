module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (set Id),
source: (set Source)
}
pred inv2[] {
((User.profile) in ((source.Institution) + (source.User)))
}