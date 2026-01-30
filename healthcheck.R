cat("Posit Connect Cloud healthcheck\n")
cat("Time (UTC):", format(Sys.time(), tz = "UTC"), "\n\n")

env_vars <- c(
  "FINANCE_ENV",
  "FINANCE_DB_URL"
)

for (v in env_vars) {
  val <- Sys.getenv(v, unset = "<not set>")
  cat(sprintf("%s = %s\n", v, val))
}

cat("\nHealthcheck OK\n")
