(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using ColorCollapse
push!(Base.modules_warned_for, Base.PkgId(ColorCollapse))
ColorCollapse.main()
