module spec

using Plots
using DelimitedFiles
#using LaTeXStrings

function plot_crs(path::String)
    f = readdlm(path; skipstart=7);
    label = split(last(split(path,"/")),".")[1]
    E = f[:,1];
    djde = f[:,2];
    err_low = f[:,3];
    err_high= f[:,4];
    y = (E.^2).*djde;
    djde_err = 0.5.*(err_low.+err_high);
    yerr = djde_err.*(E.^2);
    if yerr<y
        Plots.plot!(E,y,yerr=yerr, xaxis=:log, yaxis=:log,lw=0,marker=:circle, ylims=(1e-7,1e+4), xlims=(1e0,1e+12),
            markersize=2, xlabel="Energy[GeV]",ylabel="\\ E^{2} Intensity [GeVm^{-2}s^{-1}sr^{-1}]",
            label=label, legend = :outertopright,#markerstrokealpha=0.5,
        msc=:auto,
        linecolor = :match)
        plot!(size=(1000,700))
    end
end

#plot_crs("./data/allparticle/allparticle_AMS02.txt")
plot_crs("./data/allparticle/allparticle_AUGER_Etot.txt")
#plot_crs("./data/allparticle/allparticle_CREAM.txt")
plot_crs("./data/allparticle/allparticle_HAWC_Etot.txt")
plot_crs("./data/allparticle/allparticle_ICECUBE-ICETOP_SIBYLL-2.1_Etot.txt")
plot_crs("./data/allparticle/allparticle_KASCADEGrande_SIBYLL-2.3_Etot.txt")
plot_crs("./data/allparticle/allparticle_KASCADE_SIBYLL-2.1_Etot.txt")
plot_crs("./data/allparticle/allparticle_NUCLEON_Etot.txt")
plot_crs("./data/allparticle/allparticle_TA_Etot.txt")
plot_crs("./data/allparticle/allparticle_TIBET_QGSJET+HD_Etot.txt")
plot_crs("./data/allparticle/allparticle_TUNKA-133_Etot.txt")