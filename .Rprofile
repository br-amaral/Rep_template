source("renv/activate.R")

if (interactive() && Sys.getenv("TERM_PROGRAM") == "vscode") {
  # LOCAL: use rstudioapi + VSCode built-in plot viewer
  options(vsc.rstudioapi = TRUE)
  options(vsc.plot = "Beside")

} else if (interactive() && Sys.getenv("TERM_PROGRAM") == "") {
  # HPC (no TERM_PROGRAM set): use httpgd over network
  if (requireNamespace("httpgd", quietly = TRUE)) {
    options(vsc.plot = FALSE)
    hgd <- httpgd::hgd()
    options(device = function(...) httpgd::hgd_browse(hgd))
  }
}
