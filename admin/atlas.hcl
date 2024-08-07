# The "dev" environment represents our local testings.
env "local" {
  url = "mysql://root:123456@localhost:3306/admin-go"
  migration {
    dir = "file://migrations"
  }
}