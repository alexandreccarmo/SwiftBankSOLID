import Foundation

protocol VehicleFuelProtocol {
    func calculateFuelEfficiency(km: Double) -> Double
}

class Vehicle {
    
}


class CombustionCar: Vehicle, VehicleFuelProtocol {
    func calculateFuelEfficiency(km: Double) -> Double {
        return km
    }
}

class EletricCar: Vehicle {
    
}

func calcEfficiency(vehicle: Vehicle){
    if let car = vehicle as? CombustionCar{
        print(car.calculateFuelEfficiency(km: 100))
    } else {
        print("Eletric car do not use fuel")
    }
}


calcEfficiency(vehicle: CombustionCar())
calcEfficiency(vehicle: EletricCar())

