// swift-tools-version:4.0
import PackageDescription

let package = Package(
  name: "MakeVaporSpices",
  dependencies: [
    //Vapor
    .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
    
    //DB Drivers
    .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0-rc.2"),
    .package(url: "https://github.com/vapor/fluent-postgresql.git", from: "1.0.0-rc.2"),
    .package(url: "https://github.com/vapor/fluent-mysql.git", from: "3.0.0-rc.2.3"),
    
    //VaporSpices
    .package(url: "../VaporSpices", from: "0.0.1")
    ],
  targets: [
    .target(name: "App", dependencies: ["FluentSQLite", "FluentMySQL", "FluentPostgreSQL", "Vapor", "VaporSpices"]),
    .target(name: "Run", dependencies: ["App"]),
    .testTarget(name: "AppTests", dependencies: ["App"])
  ]
)

