import Foundation

struct CatListViewModel {
  private var cats: [CatModel] = [
    .init(name: "Rex", weight: 8),
    .init(name: "Mr. Whiskers", weight: 12),
    .init(name: "Floof", weight: 7),
  ]

  var names: [String] {
    get {
      return cats.map { $0.name }
    }
  }

  func weight(for name: String) -> Int? {
    let cat = cats.filter { $0.name == name }.first
    return cat?.weight
  }
}
