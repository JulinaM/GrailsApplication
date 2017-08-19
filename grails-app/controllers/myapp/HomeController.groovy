package myapp

class HomeController {

    def index() {
        respond([name: session.name ?: 'Julina', vehicleTotal: Vehicle.count()])
    }

    def updateName(String name) {
        session.name = name

        flash.message = "Name has been updated"

        redirect action: 'index'
    }
}
