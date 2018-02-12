tileWhatIf <- function(extrapolate) {
    require(WhatIf)
    print("Running whatif")
    wi <- whatif(formula=extrapolate$formula, data=extrapolate$data, cfact=extrapolate$cfact, mc.cores=1)
    print("Whatif finished; returning to tile")
    extrapolate$control <- !wi$in.hull
    extrapolate
}
