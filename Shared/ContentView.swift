//
//  ContentView.swift
//  Shared
//
//  Created by Shane on 15/12/2020.
//

import SwiftUI

struct ContentView: View {
    var propects = Prospects()
    
    var body: some View {
        TabView {
            ProspectsView(filter: .none)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Everyone")
                }
            ProspectsView(filter: .contacted)
                .tabItem {
                    Image(systemName: "checkmark.circle")
                    Text("Contacted")
                }
            ProspectsView(filter: .uncontacted)
                .tabItem {
                    Image(systemName: "questionmark.diamond")
                    Text("Uncontacted")
                }
            MeView()
                .tabItem {
                    Image(systemName: "person.crop.square")
                    Text("Me")
                }
        }
        .environmentObject(propects)
    }
}

//enum NetworkError: Error {
//    case badURL, requestFailed, unknonwn
//}
//
//struct ContentView: View {
//    var body: some View {
//        Text("Hello, world!")
//            .onAppear {
//                self.fetchData(from: "http://www.apple.com") { result in
//                    switch result {
//                    case .success(let str):
//                        print(str)
//                    case .failure(let error):
//                        switch error {
//                        case .badURL:
//                            print("Bad URL")
//                        case .requestFailed:
//                            print("Network problems")
//                        case .unknonwn:
//                            print("Unknown error")
//                        }
//                    }
//                }
//            }
//    }
//
//    func fetchData(from urlString: String, completion: @escaping (Result<String, NetworkError>) -> Void) {
//
//        guard let url = URL(string: urlString) else {
//            completion(.failure(.badURL))
//            return
//        }
//
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            DispatchQueue.main.async {
//                if let data = data {
//                    let stringData = String(decoding: data, as: UTF8.self)
//                    completion(.success(stringData))
//                } else if error != nil {
//                    completion(.failure(.requestFailed))
//                } else {
//                    completion(.failure(.unknonwn))
//                }
//            }
//        }.resume()
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
