use admin

db.createUser(
  {
    user: "devadmin",
    pwd: "devadmin",
    roles: [ { role: "root", db: "admin" } ]
  }
)