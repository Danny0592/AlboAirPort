//
//  ViewModel.swift
//  AlboAirPort
//
//  Created by daniel ortiz millan on 14/05/24.
//
//  
import Foundation

class AirportViewModel: ObservableObject {
    
    @Published var model: [Airport]?
    @Published var error: Error?
    
  private  let apiClient = APIClient()
    
    //trae los datos decodificados
    func fetchAirports(Country: String) {
        apiClient.fetchData(Country: Country) { result in
            DispatchQueue.main.async { //hilo principal
                switch result {
                case .success(let airports):
                    self.model = airports
                    print("results \(airports)")
                case .failure(let error):
                    print("Error fetching sear result: \(error)")
                }
            }
        }
    }
}


