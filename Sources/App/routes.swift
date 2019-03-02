import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {

  let userController = UserController()
  router.get("users", use: userController.list)
  router.post("users", use: userController.create)
  router.post("users", User.parameter, "update", use: userController.update)
  router.post("users", User.parameter, "delete", use: userController.delete)
}
