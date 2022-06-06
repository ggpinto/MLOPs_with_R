getFromNamespace("lockfile", "renv")("renv.lock")$data() |>
  purrr::pluck("Packages") |>
  names() |>
  pak::pkg_system_requirements("ubuntu", "20.04") |>
  stringr::str_remove_all("apt-get install -y ") |>
  write("requirements.txt")
